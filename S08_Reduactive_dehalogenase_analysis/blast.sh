export BLASTDB_LMDB_MAP_SIZE=100000000

makeblastdb -in all_site_RDase.fasta -dbtype nucl -out Rase_PCB_site

blastn -query all_site_RDase.fasta -db Rase_PCB_site -out alignment.txt
