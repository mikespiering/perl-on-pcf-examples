# 
# /*
#  * *********** WARNING **************
#  * This file generated by Apache2::Build/0.01
#  * Any changes made here will be lost
#  * ***********************************
#  * 01: lib/ModPerl/Code.pm:716
#  * 02: lib/Apache2/Build.pm:1008
#  * 03: lib/Apache2/Build.pm:1028
#  * 04: Makefile.PL:413
#  * 05: Makefile.PL:102
#  */
# 
package Apache2::BuildConfig;

use Apache2::Build ();

sub new {
    bless( {
'API_VERSION' => 2,
'APXS_APU_BINDIR' => '/usr/bin',
'APXS_BINDIR' => '/usr/bin',
'APXS_EXTRA_CFLAGS' => '-pthread ',
'APXS_EXTRA_CPPFLAGS' => '-DLINUX -D_REENTRANT -D_GNU_SOURCE ',
'APXS_INCLUDEDIR' => '/usr/include/apache2',
'APXS_LIBEXECDIR' => '/usr/lib/apache2/modules',
'APXS_NOTEST_CPPFLAGS' => '',
'MODPERL_AP_INCLUDEDIR' => '/usr/include/apache2',
'MODPERL_AP_LIBEXECDIR' => '/usr/lib/apache2/modules',
'MODPERL_AP_LIBS' => '',
'MODPERL_AR' => 'ar',
'MODPERL_ARCHLIBEXP' => '/usr/lib/x86_64-linux-gnu/perl/5.26',
'MODPERL_CC' => 'x86_64-linux-gnu-gcc',
'MODPERL_CCCDLFLAGS' => '-fPIC',
'MODPERL_CCOPTS' => ' -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv -fno-strict-aliasing -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -I/usr/lib/x86_64-linux-gnu/perl/5.26/CORE -DMOD_PERL -DMP_COMPAT_1X -g -O2 -fdebug-prefix-map=/build/libapache2-mod-perl2-aIAD7s/libapache2-mod-perl2-2.0.10=. -fstack-protector-strong -Wformat -Werror=format-security -Wall -fgnu89-inline -DLINUX',
'MODPERL_CP' => 'cp',
'MODPERL_CPPRUN' => 'x86_64-linux-gnu-gcc  -E',
'MODPERL_C_FILES' => 'mod_perl.c modperl_interp.c modperl_tipool.c modperl_log.c modperl_config.c modperl_cmd.c modperl_options.c modperl_callback.c modperl_handler.c modperl_gtop.c modperl_util.c modperl_io.c modperl_io_apache.c modperl_filter.c modperl_bucket.c modperl_mgv.c modperl_pcw.c modperl_global.c modperl_env.c modperl_cgi.c modperl_perl.c modperl_perl_global.c modperl_perl_pp.c modperl_sys.c modperl_module.c modperl_svptr_table.c modperl_const.c modperl_constants.c modperl_apache_compat.c modperl_error.c modperl_debug.c modperl_common_util.c modperl_common_log.c modperl_hooks.c modperl_directives.c modperl_flags.c modperl_xsinit.c modperl_exports.c',
'MODPERL_DLEXT' => 'so',
'MODPERL_H_FILES' => 'mod_perl.h modperl_interp.h modperl_tipool.h modperl_log.h modperl_config.h modperl_cmd.h modperl_options.h modperl_callback.h modperl_handler.h modperl_gtop.h modperl_util.h modperl_io.h modperl_io_apache.h modperl_filter.h modperl_bucket.h modperl_mgv.h modperl_pcw.h modperl_global.h modperl_env.h modperl_cgi.h modperl_perl.h modperl_perl_global.h modperl_perl_pp.h modperl_sys.h modperl_module.h modperl_svptr_table.h modperl_const.h modperl_constants.h modperl_apache_compat.h modperl_error.h modperl_debug.h modperl_common_util.h modperl_common_log.h modperl_perl_unembed.h modperl_types.h modperl_time.h modperl_apache_includes.h modperl_perl_includes.h modperl_apr_includes.h modperl_apr_compat.h modperl_common_includes.h modperl_common_types.h modperl_hooks.h modperl_directives.h modperl_flags.h modperl_trace.h modperl_largefiles.h',
'MODPERL_INC' => '-I/build/libapache2-mod-perl2-aIAD7s/libapache2-mod-perl2-2.0.10/src/modules/perl -I/build/libapache2-mod-perl2-aIAD7s/libapache2-mod-perl2-2.0.10/xs -I/usr/include/apr-1.0 -I/usr/include/apr-1.0 -I/usr/include -I/usr/include/apache2',
'MODPERL_LD' => 'x86_64-linux-gnu-gcc',
'MODPERL_LDDLFLAGS' => '-shared -L/usr/local/lib -fstack-protector-strong',
'MODPERL_LDOPTS' => '-Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/x86_64-linux-gnu/perl/5.26/CORE -lperl -ldl -lm -lpthread -lc -lcrypt -Wl,-Bsymbolic-functions -Wl,-z,relro',
'MODPERL_LIB' => 'mod_perl.so',
'MODPERL_LIBNAME' => 'mod_perl',
'MODPERL_LIB_DSO' => 'mod_perl.so',
'MODPERL_LIB_EXT' => '.a',
'MODPERL_LIB_SHARED' => 'mod_perl.so',
'MODPERL_LIB_STATIC' => 'mod_perl.a',
'MODPERL_MAKEFILE' => 'Makefile',
'MODPERL_MV' => 'mv',
'MODPERL_OBJ_EXT' => '.o',
'MODPERL_OPTIMIZE' => '-O2 -g',
'MODPERL_O_FILES' => 'mod_perl.o modperl_interp.o modperl_tipool.o modperl_log.o modperl_config.o modperl_cmd.o modperl_options.o modperl_callback.o modperl_handler.o modperl_gtop.o modperl_util.o modperl_io.o modperl_io_apache.o modperl_filter.o modperl_bucket.o modperl_mgv.o modperl_pcw.o modperl_global.o modperl_env.o modperl_cgi.o modperl_perl.o modperl_perl_global.o modperl_perl_pp.o modperl_sys.o modperl_module.o modperl_svptr_table.o modperl_const.o modperl_constants.o modperl_apache_compat.o modperl_error.o modperl_debug.o modperl_common_util.o modperl_common_log.o modperl_hooks.o modperl_directives.o modperl_flags.o modperl_xsinit.o modperl_exports.o',
'MODPERL_O_PIC_FILES' => 'mod_perl.lo modperl_interp.lo modperl_tipool.lo modperl_log.lo modperl_config.lo modperl_cmd.lo modperl_options.lo modperl_callback.lo modperl_handler.lo modperl_gtop.lo modperl_util.lo modperl_io.lo modperl_io_apache.lo modperl_filter.lo modperl_bucket.lo modperl_mgv.lo modperl_pcw.lo modperl_global.lo modperl_env.lo modperl_cgi.lo modperl_perl.lo modperl_perl_global.lo modperl_perl_pp.lo modperl_sys.lo modperl_module.lo modperl_svptr_table.lo modperl_const.lo modperl_constants.lo modperl_apache_compat.lo modperl_error.lo modperl_debug.lo modperl_common_util.lo modperl_common_log.lo modperl_hooks.lo modperl_directives.lo modperl_flags.lo modperl_xsinit.lo modperl_exports.lo',
'MODPERL_PERLPATH' => '/usr/bin/perl',
'MODPERL_PRIVLIBEXP' => '/usr/share/perl/5.26',
'MODPERL_RANLIB' => ':',
'MODPERL_RM' => 'rm',
'MODPERL_RM_F' => 'rm -f',
'MODPERL_TEST_F' => 'test -f',
'MODPERL_XSUBPP' => '$(MODPERL_PERLPATH) $(MODPERL_PRIVLIBEXP)/ExtUtils/xsubpp -typemap $(MODPERL_PRIVLIBEXP)/ExtUtils/typemap -typemap /build/libapache2-mod-perl2-aIAD7s/libapache2-mod-perl2-2.0.10/lib/typemap',
'MP_APR_CONFIG' => '/usr/bin/apr-config',
'MP_APR_LIB' => 'aprext',
'MP_APXS' => '/usr/bin/apxs',
'MP_CCOPTS' => '-g -O2 -fdebug-prefix-map=/build/libapache2-mod-perl2-aIAD7s/libapache2-mod-perl2-2.0.10=. -fstack-protector-strong -Wformat -Werror=format-security -Wall -fgnu89-inline',
'MP_COMPAT_1X' => 1,
'MP_GENERATE_XS' => 1,
'MP_LIBNAME' => 'mod_perl',
'MP_TRACE' => '0',
'MP_USE_DSO' => '1',
'MP_USE_STATIC' => '0',
'VERSION' => '2.0.10',
'XS' => {},
'ap_includedir' => '/usr/include/apache2',
'apr_bindir' => '/usr/bin',
'apr_config' => {
                  'HAS_DSO' => '1',
                  'HAS_FORK' => '1',
                  'HAS_INLINE' => '1',
                  'HAS_LARGE_FILES' => '0',
                  'HAS_MMAP' => '1',
                  'HAS_RANDOM' => '1',
                  'HAS_SENDFILE' => '1',
                  'HAS_THREADS' => '1'
                },
'apr_config_path' => '/usr/bin/apr-config',
'apr_includedir' => '/usr/include/apr-1.0',
'apu_config_path' => '/usr/bin/apu-1-config',
'cwd' => '/build/libapache2-mod-perl2-aIAD7s/libapache2-mod-perl2-2.0.10',
'dir' => undef,
'file_build_config' => 'lib/Apache2/BuildConfig.pm',
'file_ldopts' => 'src/modules/perl/ldopts',
'file_makefile' => 'src/modules/perl/Makefile',
'httpd_is_source_tree' => '',
'httpd_version' => {
                     '/usr/include/apache2' => '2.4.29'
                   },
'libpth' => [
              '/usr/local/lib',
              '/usr/lib/gcc/x86_64-linux-gnu/7/include-fixed',
              '/usr/include/x86_64-linux-gnu',
              '/usr/lib',
              '/lib/x86_64-linux-gnu',
              '/lib/../lib',
              '/usr/lib/x86_64-linux-gnu',
              '/usr/lib/../lib',
              '/lib'
            ]
       }, 'Apache2::Build' );
}

1;
