MODULE Cat;
 
    IMPORT StreamFile;
    IMPORT ChanConsts;
    IMPORT STextIO;
    IMPORT TextIO;
    IMPORT IOConsts;
    IMPORT IOChan;
     
    VAR
        fi        : StreamFile.ChanId;
        fname     : ARRAY [0..255] OF CHAR;
        res       : ChanConsts.OpenResults;
        ch        : CHAR;
 
BEGIN
    fname := "test.txt";
    
    StreamFile.Open(fi,fname,StreamFile.text+StreamFile.old+StreamFile.read,res);
    IF res <> StreamFile.opened THEN
        STextIO.WriteString("Open error");
        STextIO.WriteLn;
        RETURN;
    END;
    
    STextIO.WriteString('=== OPEN ');
    STextIO.WriteString(fname);
    STextIO.WriteString(' ===');
    STextIO.WriteLn;
    
    LOOP
        TextIO.ReadChar(fi, ch);
        
        CASE IOChan.ReadResult(fi) OF
            IOConsts.endOfInput:    STextIO.WriteString('<EOF>');
                                    STextIO.WriteLn;
                                    EXIT;
                                    |
                                    
            IOConsts.endOfLine:     TextIO.SkipLine(fi);
                                    STextIO.WriteString('<LF>');
                                    STextIO.WriteLn;
                                    |
                                    
            ELSE                    STextIO.WriteChar(ch);
        END;
    END;
    
    STextIO.WriteString('=== CLOSE ');
    STextIO.WriteString(fname);
    STextIO.WriteString(' ===');
    STextIO.WriteLn;
    
    StreamFile.Close(fi);
END Cat.

