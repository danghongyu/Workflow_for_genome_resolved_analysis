for R1 in *_1*; 
do  
    R2=${R1//_1.fastq.gz/_2.fastq.gz}; 
    R1paired=${R1//.fastq/_paired.fastq}; 
    R1unpaired=${R1//.fastq/_unpaired.fastq};
    R2paired=${R2//.fastq/_paired.fastq}; 
    R2unpaired=${R2//.fastq/_unpaired.fastq}; 
    
    trimmomatic PE -phred33 $R1 $R2 /Users/hodang/Data_sets/PCB_data/Trimmomatic_processed_files/$R1paired /Users/hodang/Data_sets/PCB_data/Trimmomatic_processed_files/$R1unpaired /Users/hodang/Data_sets/PCB_data/Trimmomatic_processed_files/$R2paired /Users/hodang/Data_sets/PCB_data/Trimmomatic_processed_files/$R2unpaired ILLUMINACLIP:/Users/hodang/Tools/miniconda3/envs/trimmomatic/share/trimmomatic/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; 
done
