for file in SRR15035645 SRR15035646 SRR15035647 SRR15035648; do
        (cd "$file";
         checkm lineage_wf -t 20 -x fa anvio_output/final.contigs_fixed.fa.metabat* anvio_output/checkM_output
        )
done
