use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    NAME         => 'Apache2::WebApp::Extra::Admin',
    VERSION_FROM => 'lib/Apache2/WebApp/Extra/Admin.pm', # finds \$VERSION
    AUTHOR       => 'Marc S. Brooks (mbrooks@cpan.org)',
    PREREQ_PM    => {
       'Apache2::WebApp'                   => 0.27,
       'Apache2::WebApp::Plugin::DateTime' => 0.05,
    },
);

# Install build script template dependencies (non-standard way)
sub MY::postamble {
'
install::
	cp -rv usr/share/webapp-toolkit/extra* /usr/share/webapp-toolkit
';
}