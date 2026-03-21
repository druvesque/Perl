#!/usr/bin/perl -w 

@colors = ("red", "orange", "green", "blue");
$, = " "; # IFS (Internal Field Seperator)
print @colors;
print "\n";
print $colors[0] . "\n";
print $colors[1] . "\n";
print $colors[2] . "\n";
print $colors[3] . "\n";

@nullarray = ();
@unix = ("FreeBSD", "Linux");
@os = ("MacOS", ("Windows NT", "Windows ME"), @unix);
print @os;

