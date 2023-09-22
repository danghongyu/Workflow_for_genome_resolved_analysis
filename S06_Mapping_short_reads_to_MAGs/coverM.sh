for file in SRR15035645 SRR15035646 SRR15035647 SRR15035648; do
    (coverm genome --coupled "${file}_1_combine.fastq.gz" "${file}_2_combine.fastq.gz" -t 20 --genome-fasta-directory /Users/hodang/Data_sets/PCB_data/S9_MAG_processing/bins_combine_derep -x fa -m relative_abundance covered_fraction count reads_per_base rpkm --min-covered-fraction 0);
done
