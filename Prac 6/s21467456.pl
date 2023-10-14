#!/usr/bin/perl -w
use warnings;
use strict;

my $numArgs = $#ARGV + 1;

if ($numArgs != 1) {
    print "\nInvalid number of arguments\n";
    exit;
}

my $filename = $ARGV[0];
my @input = ();

open(my $fh, '<', $filename)
    or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
    chomp $row;
    push @input, $row;
}

close $fh;

my @surnames = ();
my @student_numbers = ();

while (my $row = shift @input) {
    my @names = split /,/, $row;
    push @student_numbers, $names[0];
    @names = split / /, $names[1];
    my $surname = pop @names;
    push @surnames, $surname;
}

# find the longest surname
# if there are multiple surnames of the same length, the longest is the one alphabetically first
my $longest_index = 0;

for my $i (0 .. $#surnames) {
    if (length($surnames[$i]) > length($surnames[$longest_index])) {
        $longest_index = $i;
    }
    elsif (length($surnames[$i]) == length($surnames[$longest_index])) {
        if ($surnames[$i] lt $surnames[$longest_index]) {
            $longest_index = $i;
        }
    }
}

print "Longest surname: $student_numbers[$longest_index]\n";