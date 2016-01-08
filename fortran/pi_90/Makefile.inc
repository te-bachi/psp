
all: $(PROGRAMS)

### HELP
# $(foreach var,list,text)      For each newly created variable 'var' in 'list',
#                               do whatever in 'text'
# $(call variable,param,...)    Call a defined subroutine
# $(1), $(2)                    Arguments of defined subroutines
# $(eval var)                   Expand 'var' and parse as makefile syntax
# $(var:pattern=replacement)    Substitutes 'var' with 'replacement'

### MKDIR FOR EVERY PROGRAM
define DIRECTORY_template

obj/$(1):
	@echo "[MKDIR] $$@"
	@mkdir -p obj/$(1)

endef

### VARIABLE
define VARIABLE_template
$(1)_OBJECT = $(addprefix obj/$(1)/,$($(1)_SOURCE:%.$(SRC_FORMAT)=%.o))

$(call DIRECTORY_template,$(1))
$(foreach dir, $(addprefix $(1)/,$(sort $(dir $($(1)_SOURCE)))), $(eval $(call DIRECTORY_template,$(dir))))
endef

### OBJECT
define OBJECT_template
obj/$(1)/$($(3):%.$(SRC_FORMAT)=%.o): obj/$(1)/$(dir $($(3))) $(2)/$($(3))
	@echo "[FC] $(2)/$($(3))"
	@$(FORTRAN) -o $$@ -c $(2)/$($(3)) $($(1)_FFLAGS)
endef

### PROGRAM
define PROGRAM_template
$(foreach source,$($(1)_SOURCE),$(eval $(call OBJECT_template,$(1),src,source)))
$(1): $($(1)_OBJECT)
	@echo "[LD] $$@"
	@$(FORTRAN) -o $$@ $($(1)_OBJECT) $($(1)_LDFLAGS)

$(1)_clean:
	@echo "[CLEAR $(1)]"
	@rm -f $(1) $($(1)_OBJECT)
	@rmdir obj/$(1)
endef

$(foreach prog,$(PROGRAMS),$(eval $(call VARIABLE_template,$(prog))))
$(foreach prog,$(PROGRAMS),$(eval $(call PROGRAM_template,$(prog))))

clean: $(addsuffix _clean,$(PROGRAMS))

