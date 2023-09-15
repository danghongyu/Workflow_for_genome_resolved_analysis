The bin quality was evaluated by checkM first. To refine the low quality bins, Anvi'o is used.

  Installation and usage of checkM can be found: https://github.com/Ecogenomics/CheckM/wiki  
  Installation and usage of Anvi'o can be found: https://anvio.org/

The processes for Anvi'o refining are as follows:

1. The contig for binning will be used to create a Anvi'o contig database
2. The *.bam file will be used to create the Anvi'o profile database
3. The bins information will be import to the contig database together with the profile database

Example for above Anvi'o processes can be found:  
  https://merenlab.org/2016/06/22/anvio-tutorial-v2/    
  https://merenlab.org/2015/05/11/anvi-refine/

Below is an example for a low quality bin from SRR15035645 failed to refine. The three clusters in the this bin have low completion and high contamination.
![image](https://github.com/danghongyu/Workflow_for_genome_resolved_analysis/assets/77089121/a850eead-5a68-441e-9ec0-d55acbffba7f)

Below is an example for a low quality bin (bin_40) from SRR15035645 refined to generated two new bins (bin_40_R1, bin_40_R2)
![image](https://github.com/danghongyu/Workflow_for_genome_resolved_analysis/assets/77089121/897b850a-5b2c-4469-84c1-1939ac61e802)