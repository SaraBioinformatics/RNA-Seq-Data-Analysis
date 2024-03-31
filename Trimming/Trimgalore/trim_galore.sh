#####trim_galore use only for paired end reads
##example
USAGE: trim_galore [options] <filename(s)> option== --stringency 13 -q 30 --paired , --gzip
trim_galore --stringency 13 -q 30 --paired --gzip SRR3309279_1.fastq.gz SRR3309279_2.fastq.gz -o trim_galore(single reads)
cat rr | while read i; do cd $i ; trim_galore --stringency 13 -q 30 --paired *1.fastq.gz *2.fastq.gz -o trim_galore\_$i ;cd .. ; done(all reads)
trim file run in fastq for check adapter remove or not
catr rr |while read i; do cd $i ; fastqc *.gz ; cd .. ; done( create html files of raw reads(quality control
for trimimng reads))
