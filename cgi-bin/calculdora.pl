#!/usr/bin/perl
use strict;
use warnings;
use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);

#Creamos mi objeto CGI
my $cgi=CGI->new;
my $expression= $cgi->param('operacionMatematica');

print $cgi->header;

print <<HTML;

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width-device-width, initial-scale=1.0">
  <title>Calculadora con perl</title>
  <link rel="stylesheet" href="../css/styles.css">
  
</head>


HTML




