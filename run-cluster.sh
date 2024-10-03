DIR="./data/mmseqs-out"

if [ -d "$DIR" ]; then
    rm -rf "$DIR"/*
else
    mkdir "$DIR"
fi

./mmseqs/bin/mmseqs easy-cluster ./data/sabdab_cdr_seqs.fasta clusterRes tmp --min-seq-id 0.7 -c 0.8 
mv clusterRes_all_seqs.fasta $DIR
mv clusterRes_cluster.tsv $DIR
mv clusterRes_rep_seq.fasta $DIR