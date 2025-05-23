/* include/M2/config.h is generated from config.h.cmake by cmake.  */
/* include/M2/config.h.cmake is created manually.  */

#ifndef _M2_CONFIG_H
#define _M2_CONFIG_H

/* machine hardware type */
#define ARCH "${CMAKE_SYSTEM_PROCESSOR}"

// TODO: what are these two for? are they still relevant?
// both are only used in Macaulay2/e/Makefile.common.in
/* whether to instantiate templates automatically */
#cmakedefine AUTOINST 1

/* whether to instantiate templates implicitly */
#cmakedefine IMPLINST 1

/* arguments used for configure */
#define CONFIG_ARGS "CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} BUILD_NATIVE=${BUILD_NATIVE}"

/* whether to build a development version */
#cmakedefine DEVELOPMENT 1

// TODO: used in Macaulay2/d/version.dd. Still needed?
/* suffix the compiler appends to executable filenames */
#define EXEEXT "${CMAKE_EXECUTABLE_SUFFIX}"

// TODO: What is the default?
/* whether experimental code has been enabled */
#cmakedefine EXPERIMENT

/* whether factory was built with --enable-streamio */
#cmakedefine FACTORY_STREAMIO 1

/* whether we have the flint header file nmod.h */
#cmakedefine HAVE_FLINT_NMOD_H 1

/* whether we have the flint header file arb.h */
#cmakedefine HAVE_FLINT_ARB_H 1

/* whether frobby has frobby_version >=0.9.4 or constants::version <0.9.4 */
#cmakedefine HAVE_FROBBY_VERSION 1

/* whether libffi has ffi_get_struct_offsets; introduced in libffi 3.3 */
#cmakedefine HAVE_FFI_GET_STRUCT_OFFSETS 1

/* libffi version */
#define FFI_VERSION "${FFI_VERSION}"

// TODO: only used in Macaulay2/d/scclib.c. Still needed?
/* whether getaddrinfo can handle numeric service (port) numbers */
#cmakedefine GETADDRINFO_WORKS 1

// TODO: only used in Macaulay2/d/scclib.c. Still needed?
/* Define to 1 if you have the `accept' function. */
#cmakedefine HAVE_ACCEPT 1

// TODO: only used in Macaulay2/d/interrupts.d. Still needed?
/* Defined if you have the `alarm' function. */
#cmakedefine HAVE_ALARM 1

// TODO: used a few places, what is it for?
/* Define to 1 if you have `alloca', as a function or macro. */
#cmakedefine HAVE_ALLOCA 1

/* Defined if you have <alloca.h> and it should be used (not on Ultrix). */
#cmakedefine HAVE_ALLOCA_H 1

// TODO: only used in Macaulay2/d/types.h. Still needed?
/* Define to 1 if you have the <arpa/inet.h> header file. */
#cmakedefine HAVE_ARPA_INET_H 1

// TODO: only used in Macaulay2/d/system.d. Still needed?
/* Define to 1 if you have the <assert.h> header file. */
#cmakedefine HAVE_ASSERT_H 1

// TODO: only used in Macaulay2/d/M2lib.c. Still needed?
/* Defined if you have the `clock_gettime' function. */
#cmakedefine HAVE_CLOCK_GETTIME 1

/* Defined if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H 1

// TODO: remove?
/* Define to 1 if you have the <elf.h> header file. */
#cmakedefine HAVE_ELF_H 1

// TODO: remove?
/* Define to 1 if you have the `error' function. */
#cmakedefine HAVE_ERROR 1

/* Define to 1 if you have the <execinfo.h> header file. */
#cmakedefine HAVE_EXECINFO_H 1

/* Define to 1 if you have the `fchmod' function. */
#cmakedefine HAVE_FCHMOD 1

/* Define to 1 if you have the `fcntl' function. */
#cmakedefine HAVE_FCNTL 1

/* Define to 1 if you have the `fork' function. */
#cmakedefine HAVE_FORK 1

// TODO: still using this?
/* whether we are linking with the fplll library */
#cmakedefine HAVE_FPLLL 1

/* Define to 1 if you have the `getaddrinfo' function. */
#cmakedefine HAVE_GETADDRINFO 1

/* Define to 1 if you have the `getpgrp' function. */
#cmakedefine HAVE_GETPGRP 1

/* whether givaro has isunit (as opposed to isUnit) */
#cmakedefine01 HAVE_GIVARO_isunit

/* Define to 1 if you have the `herror' function. */
#cmakedefine HAVE_HERROR 1

/* Define to 1 if you have the `hstrerror' function. */
#cmakedefine HAVE_HSTRERROR 1

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H 1

/* Define to 1 if you have the `ioctl' function. */
#cmakedefine HAVE_IOCTL 1

// TODO: used in Macaulay2/d/types.h. Still needed?
/* Define to 1 if you have the <io.h> header file. */
#cmakedefine HAVE_IO_H 1

/* Define to 1 if you have the `kill' function. */
#cmakedefine HAVE_KILL 1

// TODO: used in Macaulay2/d/version.dd. Still needed?
/* whether we are linking with the linbox library */
#cmakedefine HAVE_LINBOX 1

/* Define to 1 if you have the `link' function. */
#cmakedefine HAVE_LINK 1

/* Define to 1 if you have the <linux/personality.h> header file. */
#cmakedefine HAVE_LINUX_PERSONALITY_H 1

/* Define to 1 if you have the `longjmp' function. */
#cmakedefine HAVE_LONGJMP 1

/* Define to 1 if you have the `lstat' function. */
#cmakedefine HAVE_LSTAT 1

/* Define to 1 if you have the <malloc.h> header file. */
#cmakedefine HAVE_MALLOC_H 1

/* Define to 1 if you have the <math.h> header file. */
#cmakedefine HAVE_MATH_H 1

/* Define to 1 if you have the <memory.h> header file. */
#cmakedefine HAVE_MEMORY_H 1

/* Define to 1 if you have the `mkdir' function. */
#cmakedefine HAVE_MKDIR 1

/* Define to 1 if you have the <netdb.h> header file. */
#cmakedefine HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#cmakedefine HAVE_NETINET_IN_H 1

/* Define to 1 if you have the `personality' function. */
#cmakedefine HAVE_PERSONALITY 1

/* Define to 1 if you have the `pipe' function. */
#cmakedefine HAVE_PIPE 1

/* Define to 1 if you have the <pthread.h> header file. */
#cmakedefine HAVE_PTHREAD_H 1

/* Define to 1 if you have the `readlink' function. */
#cmakedefine HAVE_READLINK 1

/* Define to 1 if you have the `realpath' function. */
#cmakedefine HAVE_REALPATH 1

/* Define to 1 if you have the `setpgid' function. */
#cmakedefine HAVE_SETPGID 1

/* Define to 1 if you have the `setrlimit' function. */
#cmakedefine HAVE_SETRLIMIT 1

/* Define to 1 if you have the `sigaction' function. */
#cmakedefine HAVE_SIGACTION 1

/* Define to 1 if you have the `siglongjmp' function. */
#cmakedefine HAVE_SIGLONGJMP 1

/* Define to 1 if you have the `sigprocmask' function. */
#cmakedefine HAVE_SIGPROCMASK 1

/* Define to 1 if you have the `socket' function. */
#cmakedefine HAVE_SOCKET 1

/* Define to 1 if you have the <stddef.h> header file. */
#cmakedefine HAVE_STDDEF_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H 1

/* Defined if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H 1

/* Define to 1 if you have the `symlink' function. */
#cmakedefine HAVE_SYMLINK 1

/* Define to 1 if you have the `sync' function. */
#cmakedefine HAVE_SYNC 1

/* Define to 1 if you have the <syscall.h> header file. */
#cmakedefine HAVE_SYSCALL_H 1

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#cmakedefine HAVE_SYS_IOCTL_H 1

/* Defined if you have the <sys/mman.h> header file. */
#cmakedefine HAVE_SYS_MMAN_H 1

/* Defined if you have the <sys/resource.h> header file. */
#cmakedefine HAVE_SYS_RESOURCE_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H 1

/* Defined if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
#cmakedefine HAVE_SYS_WAIT_H 1

/* Define to 1 if you have the <termios.h> header file. */
#cmakedefine HAVE_TERMIOS_H 1

/* Define to 1 if you have the <time.h> header file. */
#cmakedefine HAVE_TIME_H 1

/* Defined if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H 1

/* Defined if you have the <regex.h> header file. */
#cmakedefine HAVE_REGEX_H 1

/* Define to 1 if you have the `wait4' function. */
#cmakedefine HAVE_WAIT4 1

/* Define to 1 if you have the `waitpid' function. */
#cmakedefine HAVE_WAITPID 1

/* issue (flavor) of operating system, if any */
#define ISSUE "${ISSUE}"

// TODO: used in Macaulay2/d/version.dd. Still needed?
/* suffix to append to executable name M2 */
#define M2SUFFIX "${M2SUFFIX}"

/* a macro definition to ensure our config.h was the one loaded */
#define M2_CONFIG_H 1

/* operating system name, obtained with uname -s, perhaps modified */
#define OS "${CMAKE_SYSTEM_NAME}"

/* operating system release, obtained with uname -r */
#define REL "${CMAKE_SYSTEM_VERSION}"

/* complete machine description (to appear in name of tar file) */
#define MACHINE "${MACHINE}"

// TODO: rename to HOSTNAME
/* hostname used for compilation */
#define NODENAME "${NODENAME}"

/* the list of packages included with the release of Macaulay2 */
#define PACKAGES "${PACKAGES}"

/* Define to the full name of this package. */
#define PACKAGE_NAME "${PROJECT_NAME}"

/* Define to the version of this package. */
#define PACKAGE_VERSION "${PROJECT_VERSION}"

// TODO: why does M2lib.c fail if this isn't defined?
/* whether profiling has been enabled */
#cmakedefine01 PROFILING

/* The size of `int *', as computed by sizeof. */
#cmakedefine SIZEOF_INT_P 8

/* The size of `long', as computed by sizeof. */
#cmakedefine SIZEOF_LONG 8

/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS 1

/* Whether we are building with tbb version >= 2021 */
#cmakedefine WITH_TBB

/* whether we are linking with the libxml2 library */
#cmakedefine WITH_XML

/* whether we are linking with the mysql library */
#cmakedefine WITH_MYSQL

/* whether we are linking with the python library */
#cmakedefine WITH_PYTHON

/* whether newline is cr */
#cmakedefine WITH_NEWLINE_CR 1

/* whether newline is cr lf */
#cmakedefine WITH_NEWLINE_CRLF 1

// TODO: change these two names in Macaulay2/d/version.dd
/* the type of system on which the package was built */
#define buildsystemtype "${CMAKE_SYSTEM}"

/* the type of system on which the package runs */
#define hostsystemtype  "${CMAKE_HOST_SYSTEM}"

// TODO
/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t ${CMAKE_HOST_SYSTEM}

#endif /* _M2_CONFIG_H */
