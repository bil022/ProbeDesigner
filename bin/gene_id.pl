#!/usr/bin/perl

$fa=1;
while (<>) {
  if (/^>/) {
    die $_ unless /gene=(\S+)/; $gid=$1;
  } elsif (/^@/) {
    die $_ unless /gene=(\S+)/; $gid=$1; $fa=0;
  } else {
    @data=split();
    if ($fa) {
      die "N/A";
      die $_ unless @data==6;
      ($n, $off, $seq, $tail, $GC, $offtgt)=@data;
      print "$gid\t$seq\t$GC\t$offtgt\n";
    } else {
      die $_ unless @data==7;
      ($n, $off, $seq, $tail, $GC, $offtgt, $qual)=@data;
      print "$gid\t$seq\t$GC\t$offtgt\t$qual\n";
    }
  }
}
__END__
>NM_001113347 gene=ECE1 CDS=257-2530 loc:chr1|21217247-21279690|- exons:21217247-21220131,21221747-21221842,21225250-21225440,21227159-21227226,21227931-21228041,21233558-21233661,21235850-21235927,21236746-21236844,21238134-21238244,21244989-21245103,21247221-21247363,21255947-21256138,21257525-21257590,21258693-21258839,21260271-21260392,21272699-21272911,21279191-21279690 segs:1-500,501-713,714-835,836-982,983-1048,1049-1240,1241-1383,1384-1498,1499-1609,1610-1708,1709-1786,1787-1890,1891-2001,2002-2069,2070-2260,2261-2356,2357-5241
1	5159	GCGTGGACGTGGGGTTGGGAGCTGGGAATC	C	19	0
2	5139	GGGCTGGCTTCTCTGTGGGTGCGTGGACGT	T	19	0
3	5118	CCTTAGGCCTGGGGAGCCATAGGGCTGGCT	T	19	0
4	5028	GAAGAGGGCTCAGGCCCAGCAGGGGTGGAA	A	19	0
5	4979	GACCACACTCATGGCTCAGGTCTGCCGGGG	G	19	0
6	4957	GGGTGCAGCCCGAGGGAATGGAGACCACAC	C	19	0
7	4931	GACACAGGCAGGTGTCCTAGGGCTGGGGGT	T	19	0
8	4908	CATGGGCTTGGACCCCCTCCCTGGACACAG	G	19	0
9	4867	CCGCGTGGAGGGTGGTGGTCCTGTAGTGTC	C	19	0