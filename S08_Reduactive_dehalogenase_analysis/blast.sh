export BLASTDB_LMDB_MAP_SIZE=100000000

makeblastdb -in RDase_self_align.fasta -dbtype prot -out DB/RDase_self_align

blastp -query RDase_self_align.fasta -db DB/RDase_self_align -out alignment_RDase_selfalign.txt -outfmt 6 -max_target_seqs 5 -max_hsps 2 -evalue 1e-6
