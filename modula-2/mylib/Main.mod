
MODULE Main;

FROM MyLib IMPORT MyFunc;

VAR str     : ARRAY [1 .. 30] OF CHAR;
VAR len     : CARDINAL;
VAR error   : INTEGER;

BEGIN
    str := 'hello';
    error := MyFunc(str, len);
    WriteString('
END Main.
