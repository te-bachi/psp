
MODULE Main;

    IMPORT Stacks;
    IMPORT STextIO;
    IMPORT SWholeIO;
    
    VAR
        stack:  Stacks.Stack;

        
    PROCEDURE push(VAR stack: Stacks.Stack; item: Stacks.Item);
    BEGIN
        STextIO.WriteString('push ');
        STextIO.WriteChar(item);
        STextIO.WriteLn;
        Stacks.Push(stack, item);
    END push;
    
    PROCEDURE pop(VAR stack: Stacks.Stack);
        VAR item: Stacks.Item;
    BEGIN
        item := Stacks.Pop(stack);
        STextIO.WriteString('pop ');
        STextIO.WriteChar(item);
        STextIO.WriteLn;
    END pop;
    
    PROCEDURE size(VAR stack: Stacks.Stack);
        VAR s: CARDINAL;
    BEGIN
        s := Stacks.Size(stack);
        STextIO.WriteString('size ');
        SWholeIO.WriteCard(s, 0);
        STextIO.WriteLn;
    END size;
    
    PROCEDURE empty(VAR stack: Stacks.Stack);
    BEGIN
        IF Stacks.IsEmpty(stack) THEN
            STextIO.WriteString('empty is empty');
        ELSE
            STextIO.WriteString('empty is _NOT_ empty');
        END;
        STextIO.WriteLn;
    END empty;
    
BEGIN
    stack := Stacks.Create();
    
    push(stack, 'a');
    push(stack, 'b');
    push(stack, 'c');
    
    size(stack);
    empty(stack);
    
    pop(stack);
    pop(stack);
    pop(stack);
    
    size(stack);
    empty(stack);
    
END Main.

