
rule step1:
  input:
       'data/input.txt'
  output:
       'data/output.txt'
  shell:
       'cat {input} > {output}'
rule step2:
  input:
       'data/output.txt'
  output:
       'data/output2.txt'
  shell:
       'head -n1 {input} > {output}'
