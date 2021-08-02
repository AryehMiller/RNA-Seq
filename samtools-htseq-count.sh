for i in $(ls -1 /scratch1/fs1/kolsen/aryehmiller/paspalum/testing/*.bam | sed 's/.bam//')
do
                samtools sort -@ 8 -n /scratch1/fs1/kolsen/aryehmiller/paspalum/testing/${1}_R.bam | htseq-count -f bam --idattr=Parent --stranded=no - /scratch1/fs1/kolsen/aryehmiller/paspalum/genome_files/Pvaginatumv3.1.gene.gff3 > ${1}_all_count.txt
done
