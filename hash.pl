#!/usr/bin/perl
use strict;
use warnings;

# BLOOOOOP
my %people;
my %gifts;
my @Abigail;
my @Alex;
my @Haley;
my @Caroline;

@Abigail = qw/Amethyst Blackberry_Cobbler Chocolate_Cake Pufferfish Pumpkin Spicy_Eel/;
@Alex = qw/Complete_Breakfast Salmon_Dinner/;
@Haley = qw /Coconut Fruit_Salad Pink_Cake Sunflower/;
@Caroline = qw /Fish_Taco Summer_Spangle/;

%people = (
    Abigail => \@Abigail, 
    Alex => \@Alex,
    Haley => \@Haley,
    Caroline => \@Caroline
);

%gifts = reverse %people;

print "Abigail loves ", $people{Abigail}[1], " \n";

# $where will return just the hash value
# %where will return the hash key and value
#print "Jin is a ", $where{Jin}, "\n";
#print keys %where;
for (keys %people){
    print "$_ is a $people{$_} \n"
}

 
my %grades;
$grades{"Foo Bar"}{Mathematics}   = 97;
$grades{"Foo Bar"}{Literature}    = 67;
$grades{"Peti Bar"}{Literature}   = 88;
$grades{"Peti Bar"}{Mathematics}  = 82;
$grades{"Peti Bar"}{Art}          = 99;

for (keys %grades){
    print "$_ is a $grades{$_} \n"
}

foreach my $name (sort keys %grades){
    foreach my $subject (keys %{ $grades{$name} }){
        print "$name, $subject: $grades{$name}{$subject} \n";
    }
}
