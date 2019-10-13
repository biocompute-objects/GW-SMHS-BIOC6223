# Further Research Group 5

BCO Tools and Alternatives in CGC and HIVE		

Our publication utilized 6 tools: TopHat and Bowtie1 in Step 1, UCSC Genome Browser Table in Step 1, R script to assemble grid graphics in Step 2, Bioconductor RankProd in Step 3, Gene Ontology Biological Process (GO_BP) in Step 4, Gene Ontology Cellular Component (GO_CC) in Step 4, and KEGG pathway in Step 4.  The purpose of TopHat and Bowtie1 is to look at unmapped reads and align them according to splicing junctions.  TopHat and Bowtie1 were found in both HIVE and CGC.  The purpose of UCSC Genome Browser Table is to provide alignment comparisons to already provided genes within the genome browser table.  This tool was not found in HIVE or CGC, but there is a close alternative in HIVE and CGC called HISAT2, which enables mapping genes to a reference genomes (in our case a mouse genome).  The purpose of assembling grid graphics using the R script is to combine, arrange, and create a variety of graphical elements and can be used to select desired genes for graphic visualization such as a heatmap.  HIVE enables developing in R script, but this feature was not clearly defined in CGC. There are other tools on CGC, which provide heatmaps and other graphical elements as output, such as RNA-Seq De Novo Assembly and Analysis - Trinity 2.4.0.  The purpose of Bioconductor RankProd is differential gene expression analysis.  This tool is not in HIVE, but there is an alternative tool called BioXpress for DESeq analysis within the HIVE platform. This tool is also not in CGC, but alternate tools are Ballgown and Cuffdiff in CGC.  The purpose of Gene Ontology Biological Process (GO_BP) is to facilitate controlled vocabulary for classification of gene function and to perform enrichment analysis for an independent biological process with a defined beginning and end.  This tool is not in HIVE, there is no alternative in HIVE.  This tool is also not found in CGC, but an equivalent tool found in CGC is the KnowEnG Gene Set Characterization Workflow, which tests a gene set for enrichment against a large compendium of annotations; it determines whether each gene set is enriched for a pathway, Gene Ontology term, or other types of annotations.  The purpose of Gene Ontology Cellular Component (GO_CC) is to facilitate controlled vocabulary for classification of gene function and is used to perform enrichment analysis for a cellular structure.  This tool is not in HIVE, and there is no alternative in HIVE.  This tool is also not in CGC, but an equivalent tool found in CGC is the KnowEnG Gene Set Characterization Workflow.  The purpose of KEGG is to serve as an integrated database for biological interpretation of genome sequences and other high-throughput data.  This tool is not found in HIVE or CGC, and there is no alternative in HIVE or CGC.  An email was sent to the point of contact for both the HIVE and CGC platforms concerning the missing tools.



REFERENCES:
Paper citation.
1.     Ting, D. T., Wittner, B. S., Ligorio, M., Vincent Jordan, N., Shah, A. M., Miyamoto, D. T., ... Haber, D. A. (2014). Single-cell RNA sequencing identifies extracellular matrix gene expression by pancreatic circulating tumor cells. Cell reports, 8(6), 1905-1918. doi:10.1016/j.celrep.2014.08.029
 
Supplemental Experimental Procedures (page 4-6).
2.     Ting, D. T., & Wittner, B. S., Ligorio, M., Vincent Jordan, N., Shah, A. M., Miyamoto, D. T., ... Haber, D. A. (2014, September 18). Single-Cell RNA Sequencing Identifies Extracellular Matrix Gene Expression by Pancreatic Circulating Tumor Cells. Retrieved from https://ars.els-cdn.com/content/image/1-s2.0-S2211124714007050-mmc1.pdf

Najuma Babirye
Elizabeth C. Lee
Nirmala Ramnarine
10-11-19





























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
