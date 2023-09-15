for dir in SRR15035645 SRR15035646 SRR15035647 SRR15035648; do
        (cd "$dir";
        mkdir bowtie_mapping;
        bowtie2-build final.contigs.fa bowtie_mapping/contigs;
        ID=$(basename "$dir");
        bowtie2 -p 20 -x bowtie_mapping/contigs -1 /Users/hodang/Data_sets/PCB_data/S2_Trimmomatic_processed_files/"${ID}_1_paired.fastq.gz" -2 /Users/hodang/Data_sets/PCB_data/S2_Trimmomatic_processed_files/"${ID}_2_paired.fastq.gz" -U /Users/hodang/Data_sets/PCB_data/S2_Trimmomatic_processed_files/"${ID}_1_unpaired.fastq.gz" -U /Users/hodang/Data_sets/PCB_data/S2_Trimmomatic_processed_files/"${ID}_2_unpaired.fastq.gz" -S bowtie_mapping/"${ID}.sam";
        )
done

