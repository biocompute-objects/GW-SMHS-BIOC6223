{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf500
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl320\partightenfactor0

\f0\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Our pipeline has 6 steps, which used 6 different tools. In step 1, the pipeline uses CellMiner. The purpose of this tool is to identify expression levels of transcript encoding elements from the piRNA biogenesis pathways in 
\fs26\fsmilli13333 breast cancer cells. This tool is not found in HIVE, however the DESeq tool could analyze transcription expression. This tool is not found in CGC, however the DESeq tool is also found in CGC and could analyze transcription expression. Step 2 uses a tool called iMir, which is meant to identify the sncRNA families. This tool is not found in CGC, however the QuagmiR too could analyze small non-coding RNA families. Step 3 uses DESeq bioconductor package. DESeq runs \cb3 differential expression analysis of piRNA and Biclustering and Principal Component Analysis (PCA) of sncRNA expression profiles. This tool is found in both HIVE and CGC. Step 4 uses \cb1 IntercesBed tool to identify genomic piRNA loci within repeat regions. This tool is not found in HIVE, however, it is found in CGC. Step 5 uses a tool called MiRanda \cb3 to identify piRNA target RNAs by sequence complementarity techniques. \cb1 This tool is not found in HIVE or CGC, 
\fs28 however there is a similar tool called Alignment comparator in HIVE, and one called 
\fs26\fsmilli13333 RNA-seq Differential Expression in CGC. }
