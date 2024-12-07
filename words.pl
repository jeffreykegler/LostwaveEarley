use 5.010;

my @words = ();
while (my $line = <>) {
   chomp $line;
   push @words, split(/[:\/ \t,.{}()\[\]]+/, $line);
}
WORD: for my $word (@words) {
   $word =~ s/[^0-9a-zA-Z_-]*$//;
   $word =~ s/^[^0-9a-zA-Z_-]*//;
   next WORD unless $word;
   say $word;
}
