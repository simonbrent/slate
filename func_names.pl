use strict;

my @files = qw(Controller Model View);

foreach (@files) {
  open FH, sprintf 'F:\Genoverse\js\Track\%s.js', $_;
  my @source = <FH>;
  close FH;

  chomp for @source;

  my (@funcs, @options);

  foreach my $i (0..$#source) {
    if ($source[$i] =~ /^\s*(\w+)\s*:\s*(function|\$\.noop)/) {
      my $func = $1;
      my $comment;

      if ($i && $source[$i - 1] =~ m!(^\s*[/*]+|[/*]+\s*$)!) {
        if ($source[$i - 1] =~ m|\*/| && $source[$i - 1] !~ m|/\*|) {
          for (my $j = $i - 2; $j > 0; $j--) {
            if ($source[$j] =~ m|/\*|) {
              $comment = join "\n", map $source[$_], $j..$i - 2;
              $comment =~ s/\n\s*\*/\n/g;
              warn $comment;
              last;
            }
          }
        } else {
          $comment = $source[$i - 1];
        }
      }

      push @funcs, [ $func, $comment || () ];
    } elsif ($source[$i] =~ /^  (\w+)\s*:([^,]+),\s*(.*)/) {
      push @options, [ $1, $2, $3 ];
    }
  }

  open FH, sprintf '>F:\slate\source\includes\track\%s\_functions.md', lc;
  print FH "# Genoverse.Track.$_ functions\n\n";

  foreach (@funcs) {
    print FH "## $_->[0]\n";

    if ($_->[1]) {
      $_->[1] =~ s!(^\s*[/*]+|[/*]+\s*$)!!g;
      print FH "$_->[1]\n\n";
    }
  }

  close FH;

  open FH, sprintf '>F:\slate\source\includes\track\%s\_options.md', lc;
  print FH "# Genoverse.Track.$_ options\n\n";

  foreach (@options) {
    print  FH "## $_->[0]\n\n";

    if ($_->[2]) {
      $_->[2] =~ s!(^\s*[/*]+|[/*]+\s*$)!!g;
      print FH "$_->[2]\n\n";
    }

    print  FH "Default: `$_->[1]`\n\n";
  }

  close FH;
}