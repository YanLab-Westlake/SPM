#!/bin/bash

test_seq_1=EMCALSREGAGMKIAL
test_result_1=Q8BND3

test_seq_2=LAQRETSLKEVELQSAM
test_result_2=Q80X59

test_seq_3=KLQSTQAKESYTP
test_result_3=A0A338P695

# Test 1
echo "Test 1: $test_seq_1"
# Running peptidesearch_for_release.py
python scripts/peptidesearch_for_release.py -q $test_seq_1 -d data/uniprot.fasta -o tests/test1.txt
if [ $? -ne 0 ]
then
    echo "Test 1 failed."
    exit 1
fi

if grep -Fxq $test_result_1 output/test1_ranked.txt
then
    echo "Test 1 passed."
else
    echo "Test 1 failed."
    exit 1
fi


# Test 2
echo "Test 2: $test_seq_2"
# Running peptidesearch_for_release.py
python scripts/peptidesearch_for_release.py -q $test_seq_2 -d data/uniprot.fasta -o tests/test2.txt
if [ $? -ne 0 ]
then
    echo "Test 2 failed."
    exit 1
fi

if grep -Fxq $test_result_2 output/test2_ranked.txt
then
    echo "Test 2 passed."
else
    echo "Test 2 failed."
    exit 1
fi


# Test 3
echo "Test 3: $test_seq_3"
# Running peptidesearch_for_release.py
python scripts/peptidesearch_for_release.py -q $test_seq_3 -d data/uniprot.fasta -o tests/test3.txt
if [ $? -ne 0 ]
then
    echo "Test 3 failed."
    exit 1
fi

if grep -Fxq $test_result_3 output/test3_ranked.txt
then
    echo "Test 3 passed."
else
    echo "Test 3 failed."
    exit 1
fi

