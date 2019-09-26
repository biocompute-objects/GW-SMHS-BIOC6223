Sourcing a Publication from which to create a BCO
===================================
9/17/19

## Instructions
* Find a bioinformatics publication that can be turned into a BioCompute Object. The publication will have to be something related to RNAseq or differential expression, and must be related to cancer.

* The ideal paper will have an open source repository (for example: https://github.com/dpastling/DUF1220_simulation). This is because you will need URIs to source each of the steps.

### Criteria
A good pipeline will have a limited number of steps (for example, https://www.ncbi.nlm.nih.gov/pubmed/28807002). This one has 4 steps. It's not a requirement to make it a limited number of steps (some in the pharmaceutical detection world can have 100 steps or more), but to make it easier on yourself at this stage, I strongly suggest that you keep the number of steps as low as is reasonable.
We will go over this paper as an example next week (9/24) , and you will later have access to an [example BCO](https://github.com/biocompute-objects/examples/blob/master/BCO_Example_CNVs.json) that was built from this publication.

## Deliverable:
1. A paragraph summary of the purpose of the pipeline, which includes the biological question, and what the pipeline is intended to do.
2. A summary of the steps as an ordered list. Each step should have a description of what the step does, any resource that's necessary to run it (for example, if it's an alignment step that aligns to the human genome, indicate the URI to access it), and what the input file(s) are if it's the first step, or what the output file(s) are if it's the last step.
