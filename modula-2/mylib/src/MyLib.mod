
IMPLEMENTATION MODULE MyLib;

    FROM Strings IMPORT Length;

    PROCEDURE MyFunc(str: ARRAY OF CHAR; VAR b: CARDINAL) : INTEGER;
    BEGIN
        b := Length(str);
        RETURN 1;
    END MyFunc;

BEGIN

END MyLib.

