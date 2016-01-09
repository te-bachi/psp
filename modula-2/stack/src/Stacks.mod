(*
    FILE:
        Stacks.mod
    PROJECT:
        Examples
    CREATED:
        09.01.2016
    VERSION:
        1.0
    AUTHOR:
        Andreas Bachmann
    IMPLEMENTATION:
        stack is implemented using a simple linked list
        top item is front element of the list
        empty stack is represented by a NIL value
    MODIFICATIONS:
        -
*)

IMPLEMENTATION MODULE Stacks;

    IMPORT Storage;
    
    TYPE
        Stack       =   POINTER TO StackType;
        StackType   =   RECORD
                            item:   Item;
                            next:   Stack;
                        END;
                        
    CONST StackTypeSize = SIZE(StackType);
    
    (* DESCRIPTION: Create a new empty stack *)
    PROCEDURE Create() : Stack;
    BEGIN
        RETURN NIL;
    END Create;
    
    (* DESCRIPTION: Destroy a stack and release associated memory *)
    PROCEDURE Destroy(VAR stack: Stack);
        VAR item: Item;
    BEGIN
        WHILE NOT IsEmpty(stack) DO
            item := Pop(stack);
        END;
        stack := NIL;
    END Destroy;
    
    (* DESCRIPTION: Pushes an item on top of the stack *)
    PROCEDURE Push(VAR stack: Stack; item: Item);
        VAR newElement: Stack;
    BEGIN
        Storage.ALLOCATE(newElement, StackTypeSize);
        newElement^.item := item;
        newElement^.next := stack;
        stack            := newElement;
    END Push;
    
    (* DESCRIPTION: Pops top item from the stack *)
    PROCEDURE Pop(VAR stack: Stack) : Item;
        VAR auxiliary: Stack;
        VAR item: Item;
    BEGIN
        auxiliary        := stack;
        stack            := stack^.next;
        item             := auxiliary^.item;
        Storage.DEALLOCATE(auxiliary, StackTypeSize);
        RETURN item;
    END Pop;
    
    (* DESCRIPTION: Returns top item of the stack *)
    PROCEDURE Top(stack: Stack) : Item;
    BEGIN
        RETURN stack^.item;
    END Top;
    
    (* DESCRIPTION: Returns the number of items in the stack *)
    PROCEDURE Size(stack: Stack) : CARDINAL;
    BEGIN
        IF IsEmpty(stack) THEN
            RETURN 0;
        ELSE
            RETURN 1 + Size(stack^.next);
        END;
    END Size;
    
    (* DESCRIPTION: tells whether the stack is empty *)
    PROCEDURE IsEmpty(stack: Stack) : BOOLEAN;
    BEGIN
        RETURN (stack = NIL);
    END IsEmpty;

END Stacks.

