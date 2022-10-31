### SPM
### Introduction
This python scripts for Sequence Pattern Matching (SPM) alignment was written by WuLab & YanLab, School of Life Science, Westlake University.

It can help you search target protein sequence with your input peptides sequence from your given sequence database. 

Input are a peptide sequence and a protein sequence database for searching. Output is a ranking protein list, each with a score and matching postion.
 
The most possible searching candidate is at the top of the output file with the lowest score. 

### Usage

# 1. Clone this repository into local

```bash
git clone https://github.com/YanLab-Westlake/SPM.git
```

# 2. Running the test example (optional)
```bash
cd SPM-main
bash test/SPM_test.sh
```

# 3. Running the search with your own data
```bash
python scripts/SequencePatternMatching.py -q {One-Letter-Sequence} -d {Search-Sequence-Library} -o {Output_name}
```

### Cite us
If you use this software, please cite the following paper:

