
MODULE Main;
    FROM MyLib      IMPORT MyFunc;
    FROM StrIO      IMPORT WriteString, WriteLn;
    FROM WholeStr   IMPORT IntToStr, CardToStr;
    FROM SWholeIO   IMPORT WriteInt, WriteCard;
    FROM RealIO     IMPORT WriteReal;
    
    VAR str         : ARRAY [1 .. 30] OF CHAR;
    VAR len         : CARDINAL;
    VAR error       : INTEGER;

BEGIN
    str := 'hello';
    error := MyFunc(str, len);
    WriteString('Result of MyFunc');
    WriteLn;
    WriteString('str=');
    WriteString(str);
    WriteString(' len=');
    WriteCard(len, 1);
    WriteString(' error=');
    WriteInt(error, 1);
    WriteLn;
END Main.
