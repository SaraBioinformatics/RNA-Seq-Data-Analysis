#########  ENA  #########(DATA DOWNLOAD)            ------(fastq.gz) format

####      fastQC         (CHECK QUALITY CONTROL)    ------(html)     format

###      trimgalore      (TREAMED RAW READS)         -----(fastq.gz) format

###      fastQC          (again check quality control)   -------(html) format

trim_galore --stringency 13 -q 30 --paired --gzip SRR6433218_1.fastq.gz  SRR6433218_2.fastq.gz -o trim_galore20
Command Line
Usage:
#####      bowtie2        (MAPPING)                  ------(SAM) File format

bowtie2-build [options]* <reference_in> <bt2_base>
  bowtie2-build -f GRCh38_latest_genomic.fna.gz bt2_base
 bowtie2 -x bt2_base -1 SRR6433218_1.fastq.gz -2 SRR6433218_2.fastq.gz -S SRR6433218.sam

 bowtie2 -x bt2_base -1 SRR6433222_1.fastq.gz -2 SRR6433222_2.fastq.gz -S SRR6433222.sam
 bowtie2 -x bt2_base -1 SRR6433221_1.fastq.gz -2 SRR6433221_2.fastq.gz -S SRR6433221.sam
 
 ######    samtools       (SAM TO BAM) , (1 SAM TO BAM 2. SORTING 3. MARK DUPLICATE 4. MERGED) ----- (BAM) 
    
 samtools view -S -b sample.sam > sample.bam
samtools sort sample.bam -o sample.sorted.bam(sort bam file)
samtools sort SRR6433221.bam -o SRR6433221_sorted.bam
samtools markdup positionsort.bam markdup.bam
samtools markdup SRR64332218_sorted.bam  markdup18.bam
samtools merge all.bam *.bam
###       featureCounts             (gene quantification)     -------(csv or txt)  gene_cont file

featureCounts" "-a" "Homo_sapiens.GRCh38.106.gtf" "-o" "gene_count" "markdup18.bam" "markdup19.bam" "markdup20.bam" "markdup21.bam" "markdup22.bam"
#####
 featureCounts -a Homo_sapiens.GRCh38.106.gtf -o count.out -T 8  *.bam
