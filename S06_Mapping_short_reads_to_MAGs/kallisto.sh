kallisto index -i /Users/hodang/Data_sets/PCB_data/S9_MAG_processing/combined_ffn_for_kallisto/combined_derep_ffn.idx /Users/hodang/Data_sets/PCB_data/S9_MAG_processing/combined_ffn_for_kallisto/combined_derep.ffn

for file in SRR18292893 SRR18292894 SRR18292895 SRR18292896 SRR18292897 SRR18292898 SRR18292899 SRR18292900 SRR15035645 SRR15035646 SRR15035647 SRR15035648; do
    (kallisto quant -i /Users/hodang/Data_sets/PCB_data/S9_MAG_processing/combined_ffn_for_kallisto/combined_derep_ffn.idx -o /Users/hodang/Data_sets/PCB_data/S9_MAG_processing/combined_ffn_for_kallisto/combined_derep_quant/$file -b 100 "${file}_1_combine.fastq.gz" "${file}_2_combine.fastq.gz" -t 20
);
done
