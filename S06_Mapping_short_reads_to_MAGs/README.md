## Mapping the metagenomic and metatranscirptomic reads to the MAGs, and building the phylogenetic tree
CoverM is used to map the short metagenomic reads to the MAGs to get the RPKM value, MAG coverage fraction.

kallisto is used to map the short metatransciptomic reads to the genes on the MAGs.

The 'marker sequences' of all MAGs were aligned using Clustal Omega.

phylogenetic tree of the MAGs was built using iqtree.

Installation and usage of CoverM can be found: https://github.com/wwood/CoverM

Installation and usage of kallisto can be found: https://pachterlab.github.io/kallisto/

Installation and usage of Clustal Omega can be found: http://www.clustal.org/omega/

Installation and usage of iqtree can be found: http://www.iqtree.org/
