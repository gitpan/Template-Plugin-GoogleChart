package Template::Plugin::GoogleChart;

use strict;
use warnings;
use Google::Chart;


our $VERSION = '0.01';


use base qw(Template::Plugin);


sub new_chart { Google::Chart->new }


1;


__END__



=head1 NAME

Template::Plugin::GoogleChart - Using Google::Chart as a template plugin

=head1 SYNOPSIS

    [% USE c = GoogleChart %]
    [% chart = c.new_chart %]
    [% ... set up chart ... %]
    [% chart.img_tag %]

=head1 DESCRIPTION

=head1 METHODS

=over 4

=item new_chart

Returns a new L<Google::Chart> object. See its documentation for how to use
the chart object. You will probably want to write out the URL with the chart
object's C<get_url()> method or write out the C<IMG> tag with C<img_tag()> as
shown in the synopsis.

=back

Template::Plugin::GoogleChart inherits from L<Template::Plugin>.

The superclass L<Template::Plugin> defines these methods and functions:

    new(), OLD_AUTOLOAD(), fail(), load(), old_new()

The superclass L<Template::Base> defines these methods and functions:

    DEBUG(), _init(), debug(), error(), module_version()

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<templateplugingooglechart> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Template::Plugin::GoogleChart>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-template-plugin-googlechart@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

