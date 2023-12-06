#!/usr/bin/perl
use strict;
use warnings;

#print "Hello, World!\n";

print "Podaj liczbe 1: ";
my $liczba1 = <STDIN>;
chomp $liczba1;

print "Podaj liczbe 2: ";
my $liczba2 = <STDIN>;
chomp $liczba2;

my $suma = $liczba1 + $liczba2;
print "Suma: $suma \n";

my $roznica = $liczba1 - $liczba2;
print "Roznica: $roznica \n";

my $iloczyn = $liczba1 * $liczba2;
print "Suma: $suma \n";

my $iloraz = 0;
if ($liczba2 ne 0) {
    $iloraz = $liczba1 / $liczba2; }
else {
    $roznica = "inf";
}

print "Roznica: $roznica";