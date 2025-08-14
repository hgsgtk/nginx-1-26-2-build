package OpenSSL::safe::installdata;

use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(
    @PREFIX
    @libdir
    @BINDIR @BINDIR_REL_PREFIX
    @LIBDIR @LIBDIR_REL_PREFIX
    @INCLUDEDIR @INCLUDEDIR_REL_PREFIX
    @APPLINKDIR @APPLINKDIR_REL_PREFIX
    @ENGINESDIR @ENGINESDIR_REL_LIBDIR
    @MODULESDIR @MODULESDIR_REL_LIBDIR
    @PKGCONFIGDIR @PKGCONFIGDIR_REL_LIBDIR
    @CMAKECONFIGDIR @CMAKECONFIGDIR_REL_LIBDIR
    $VERSION @LDLIBS
);

our @PREFIX                     = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0/.openssl' );
our @libdir                     = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0/.openssl/lib' );
our @BINDIR                     = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0/.openssl/bin' );
our @BINDIR_REL_PREFIX          = ( 'bin' );
our @LIBDIR                     = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0/.openssl/lib' );
our @LIBDIR_REL_PREFIX          = ( 'lib' );
our @INCLUDEDIR                 = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0/.openssl/include' );
our @INCLUDEDIR_REL_PREFIX      = ( 'include' );
our @APPLINKDIR                 = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0/.openssl/include/openssl' );
our @APPLINKDIR_REL_PREFIX      = ( 'include/openssl' );
our @ENGINESDIR                 = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0//.openssl/lib/engines-3' );
our @ENGINESDIR_REL_LIBDIR      = ( 'engines-3' );
our @MODULESDIR                 = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0//.openssl/lib/ossl-modules' );
our @MODULESDIR_REL_LIBDIR      = ( 'ossl-modules' );
our @PKGCONFIGDIR               = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0//.openssl/lib/pkgconfig' );
our @PKGCONFIGDIR_REL_LIBDIR    = ( 'pkgconfig' );
our @CMAKECONFIGDIR             = ( '/Users/hgsgtk/nginx-src/nginx-1.26.2/../openssl-3.4.0//.openssl/lib/cmake/OpenSSL' );
our @CMAKECONFIGDIR_REL_LIBDIR  = ( 'cmake/OpenSSL' );
our $VERSION                    = '3.4.0';
our @LDLIBS                     =
    # Unix and Windows use space separation, VMS uses comma separation
    $^O eq 'VMS'
    ? split(/ *, */, ' ')
    : split(/ +/, ' ');

1;
