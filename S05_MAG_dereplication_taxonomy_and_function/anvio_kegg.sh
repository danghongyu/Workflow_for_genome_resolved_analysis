for file in *.fa
do
    ID=${file%.fa}
    anvi-gen-contigs-database -f $file -o anvio_bins_db/"${ID}.db" -n $ID -T 20
done

for file in anvio_bins_db/*.db
do
    anvi-run-kegg-kofams -c $file -T 20
done

anvi-estimate-metabolism -e anvio_bins_db/KEGG_completeness_1/external-genomes.txt \
                         -O anvio_bins_db/KEGG_completeness_1/All_bins \
                         --module-completion-threshold 1 \
                         --matrix-format
