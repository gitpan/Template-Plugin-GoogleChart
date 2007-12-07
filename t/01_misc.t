#!/usr/bin/env perl

use warnings;
use strict;
use FindBin '$Bin';
use Template;
use Test::Differences;
use Test::More tests => 1;


my $template = <<EOTMPL;
[%
    FILTER null;
        USE c = GoogleChart;
        chart = c.new_chart;
        chart.type_name('type_pie_3d');
        chart.set_size(300, 300);
        chart.data_spec({
            encoding  => 'data_simple_encoding',
            max_value => 100,
            value_sets => [ [ 10, 30, 50, 70, 90 ] ],
        });
    END;
    chart.img_tag;
%]
EOTMPL


my $tt = Template->new(
    INCLUDE_PATH => "$Bin/../lib",
);

my $result;
$tt->process(\$template, {}, \$result) || die $tt->error();

1 while chomp $result;

eq_or_diff $result,
    '<IMG SRC="http://chart.apis.google.com/chart?chs=300x300&amp;chd=s:GSeq2&amp;cht=p3" />',
    'basic diagram';
