# Further Research Group 5






























------------------------------------------------------------------------------------------------------

# Notes
HIVE Portion    
TOOLs: TopHat and Bowtie 1    
    TopHat uses the bowtie tool to look at unmapped reads and align them according to splicing junctions.
    These tools are found in HIVE as third-party tools. HIVE has them integrated in the HIVE-hexagon tool, which is used for sequence alignments on HIVE.    
TOOL: UCSC Genome browser table.
    This tool can be used to access a reference genome to map exome reads to their parent gene within the genome.
    This tool is not in HIVE, there is an alternative aligner tool called HISAT2 in HIVE-Hexagon, that allows for mapping of reads to the whole genome.
TOOL: R Script
    The purpose of assembling grid graphics using the R script is to combine, arrange, and create a variety of graphical elements and can be used to select desired genes for graphic visualization such as a heatmap.
    HIVE enables developing in R script, but this feature was not clearly defined in CGC. 
TOOL: Bioconductor Rankprod     
    This tool is used for differential gene expression analysis.
       This tool is not in HIVE, but there is an alternatie tool called BioXpress for DESeq within HIVE.  
TOOL: Gene Ontology Biological Process(GO_BP)   
    This tool contains controlled vocabulary for classification of gene function and is used to perfom enrichment analysis for an independent biological process with a defined beginning and end.    
    This tool is not in HIVE, there is no alternative in HIVE.      
TOOL: Gene Ontology Cellular Component (GO_CC)    
    This tool contains controlled vocabulary for the classification of gene functions, and is used to perfom enrichment analysis for a cellular structure.    
    This tool is not in HIVE, there is no alternative in HIVE.      
TOOL: KEGGpathway   
    This tool is an integrated database used for biological interpretation of genome sequences and other high-throughput data.    
    This tool is not in HIVE, there is no alternative in HIVE.
    
    
    
CGC Portion
TOOLS: TopHat and Bowtie1
TopHat uses the Bowtie tool to look at unmapped reads and align them according to splicing junctions.  
These tools are found as public apps in the CGC. 

TOOL: UCSC Genome browser table
This tool provided alignment comparisons to already provided genes within the genome browser table.
This tool was not found in CGC, but there is a close alternative in called HISAT2, which enables mapping genes to a reference genomes (in our case a mouse genome)

TOOL: R Script
The purpose of assembling grid graphics using the R script is to combine, arrange, and create a variety of graphical elements and can be used to select desired genes for graphic visualization such as a heatmap.
There are other tools on CGC, which provide heatmaps and other graphical elements as output, such as RNA-Seq De Novo Assembly and Analysis - Trinity 2.4.0

TOOL: Bioconductor Rankprod     
This tool is used for differential gene expression analysis.
This tool is not in CGC, but alternate tools are Ballgown and Cuffdiff.  

TOOL: Gene Ontology Biological Process (GO_BP)
This tool contains controlled vocabulary for classification of gene function and is used to perform enrichment analysis for an independent biological process with a defined beginning and end. 
This tool is not in CGC. 
An equivalent tool found in CGC is the KnowEnG Gene Set Characterization Workflow, which tests a gene set for enrichment against a large compendium of annotations; it determines whether each gene set is enriched for a pathway, Gene Ontology term, or other types of annotations. 

TOOL: Gene Ontology Cellular Component (GO_CC)
This tool contains controlled vocabulary for classification of gene function and is used to perform enrichment analysis for a cellular structure. 
This tool is not in CGC. 
An equivalent tool found in CGC is the KnowEnG Gene Set Characterization Workflow, which tests a gene set for enrichment against a large compendium of annotations; it determines whether each gene set is enriched for a pathway, Gene Ontology term, or other types of annotations. 

TOOL: KEGG
This tool is an integrated database for biological interpretation of genome sequences and other high-throughput data.  
This tool is not in CGC, and there is no alternative in CGC.
