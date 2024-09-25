#!/bin/bash

# Count the number of sequences in the file
seq_count=$(grep -c "^>" sequence.fasta)

# Count the total number of bases (excluding the header)
base_count=$(grep -v "^>" sequence.fasta | tr -d '\n' | wc -c)

# Calculate the GC content (count of G and C nucleotides)
gc_count=$(grep -v "^>" sequence.fasta | tr -d '\n' | tr -cd 'GCgc' | wc -c)
gc_percent=$(echo "scale=2; $gc_count / $base_count * 100" | bc)

# Output the results
echo "Number of sequences: $seq_count"
echo "Total bases: $base_count"
echo "GC content: $gc_percent%"

