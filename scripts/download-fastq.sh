#!/bin/bash

set -euo pipefail

#Working directories and output locations
FASTQ_R1=subset-SRR11518889_1.fastq.gz
FASTQ_URL=https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset

#Study ID
STUDY_ID="SRP255885"

#Location for file save
OUTDIR=../data/raw/fastq/${STUDY_ID}

#create output directory
mkdir -p ${OUTDIR}

#Pull R1 subsetted file
echo "Retrieving file ${FASTQ_R1}"
curl -O ${FASTQ_URL}/${FASTQ_R1} 

echo "How many lines?"
gunzip -c ${FASTQ_R1} | wc -l 

#Move file to final destination
mv ${FASTQ_R1} ${OUTDIR}
