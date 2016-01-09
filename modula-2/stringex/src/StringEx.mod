
(*
Array(ABCDEFGHIJKL)  -   +65  +66  +67  +68  +69  +70  +71  +72  +73  +74  +75  +76   +0
Array(12345)         -   +49  +50  +51  +52  +53   +0  +71  +72  +73  +74  +75  +76   +0
Array(NeatThings)    -   +78 +101  +97 +116  +84 +104 +105 +110 +103 +115   +0  +76   +0
Array(NeatThings123) -   +78 +101  +97 +116  +84 +104 +105 +110 +103 +115  +49  +50  +51
Array(12345NeatThin) -   +49  +50  +51  +52  +53  +78 +101  +97 +116  +84 +104 +105 +110
*)

MODULE StringEx;

    FROM STextIO    IMPORT WriteString, WriteLn;
    FROM SWholeIO   IMPORT WriteInt;
    FROM Strings    IMPORT Assign, Concat;
    
    TYPE SevenChar = ARRAY[0..6] OF CHAR;
    
    VAR Horse : ARRAY[0..12] OF CHAR;
        Cow   : ARRAY[0..5] OF CHAR;
        S1    : SevenChar;
        S2    : SevenChar;

(* ******************************************************* Display *)
PROCEDURE Display(Stuff : ARRAY OF CHAR);
    VAR Index : CARDINAL;
BEGIN
   WriteString("Array(");
   WriteString(Stuff);
   WriteString(") - ");
   FOR Index := 0 TO HIGH(Stuff) DO
      WriteInt(ORD(Stuff[Index]), 5);
   END;
   WriteLn;
END Display;

(* ************************************************** main program *)
BEGIN
   Horse := "ABCDEFGHIJKL";           (* Copy constant to variable *)
   Display(Horse);

   Cow := "12345";
   Assign(Cow,Horse);               (* Assign variable to variable *)
   Display(Horse);

   S1 := "Neat";
   S2 := "Things";
   Concat(S1,S2,Horse);       (* Concatenate variables to variable *)
   Display(Horse);
   S1 := S2;                        (* Assign variable to variable *)

   Concat(Horse,Cow,Horse); (* Concatenate one variable to another *)
   Display(Horse);

   Concat(Cow,Horse,Horse);        (* Concatenate to the beginning *)
   Display(Horse);
END StringEx.

