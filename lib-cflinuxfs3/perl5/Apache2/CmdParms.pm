# 
# /*
#  * *********** WARNING **************
#  * This file generated by ModPerl::WrapXS/0.01
#  * Any changes made here will be lost
#  * ***********************************
#  * 01: lib/ModPerl/Code.pm:716
#  * 02: lib/ModPerl/WrapXS.pm:635
#  * 03: lib/ModPerl/WrapXS.pm:1186
#  * 04: Makefile.PL:435
#  * 05: Makefile.PL:333
#  * 06: Makefile.PL:59
#  */
# 


package Apache2::CmdParms;

use strict;
use warnings FATAL => 'all';



use Apache2::XSLoader ();
our $VERSION = '2.000010';
Apache2::XSLoader::load __PACKAGE__;



1;
__END__

=head1 NAME

Apache2::CmdParms - Perl API for Apache command parameters object




=head1 Synopsis

  use Apache2::CmdParms ();
  use Apache2::Module ();
  use Apache2::Const -compile => qw(NOT_IN_LOCATION);
  
  my @directives = (
    {
      name => 'MyDirective',
      cmd_data => 'some extra data',
    },
  );
  
  Apache2::Module::add(__PACKAGE__, \@directives);
  
  sub MyDirective {
      my ($self, $parms, $args) = @_;
  
      # push config
      $parms->add_config(['ServerTokens off']);
  
      # this command's command object
      $cmd = $parms->cmd;
  
      # check the current command's context
      $error = $parms->check_cmd_context(Apache2::Const::NOT_IN_LOCATION);
  
      # this command's context
      $context = $parms->context;
  
      # this command's directive object
      $directive = $parms->directive;
  
      # the extra information passed thru cmd_data to
      # Apache2::Module::add()
      $info = $parms->info;
  
      # which methods are <Limit>ed ?
      $is_limited = $parms->method_is_limited('GET');
  
      # which allow-override bits are set
      $override = $parms->override;
  
      # which Options are allowed by AllowOverride (since Apache 2.2)
      $override = $parms->override_opts;
  
      # the path this command is being invoked in
      $path = $parms->path;
  
      # this command's pool
      $p = $parms->pool;
  
      # this command's configuration time pool
      $p = $parms->temp_pool;
  }





=head1 Description

C<Apache2::CmdParms> provides the Perl API for Apache command
parameters object.




=head1 API

C<Apache2::CmdParms> provides the following functions and/or methods:





=head2 C<add_config>

Dynamically add Apache configuration at request processing runtime:

  $parms->add_config($lines);

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item arg1: C<$lines> (ARRAY ref)

An ARRAY reference containing configuration lines per element, without
the new line terminators.

=item ret: no return value

=item since: 2.0.00

=back

See also:
C<L<$s-E<gt>add_config|docs::2.0::api::Apache2::ServerUtil/C_add_config_>>,
C<L<$r-E<gt>add_config|docs::2.0::api::Apache2::RequestUtil/C_add_config_>>





=head2 C<check_cmd_context>

Check the current command against a context bitmask of forbidden contexts.

  $error = $parms->check_cmd_context($check);

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item arg1: C<$check> ( C<L<Apache2::Const :context
constant|docs::2.0::api::Apache2::Const/C__context_>> )

the context to check against.

=item ret: C<$error> ( string / undef )

If the context is forbidden, this method returns a textual description
of why it was forbidden. If the context is permitted, this method returns
C<undef>.

=item since: 2.0.00

=back

For example here is how to check whether a command is allowed in the
C<E<lt>LocationE<gt>> container:

  use Apache2::Const -compile qw(NOT_IN_LOCATION);
  if (my $error = $parms->check_cmd_context(Apache2::Const::NOT_IN_LOCATION)) {
      die "directive ... not allowed in <Location> context"
  }




=head2 C<cmd>

This module's command information

  $cmd = $parms->cmd();

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$cmd>
( C<L<Apache2::Command object|docs::2.0::api::Apache2::Command>> )

=item since: 2.0.00

=back






=head2 C<directive>

This command's directive object in the configuration tree

  $directive = $parms->directive;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$directive>
( C<L<Apache2::Directive object|docs::2.0::api::Apache2::Directive>> )

The current directive node in the configuration tree

=item since: 2.0.00

=back






=head2 C<info>

The extra information passed through C<cmd_data> in
C<L<Apache2::Module::add()|docs::2.0::api::Apache2::Module/C_add_>>.

  $info = $parms->info;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$info> ( string )

The string passed in C<cmd_data>

=item since: 2.0.00

=back

For example here is how to pass arbitrary information to a directive
subroutine:

  my @directives = (
    {
      name => 'MyDirective1',
      func => \&MyDirective,
      cmd_data => 'One',
    },
    {
      name => 'MyDirective2',
      func => \&MyDirective,
      cmd_data => 'Two',
    },
  );
  Apache2::Module::add(__PACKAGE__, \@directives);
  
  sub MyDirective {
    my ($self, $parms, $args) = @_;
    my $info = $parms->info;
  }

In this example C<$info> will either be C<'One'> or C<'Two'> depending
on whether the directive was called as I<MyDirective1> or
I<MyDirective2>.




=head2 C<method_is_limited>

Discover if a method is E<lt>LimitE<gt>ed in the current scope

  $is_limited = $parms->method_is_limited($method);

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item arg1: C<$method> (string)

The name of the method to check for

=item ret: C<$is_limited> ( boolean )

=item since: 2.0.00

=back

For example, to check if the C<GET> method is being
C<E<lt>LimitE<gt>>ed in the current scope, do:

  if ($parms->method_is_limited('GET') {
      die "...";
  }







=head2 C<override>

Which allow-override bits are set (C<AllowOverride> directive)

  $override = $parms->override;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$override> ( bitmask )

the allow-override bits bitmask, which can be tested against
C<L<Apache2::Const :override
constants|docs::2.0::api::Apache2::Const/C__override_>>.

=item since: 2.0.00

=back

For example to check that the C<AllowOverride>'s C<AuthConfig> and
C<FileInfo> options are enabled for this command, do:

  use Apache2::Const -compile qw(:override);
  $wanted = Apache2::Const::OR_AUTHCFG | Apache2::Const::OR_FILEINFO;
  $masked = $parms->override & $wanted;
  unless ($wanted == $masked) {
      die "...";
  }







=head2 C<override_opts>

Which options are allowed to be overridden by C<.htaccess> files. This is
set by C<AllowOverride Options=...>.

  $override_opts = $parms->override_opts;

Enabling single options was introduced with Apache 2.2. For Apache 2.0 this
function simply returns a bitmask with all options allowed.

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$override_opts> ( bitmask )

the bitmask, which can be tested against
C<L<Apache2::Const :options
constants|docs::2.0::api::Apache2::Const/C__override_>>.

=item since: 2.0.3

=back







=head2 C<path>

The current pathname/location/match of the block this command is in

  $path = $parms->path;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$path> ( string / C<undef> )

If configuring for a block like E<lt>LocationE<gt>,
E<lt>LocationMatchE<gt>, E<lt>DirectoryE<gt>, etc., the pathname part
of that directive. Otherwise, C<undef> is returned.

=item since: 2.0.00

=back

For example for a container block:

  <Location /foo>
  ...
  </Location>

I<'/foo'> will be returned.







=head2 C<pool>

Pool associated with this command

  $p = $parms->pool;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$p>
( C<L<APR::Pool object|docs::2.0::api::APR::Pool>> )

=item since: 2.0.00

=back






=head2 C<server>

The (vhost) server this command was defined in F<httpd.conf>

  $s = $parms->server;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$s>
( C<L<Apache2::Server object|docs::2.0::api::Apache2::ServerRec>> )

=item since: 2.0.00

=back






=head2 C<temp_pool>

Pool for scratch memory; persists during configuration, but destroyed
before the first request is served.

  $temp_pool = $parms->temp_pool;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$temp_pool>
( C<L<APR::Pool object|docs::2.0::api::APR::Pool>> )

=item since: 2.0.00

=back

Most likely you shouldn't use this pool object, unless you know what
you are doing. Use C<L<$parms-E<gt>pool|/C_pool_>> instead.







=head1 Unsupported API

C<Apache2::CmdParms> also provides auto-generated Perl interface for
a few other methods which aren't tested at the moment and therefore
their API is a subject to change. These methods will be finalized
later as a need arises. If you want to rely on any of the following
methods please contact the L<the mod_perl development mailing
list|maillist::dev> so we can help each other take the steps necessary
to shift the method to an officially supported API.






=head2 C<context>

Get context containing pointers to modules' per-dir
config structures.

  $context = $parms->context;

=over 4

=item obj: C<$parms>
( C<L<Apache2::CmdParms object|docs::2.0::api::Apache2::CmdParms>> )

=item ret: C<$newval>
( C<L<Apache2::ConfVector object|docs::2.0::api::Apache2::RequestRec/C_per_dir_config_>> )

Returns the commands' per-dir config structures

=item since: 2.0.00

=back





=head1 See Also

L<mod_perl 2.0 documentation|docs::2.0::index>.




=head1 Copyright

mod_perl 2.0 and its core modules are copyrighted under
The Apache Software License, Version 2.0.




=head1 Authors

L<The mod_perl development team and numerous
contributors|about::contributors::people>.

=cut

