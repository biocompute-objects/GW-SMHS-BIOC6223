Javid Ghaemmaghami 
Yuan Gao
Canyuan Yang

Further Research

The tools used in our paper, RNA-Seq Analysis of Differential Splice Junction Usage and Intron Retentions by DEXSeq, were Bowtie Alignment and TopHat for step 1, SAMtools 0.1.18 for step 2, and DEXSeq for step 3. Bowtie is a short read aligner that aligns short DNA sequences to locate exons. TopHat splits unmapped reads and aligns them independently find splice junctions (SJ). SAMtools has many functions to manipulate alignments in SAM format, specifically to index the reads in a FASTA format. DEXSeq is a differential expression platform for locating differential exon usage. In HIVE both Bowtie and TopHat are available. However for SAMtools 0.1.18 HISAT2 can be used instead and instead of DEXSeq, DESeq can be used. The only difference between DESeq and DEXSeq is that DESeq does not account for being exon specific. In CGC, Bowtie2, TopHat2, and SAMtools Index FASTA extended can all be used for RNA-seq mapping and preparation of count tables. The only difference is that Bowtie2 is faster for reads longer than 50bp. Just like HIVE, CGC does not have the DEXSeq tool but does have DESeq which can be used instead. An email has been sent to the HIVE point of contact for not having SAMtools 0.1.18 and DEXSeq. An email has also been sent to the CGC point of contact for not having the DEXSeq tool. 





References: 
1) Cancer Genomics Cloud.Ó Cancer Genomics Cloud, www.cancergenomicscloud.org/.
2) DEXSeq. Bioconductor, bioconductor.org/packages/release/bioc/html/DEXSeq.html.
3) HISAT2, ccb.jhu.edu/software/hisat2/index.shtml.
4) The Productivity Platform.Ó Hive, hive.com/.
5) SAMtools. SAMtools, samtools.sourceforge.net/.



