#----------------------------------------------------------------------------+
#
#  Apache2::WebApp::Extra::Admin - Web based admin control panel
#
#  DESCRIPTION
#  This package provides application sources for a fully functional web based
#  admin Control Panel.  You can easily add this Extra to an existing project
#  using the webapp-extra helper script provided with the WebApp::Toolkit
#
#  AUTHOR
#  Marc S. Brooks <mbrooks@cpan.org>
#
#  This module is free software; you can redistribute it and/or
#  modify it under the same terms as Perl itself.
#
#----------------------------------------------------------------------------+

package Apache2::WebApp::Extra::Admin;

our $VERSION = 0.07;

1;

__END__

=head1 NAME

Apache2::WebApp::Extra::Admin - Web based admin control panel

=head1 SYNOPSIS

This module should NOT be used directly.

=head1 DESCRIPTION

This package provides application sources for a fully functional web based
admin Control Panel.  You can easily add this I<Extra> to an existing project
using the C<webapp-extra> helper script provided with the WebApp::Toolkit

=head1 PREREQUISITES

  Apache2::WebApp
  Apache2::WebApp::Plugin::DateTime
  Apache2::WebApp::Plugin::DBI
  Apache::Htpasswd
  Params::Validate

=head1 INSTALLATION

From source:

  $ tar xfz Apache2-WebApp-Extra-Admin-0.X.X.tar.gz
  $ perl MakeFile.PL PREFIX=~/path/to/custom/dir LIB=~/path/to/custom/lib
  $ make
  $ make install

Perl one liner using CPAN.pm:

  $ perl -MCPAN -e 'install Apache2::WebApp::Extra::Admin'

Use of CPAN.pm in interactive mode:

  $ perl -MCPAN -e shell
  cpan> install Apache2::WebApp::Extra::Admin
  cpan> quit

Just like the manual installation of Perl modules, the user may need root access during
this process to insure write permission is allowed within the installation directory.

=head1 GETTING STARTED

=head2 HELPER SCRIPT

=head3 Export project settings to the Unix shell

  $ source /path/to/project/.projrc

=head3 Add this I<Extra> to an existing project

  $ webapp-extra Admin

=head3 Restart your application

  $ webapp-kickstart

=head3 Accessing the admin control panel

  http://domain.com/app/admin

=head1 SECURITY

By default, the admin control panel is public and not secure.  You can 
enable user access controls by adding the following I<Apache> directives
into your project C<httpd.conf>

  <Location /app/admin>
      AuthType Basic
      AuthName "Admin"
      AuthUserFile /home/webapp/conf/htpasswd
      Require valid-user
  </Location>

As always, you must restart your application for changes to take effect.

=head1 ADMIN ACCESS

The login information below is currently set-up by default.  In order to
manage user access this account must exist within your C<htpasswd>

  User Name       admin
  Password        password

=head1 SEE ALSO

L<Apache2::WebApp>, L<Apache2::WebApp::Plugin::DBI>,
L<Apache2::WebApp::Plugin::DateTime>, L<Apache::Htpasswd>

=head1 AUTHOR

Marc S. Brooks, E<lt>mbrooks@cpan.orgE<gt> L<http://mbrooks.info>

=head1 COPYRIGHT

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=cut
