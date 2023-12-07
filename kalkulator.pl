#!/usr/bin/perl
use strict;
use warnings;

my @dozwolone_znaki = qw(+ - * /);

if (@ARGV ne 3 && $ARGV[0] =~ /^\d+$/ && $ARGV[2] =~ /^\d+$/) {
    die "Zle dane wejsciowe";
}

my ($liczba1, $operator, $liczba2) = @ARGV;


if (!grep { $_ eq $operator} @dozwolone_znaki ) {
    print "Podaj operator: ";
    $operator = <STDIN>;
    chomp $operator;
}

if ($operator eq '+') {
    print "Suma: " . ($liczba1 + $liczba2) . "\n";
} elsif ($operator eq '-') {
    print "Roznica: " . ($liczba1 - $liczba2) . "\n";
} elsif ($operator eq '*') {
    print "Iloczyn: " . ($liczba1 * $liczba2) . "\n";   
} elsif ($operator eq '/' && $liczba2 ne 0) { 
    print "Iloraz: " . ($liczba1 / $liczba2) . "\n"; 
} else {
    die "Nieznany operator";
}