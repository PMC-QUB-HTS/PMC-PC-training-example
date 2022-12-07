
reads=['R1','R2']

rule all:
  input:
    'output/sample1_R1_fastqc.html',
    'output/sample1_R2_fastqc.html' 

rule runFastQC:
  input:
    'data/sample1_{reads}.fastq.gz'
  output:
    'output/sample1_{reads}_fastqc.html'
  shell:
    'singularity run fastqc_v0.11.9_cv8.sif fastqc --outdir output {input}'
