##Binning
The assembled contig from Megahit need to be mapped to get the sequecing depth information before binning.

Here Bowtie 2 is used for mapping, Samtools is used to tranform the *.sam file from Bowtie 2 to indexed and sorted *.bam file.
Finally MetaBAT 2 is used for binning.

Installation and usage of Bowtie 2 can be found: https://bowtie-bio.sourceforge.net/bowtie2/index.shtml

Installation and usage of Samtools can be found: https://www.htslib.org/

Installation and usage of MetaBAT 2 can be found: https://bitbucket.org/berkeleylab/metabat/src/master/

The path to the files should be changed to your own when applying the code.
