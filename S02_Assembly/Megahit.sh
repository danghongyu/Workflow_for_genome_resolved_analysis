for R1 in *_1_paired.fastq.gz*; 
do  
    R2=${R1//_1_paired.fastq.gz/_2_paired.fastq.gz}; 
    R1unpaired=${R1//_1_paired.fastq/_1_unpaired.fastq}; 
    R2unpaired=${R2//_2_paired.fastq/_2_unpaired.fastq}; 
    directory=${R1//_1_paired.fastq.gz}; 
    megahit --presets meta-large -1 $R1 -2 $R2 -r $R1_unpaired,$R2_unpaired -o /Users/hodang/Data_sets/PCB_data/S3_Megahit_processed_files/$directory -t 10 
done
