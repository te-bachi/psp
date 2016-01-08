extern "C" void exit(int);

extern "C" void RTExceptions_DefaultErrorCatch(void);
extern "C" void _M2_Storage_init (int argc, char *argv[]);
extern "C" void _M2_Storage_finish (void);
extern "C" void _M2_SYSTEM_init (int argc, char *argv[]);
extern "C" void _M2_SYSTEM_finish (void);
extern "C" void _M2_M2RTS_init (int argc, char *argv[]);
extern "C" void _M2_M2RTS_finish (void);
extern "C" void _M2_RTExceptions_init (int argc, char *argv[]);
extern "C" void _M2_RTExceptions_finish (void);
extern "C" void _M2_Sys_init (int argc, char *argv[]);
extern "C" void _M2_Sys_finish (void);
extern "C" void _M2_SysWrite_init (int argc, char *argv[]);
extern "C" void _M2_SysWrite_finish (void);
extern "C" void _M2_SysExit_init (int argc, char *argv[]);
extern "C" void _M2_SysExit_finish (void);
extern "C" void _M2_Errno_init (int argc, char *argv[]);
extern "C" void _M2_Errno_finish (void);
extern "C" void _M2_SysPanic_init (int argc, char *argv[]);
extern "C" void _M2_SysPanic_finish (void);
extern "C" void _M2_SystemTypes_init (int argc, char *argv[]);
extern "C" void _M2_SystemTypes_finish (void);
extern "C" void _M2_UnixString_init (int argc, char *argv[]);
extern "C" void _M2_UnixString_finish (void);
extern "C" void _M2_termios_init (int argc, char *argv[]);
extern "C" void _M2_termios_finish (void);
extern "C" void _M2_SysClose_init (int argc, char *argv[]);
extern "C" void _M2_SysClose_finish (void);
extern "C" void _M2_SysLseek_init (int argc, char *argv[]);
extern "C" void _M2_SysLseek_finish (void);
extern "C" void _M2_SysTermIO_init (int argc, char *argv[]);
extern "C" void _M2_SysTermIO_finish (void);
extern "C" void _M2_SysCreat_init (int argc, char *argv[]);
extern "C" void _M2_SysCreat_finish (void);
extern "C" void _M2_SysOpen_init (int argc, char *argv[]);
extern "C" void _M2_SysOpen_finish (void);
extern "C" void _M2_SysRead_init (int argc, char *argv[]);
extern "C" void _M2_SysRead_finish (void);
extern "C" void _M2_M2EXCEPTION_init (int argc, char *argv[]);
extern "C" void _M2_M2EXCEPTION_finish (void);
extern "C" void _M2_StdIO_init (int argc, char *argv[]);
extern "C" void _M2_StdIO_finish (void);
extern "C" void _M2_ASCII_init (int argc, char *argv[]);
extern "C" void _M2_ASCII_finish (void);
extern "C" void _M2_Strings_init (int argc, char *argv[]);
extern "C" void _M2_Strings_finish (void);
extern "C" void _M2_ReadIntCard_init (int argc, char *argv[]);
extern "C" void _M2_ReadIntCard_finish (void);
extern "C" void _M2_Terminal_init (int argc, char *argv[]);
extern "C" void _M2_Terminal_finish (void);
extern "C" void _M2_Conversions_init (int argc, char *argv[]);
extern "C" void _M2_Conversions_finish (void);
extern "C" void _M2_InOut_init (int argc, char *argv[]);
extern "C" void _M2_InOut_finish (void);
extern "C" void _M2_hello_init (int argc, char *argv[]);
extern "C" void _M2_hello_finish (void);

extern "C" void M2RTS_ExecuteTerminationProcedures(void);

extern "C" void M2RTS_ExecuteInitialProcedures(void);

static void init (int argc, char *argv[])
{
   try {
       _M2_Storage_init (argc, argv);
       _M2_SYSTEM_init (argc, argv);
       _M2_M2RTS_init (argc, argv);
       _M2_RTExceptions_init (argc, argv);
       _M2_Sys_init (argc, argv);
       _M2_SysWrite_init (argc, argv);
       _M2_SysExit_init (argc, argv);
       _M2_Errno_init (argc, argv);
       _M2_SysPanic_init (argc, argv);
       _M2_SystemTypes_init (argc, argv);
       _M2_UnixString_init (argc, argv);
       _M2_termios_init (argc, argv);
       _M2_SysClose_init (argc, argv);
       _M2_SysLseek_init (argc, argv);
       _M2_SysTermIO_init (argc, argv);
       _M2_SysCreat_init (argc, argv);
       _M2_SysOpen_init (argc, argv);
       _M2_SysRead_init (argc, argv);
       _M2_M2EXCEPTION_init (argc, argv);
       _M2_StdIO_init (argc, argv);
       _M2_ASCII_init (argc, argv);
       _M2_Strings_init (argc, argv);
       _M2_ReadIntCard_init (argc, argv);
       _M2_Terminal_init (argc, argv);
       _M2_Conversions_init (argc, argv);
       _M2_InOut_init (argc, argv);
      M2RTS_ExecuteInitialProcedures ();
       _M2_hello_init (argc, argv);
    }
    catch (...) {
       RTExceptions_DefaultErrorCatch();
    }
}

static void finish (void)
{
   try {
      M2RTS_ExecuteTerminationProcedures ();
      _M2_hello_finish ();
      _M2_InOut_finish ();
      _M2_Conversions_finish ();
      _M2_Terminal_finish ();
      _M2_ReadIntCard_finish ();
      _M2_Strings_finish ();
      _M2_ASCII_finish ();
      _M2_StdIO_finish ();
      _M2_M2EXCEPTION_finish ();
      _M2_SysRead_finish ();
      _M2_SysOpen_finish ();
      _M2_SysCreat_finish ();
      _M2_SysTermIO_finish ();
      _M2_SysLseek_finish ();
      _M2_SysClose_finish ();
      _M2_termios_finish ();
      _M2_UnixString_finish ();
      _M2_SystemTypes_finish ();
      _M2_SysPanic_finish ();
      _M2_Errno_finish ();
      _M2_SysExit_finish ();
      _M2_SysWrite_finish ();
      _M2_Sys_finish ();
      _M2_RTExceptions_finish ();
      _M2_M2RTS_finish ();
      _M2_SYSTEM_finish ();
      _M2_Storage_finish ();
      exit (0);
    }
    catch (...) {
       RTExceptions_DefaultErrorCatch();
    }
}

int main (int argc, char *argv[])
{
   init (argc, argv);
   finish ();
   return (0);
}
