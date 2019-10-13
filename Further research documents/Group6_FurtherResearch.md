For our publication, step 1 used STAR 2.5.2, which was used to align to paired end fastq files to the GRCh38 genome. STAR was found on CGC but not HIVE, although HIVE had HISAT2 RNA alignment, which is similar. Step 2 used Cufflinks 2.2.1 for quantification of the mapped reads and was found on CGC but not HIVE, and I did not find anything similar on HIVE. Step 3 used featureCounts 1.6.1 which produced gene read counts in FPKM, and was not on CGC or HIVE. CGC had HTseq count 0.6.1 which was similar, but nothing similar on HIVE. Step 4 used DESeq2 to perform differential expression analysis, and was on both CGC and HIVE. I have sent emails to the CGC and HIVE team about the tools that were not on these platforms.
