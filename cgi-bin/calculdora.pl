#!/usr/bin/perl
use strict;
use warnings;
use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);

#Creamos mi objeto CGI
my $cgi=CGI->new;
my $expression= $cgi->param('operacionMatematica');

print $cgi->header;


