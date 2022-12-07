
reads=['R1','R2']

rule all:
  input:
    'output1/sample1_R1_fastqc.html',
    'output1/sample1_R2_fastqc.html' 

rule runFastQC:
  input:
    expand('data/sample1_{read}.fastq.gz', read=reads)
  output:
    expand('output1/sample1_{read}_fastqc.html', read=reads)
  shell:
    'singularity run fastqc_v0.11.9_cv8.sif fastqc --outdir output1 {input}'
