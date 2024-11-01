#!/usr/bin/perl
use strict;
use warnings;
use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);

#Creamos mi objeto CGI
my $cgi = CGI->new;
my $operacionMatematica= $cgi->param('operacionMatematica');

print $cgi->header;

print <<HTML;

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width-device-width, initial-scale=1.0">
  <title>Calculadora con perl</title>
  <link rel="stylesheet" href="../css/estilo.css">
  
</head>
<body>
     <h1>Hola soy Paola Adamari , bienvenido a mi calculadora</h1>
    <div class="contenedor">
    <h1>Calculadora</h1>
    <form action="/cgi-bin/calculadora.pl" method="post">
            <label for="operacionMatematica">Ingrese la expresion matematica:</label><br>
            <input type="text" id="operacionMatematica" name="operacionMatematica" value="$operacionMatematica" required><br><br>
            <button type="submit">Calcular</button>
    </form>
HTML

if (defined $operacionMatematica) {
    
    if ($operacionMatematica =~ /^[0-9+\-*\/\(\)\.\s\*\*sqrt]+$/) {
       
        my $result = eval($operacionMatematica);
        if ($@) {
            print "<p>Error en la operacion matematica . Intenta de nuevo.</p>";
        } else {
            print "<p>El resultado de $operacionMatematica es: $result</p>";
        }
    } else {
        print "<p> Expresión no válida. Solo se permiten números y operadores básicos.</p>";
    }
}

print <<HTML;
        <a href="/index.html">Calcular nueva expresion</a>
    </div>
</body>
</html>
HTML
