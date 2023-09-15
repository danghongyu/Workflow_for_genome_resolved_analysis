anvi-gen-contigs-database -f anvio_output/final.contigs_fixed.fa -o anvio_output/SRR15035645_contigs.db -n 'SRR15035645' -T 20

for file in anvio_contigs_mapping/*_sort.bam
do 
    PF=${file//_sort.bam/_PF}
    anvi-profile -i "${file}" -c SRR15035645_contigs.db -T 20 -o anvio_contigs_profile/$PF
done 

anvi-merge anvio_contigs_profile/*/PROFILE.db -o 04_anvio_contigs_merged -c SRR15035645_contigs.db

anvi-import-collection final.contigs_fixed.fa.metabat-bins_map1/external_bins.txt \
                       -c SRR15035645_contigs.db \
                       -p 04_anvio_contigs_merged/PROFILE.db \
                       -C external_map1 \
                       --contigs-mode

anvi-summarize -p 04_anvio_contigs_merged/PROFILE.db -c SRR15035645_contigs.db -C external_map1 -o MERGED_SUMMARY_manual_map1_binning

anvi-refine -p MERGED_PROFILE/PROFILE.db -c SRR15035645_contigs.db -C external_map1 -b bin_131

# based on the contamination and completeness determined by CheckM and Anvi'o, the the low quality bin (bin_131) was refined

mv PROFILE.db Refine_PROFILE.db

anvi-summarize -p 04_anvio_contigs_merged/Refine_PROFILE.db -c SRR15035645_contigs.db -C external_map1 -o MERGED_SUMMARY_refine_manual_map1_binning
