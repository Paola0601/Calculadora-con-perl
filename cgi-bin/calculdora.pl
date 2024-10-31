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
<body>
 <div class="container">
   <h1>Calculadora</h1>
   <form action="/cgi-bin/calculadora.pl" method="post">
            <label for="operacionMatematica">Ingrese la expresión matemática:</label><br>
            <input type="text" id="operacionMatematica" name="opracionMatematica" value="$operacionMatematica" required><br><br>
            <button type="submit">Calcular</button>
        </form>
HTML




