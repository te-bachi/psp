MODULE hello;

(* FROM StrIO IMPORT WriteString, WriteLn ; *)
FROM InOut IMPORT WriteString, WriteLn;

BEGIN
   WriteString('hello world');
   WriteLn;
END hello.

