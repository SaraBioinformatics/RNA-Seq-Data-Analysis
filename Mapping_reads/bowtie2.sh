#######install bowtie2 ############
##open terminal 
sudo apt-get install bowtie2 
######bowtie2-build indexer
bowtie2-build [options]* <reference_in> <bt2_base>
bowtie2-build -f GRCh38_latest_genomic.fna.gz  bt2_base 
##bowtie2-build [options]* <reference_in> <bt2_base> (option= -fThe reference input files
########output create 6 files
##bt2_base.1.bt2 , bt2_base.2.bt2 ,  bt2_base.3.bt2 ,  bt2_base.4.bt2 , bt2_base.rev.1.bt2 , bt2_base.rev.2.bt2

###### -f option  The reference input files (specified as <reference_in>) are FASTA files (usually having extension .fa, .mfa, .fna or similar).
##uses
bowtie2 [options]* -x <bt2-idx> {-1 <m1> -2 <m2> | -U <r> | --interleaved <i> | --sra-acc <acc> | b <bam>} -S [<sam>]
####-x <bt2-idx>The basename of the index for the reference genome. The basename is the name of any of the index files up to but not including the final .1.bt2 / .rev.1.bt2 / etc. bowtie2 looks for the specified index first in the current directory, then in the directory specified in the BOWTIE2_INDEXES environment variable.
####for single end reads
bowtie2 -x bt2_base -U output48.fq.gz -S out48.sam --no-unal

bowtie2 -x bt2_base -U output48.fq.gz -S out48.sam --no-unal
#####paired end  example
bowtie2 -x bt2_base -1 SRR3309279_2_val_2.fq.gz -2 SRR3309279_1_val_1.fq.gz -S trim_galore_SRR3309279.sam
