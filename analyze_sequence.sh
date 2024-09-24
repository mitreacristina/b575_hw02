#!/bin/bash
# Count the number of sequences seq_count=$(grep -c "^>" sequence.fasta)
# Count the total number of bases base_count=$(grep -v "^>" sequence.fasta
# Calculate GC content
gc_count=$(grep -v "^>" sequence.fasta |
gc_percent=$(echo "scale=2; $gc_count / $base_count * 100" | bc)
echo "Number of sequences: $seq_count" echo "Total bases: $base_count"
echo "GC content: $gc_percent%"
