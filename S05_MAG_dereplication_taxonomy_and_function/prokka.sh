for f in bins_combine_derep/*.fa; 
do
    prokka --cpus 20 --outdir bins_combine_derep/prokka_output/"$(basename "$f")"_genome --prefix "$(basename "$f")" bins_combine_derep/"$(basename "$f")"; 
done
