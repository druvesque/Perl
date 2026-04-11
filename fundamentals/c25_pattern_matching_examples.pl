#!/usr/bin/perl -w 

$var = "Capable";
if ($var =~ m/able/) {
    print "match!\n";
} 
else { # SHOULD NEVER HAPPEN
    print "no match!\n"; 
}

$pat = "aba";
if ($pat =~ m/a(a|b|c)a/) {
    print "match!\n";
}
else { # SHOULD NEVER HAPPEN
    print "no match!\n";
}

$str = "acacb\nc";
if ($str =~ m/a.b/) {
    print "match!\n";
}
else {
    print "no match!\n";
}

$str = "a\nb\nc"; # . matches only one character
if ($str =~ m/a.b/) {
    print "match!\n";
}
else {
    print "no match!\n";
}

$str = "a\nb\nc";
if ($str =~ m/a.b/s) { # /s along with . match one char
    print "match!\n";
}
else {
    print "no match!\n";
}

$str = "a\nb\nc";
if ($str =~ m/^a$/) {
    print "match!\n";
}
else {
    print "no match!\n";
}

$str = "a\nb\nc";
if ($str =~ m/^a$/m) {
    print "match!\n";
}
else {
    print "no match!\n";
}
