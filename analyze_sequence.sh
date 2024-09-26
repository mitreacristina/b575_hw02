#!/bin/bash
seq_count=$(grep -c "^>" sequence.fasta)
base_count=$(grep -v "^>" sequence.fasta | tr -d '\n' | wc -c)
gc_count=$(grep -v "^>" sequence.fasta | tr -d '\n' | tr -cd 'GCgc' | wc -c)
gc_percent=$(echo "scale=2; $gc_count / $base_count * 100" | bc)
echo "Number of sequences: $seq_count"
echo "Total bases: $base_count"
echo "GC content: $gc_percent%"
