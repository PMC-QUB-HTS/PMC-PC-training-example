
rule step1:
  input:
       'data/input.txt'
  output:
       'data/output.txt'
  shell:
       'cat {input} > {output}'
