for dir in ./*/; do
        (cd "$dir";
        ID=$(basename "$dir");
        samtools sort bowtie_mapping/"${ID}.sam" -@ 20 -o bowtie_mapping/"${ID}.sorted.bam";
        )
done
