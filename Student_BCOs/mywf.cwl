{
    "class": "Workflow",
    "cwlVersion": "v1.0",
    "id": "jbeshea/bco-assignment-midterm/mywf/3",
    "label": "mywf",
    "$namespaces": {
        "sbg": "https://sevenbridges.com"
    },
    "inputs": [],
    "outputs": [
        {
            "id": "cleanout",
            "outputSource": [
                "na_remove/cleanout"
            ],
            "type": "File?",
            "label": "Clean Output",
            "description": "no NAs",
            "sbg:x": -222,
            "sbg:y": -153
        }
    ],
    "steps": [
        {
            "id": "sbg_unpack_fastqs_1_0",
            "in": [],
            "out": [
                {
                    "id": "output_fastq_files"
                }
            ],
            "run": {
                "cwlVersion": "sbg:draft-2",
                "class": "CommandLineTool",
                "$namespaces": {
                    "sbg": "https://sevenbridges.com"
                },
                "id": "admin/sbg-public-data/sbg-unpack-fastqs-1-0/5",
                "label": "SBG Unpack TCGA FASTQs",
                "description": "**SBG Unpack TCGA FASTQs** performs the extraction of the input archive, containing TCGA FASTQ files. \nThis tool also sets the \"paired_end\" metadata field. It assumes that FASTQ file names are formatted in this manner:\nfirst pair reads FASTQ file        -  *1.fastq\nsecond pair reads FASTQ file  -  * 2.fastq. \nwhere * represents any string.\n**This tool is designed to be used for paired-end metadata with above mentioned name formatting only.**\nSupported formats are:\n1. TAR\n2. TAR.GZ (TGZ)\n3. TAR.BZ2 (TBZ2)\n4. GZ\n5. BZ2\n6. ZIP",
                "baseCommand": [
                    "/opt/sbg_unpack_fastqs.py"
                ],
                "inputs": [
                    {
                        "sbg:category": "",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "position": 0,
                            "prefix": "--input_archive_file",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "label": "Input archive file",
                        "description": "The input archive file, containing FASTQ files, to be unpacked.",
                        "sbg:fileTypes": "TAR, TAR.GZ, TGZ, TAR.BZ2, TBZ2, GZ, BZ2, ZIP",
                        "id": "#input_archive_file"
                    }
                ],
                "outputs": [
                    {
                        "type": [
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "label": "Output FASTQ files",
                        "description": "Output FASTQ files.",
                        "sbg:fileTypes": "FASTQ",
                        "outputBinding": {
                            "glob": "decompressed_files/*.fastq",
                            "sbg:metadata": {
                                "paired_end": {
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  filepath = $self.path\n  filename = filepath.split(\"/\").pop();\n  if (filename.lastIndexOf(\".fastq\") !== 0)\n  \tp = filename[filename.lastIndexOf(\".fastq\") - 1 ]\n  if ((p == 1) || (p == 2))\n    return p\n  else\n    return \"\"\n}"
                                }
                            },
                            "sbg:inheritMetadataFrom": "#input_archive_file"
                        },
                        "id": "#output_fastq_files"
                    }
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 1000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "df9e1c169beb",
                        "dockerPull": "images.sbgenomics.com/markop/sbg-unpack-fastqs:1.0"
                    }
                ],
                "stdout": "out.txt",
                "sbg:revisionNotes": "Added TCGA to app name.",
                "sbg:toolkitVersion": "v1.0",
                "sbg:homepage": "https://igor.sbgenomics.com/",
                "sbg:job": {
                    "inputs": {
                        "input_archive_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "input_file.tar"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:cmdPreview": "/opt/sbg_unpack_fastqs.py --input_archive_file input_file.tar > out.txt",
                "sbg:projectName": "SBG Public data",
                "sbg:image_url": null,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "markop",
                        "sbg:modifiedOn": 1447782696,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "markop",
                        "sbg:modifiedOn": 1448463456,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "markop",
                        "sbg:modifiedOn": 1451493832,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "admin",
                        "sbg:modifiedOn": 1471952990,
                        "sbg:revisionNotes": "Changed description."
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "admin",
                        "sbg:modifiedOn": 1471952990,
                        "sbg:revisionNotes": "Changed paired-end metadata for single end reads."
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "admin",
                        "sbg:modifiedOn": 1513857731,
                        "sbg:revisionNotes": "Added TCGA to app name."
                    }
                ],
                "sbg:categories": [
                    "Other"
                ],
                "sbg:toolAuthor": "Marko Petkovic, Seven Bridges Genomics",
                "sbg:license": "Apache License 2.0",
                "sbg:toolkit": "SBGTools",
                "sbg:publisher": "sbg",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:id": "admin/sbg-public-data/sbg-unpack-fastqs-1-0/5",
                "sbg:revision": 5,
                "sbg:modifiedOn": 1513857731,
                "sbg:modifiedBy": "admin",
                "sbg:createdOn": 1447782696,
                "sbg:createdBy": "markop",
                "sbg:project": "admin/sbg-public-data",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "markop",
                    "admin"
                ],
                "sbg:latestRevision": 5,
                "sbg:content_hash": null
            },
            "label": "SBG Unpack TCGA FASTQs",
            "sbg:x": -742,
            "sbg:y": -165
        },
        {
            "id": "pearsons",
            "in": [
                {
                    "id": "input1",
                    "source": "sbg_unpack_fastqs_1_0/output_fastq_files"
                }
            ],
            "out": [
                {
                    "id": "output"
                }
            ],
            "run": {
                "class": "CommandLineTool",
                "cwlVersion": "v1.0",
                "$namespaces": {
                    "sbg": "https://sevenbridges.com"
                },
                "id": "jbeshea/bco-assignment-midterm/pearsons/2",
                "baseCommand": [
                    "R",
                    "cor()"
                ],
                "inputs": [
                    {
                        "id": "input1",
                        "type": "File",
                        "inputBinding": {
                            "position": 0,
                            "shellQuote": false
                        },
                        "label": "FASTQ",
                        "sbg:fileTypes": "FASTQ"
                    }
                ],
                "outputs": [
                    {
                        "id": "output",
                        "type": "File?"
                    }
                ],
                "label": "Pearsons",
                "requirements": [
                    {
                        "class": "ShellCommandRequirement"
                    }
                ],
                "sbg:projectName": "BCO_Assignment_Midterm",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662070,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662153,
                        "sbg:revisionNotes": ""
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662228,
                        "sbg:revisionNotes": ""
                    }
                ],
                "sbg:image_url": null,
                "sbg:appVersion": [
                    "v1.0"
                ],
                "sbg:id": "jbeshea/bco-assignment-midterm/pearsons/2",
                "sbg:revision": 2,
                "sbg:revisionNotes": "",
                "sbg:modifiedOn": 1570662228,
                "sbg:modifiedBy": "jbeshea",
                "sbg:createdOn": 1570662070,
                "sbg:createdBy": "jbeshea",
                "sbg:project": "jbeshea/bco-assignment-midterm",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "jbeshea"
                ],
                "sbg:latestRevision": 2,
                "sbg:publisher": "sbg",
                "sbg:content_hash": "a32ddd2e6da9ef87c6408ebcaf747d4e18b48245c021fbb8154c93073f649ee27"
            },
            "label": "Pearsons",
            "sbg:x": -532,
            "sbg:y": -164
        },
        {
            "id": "na_remove",
            "in": [
                {
                    "id": "input",
                    "source": "pearsons/output"
                }
            ],
            "out": [
                {
                    "id": "cleanout"
                }
            ],
            "run": {
                "class": "CommandLineTool",
                "cwlVersion": "v1.0",
                "$namespaces": {
                    "sbg": "https://sevenbridges.com"
                },
                "id": "jbeshea/bco-assignment-midterm/na-remove/3",
                "baseCommand": [
                    "R",
                    "newouttie <- na.omit(input)"
                ],
                "inputs": [
                    {
                        "id": "input",
                        "type": "File",
                        "inputBinding": {
                            "position": 0,
                            "shellQuote": false
                        },
                        "label": "clean",
                        "sbg:fileTypes": "FASTQ"
                    }
                ],
                "outputs": [
                    {
                        "id": "cleanout",
                        "doc": "no NAs",
                        "label": "Clean Output",
                        "type": "File?",
                        "outputBinding": {
                            "outputEval": "$(inheritMetadata(self, inputs.input))"
                        }
                    }
                ],
                "label": "NA_remove",
                "requirements": [
                    {
                        "class": "ShellCommandRequirement"
                    },
                    {
                        "class": "ResourceRequirement",
                        "ramMin": 100,
                        "coresMin": 0
                    },
                    {
                        "class": "InlineJavascriptRequirement",
                        "expressionLib": [
                            "\nvar setMetadata = function(file, metadata) {\n    if (!('metadata' in file)) {\n        file['metadata'] = {}\n    }\n    for (var key in metadata) {\n        file['metadata'][key] = metadata[key];\n    }\n    return file\n};\nvar inheritMetadata = function(o1, o2) {\n    var commonMetadata = {};\n    if (!o2) {\n        return o1;\n    };\n    if (!Array.isArray(o2)) {\n        o2 = [o2]\n    }\n    for (var i = 0; i < o2.length; i++) {\n        var example = o2[i]['metadata'];\n        for (var key in example) {\n            if (i == 0)\n                commonMetadata[key] = example[key];\n            else {\n                if (!(commonMetadata[key] == example[key])) {\n                    delete commonMetadata[key]\n                }\n            }\n        }\n        for (var key in commonMetadata) {\n            if (!(key in example)) {\n                delete commonMetadata[key]\n            }\n        }\n    }\n    if (!Array.isArray(o1)) {\n        o1 = setMetadata(o1, commonMetadata)\n    } else {\n        for (var i = 0; i < o1.length; i++) {\n            o1[i] = setMetadata(o1[i], commonMetadata)\n        }\n    }\n    return o1;\n};"
                        ]
                    }
                ],
                "sbg:projectName": "BCO_Assignment_Midterm",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662361,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662486,
                        "sbg:revisionNotes": ""
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662518,
                        "sbg:revisionNotes": ""
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "jbeshea",
                        "sbg:modifiedOn": 1570662533,
                        "sbg:revisionNotes": ""
                    }
                ],
                "sbg:image_url": null,
                "sbg:appVersion": [
                    "v1.0"
                ],
                "sbg:id": "jbeshea/bco-assignment-midterm/na-remove/3",
                "sbg:revision": 3,
                "sbg:revisionNotes": "",
                "sbg:modifiedOn": 1570662533,
                "sbg:modifiedBy": "jbeshea",
                "sbg:createdOn": 1570662361,
                "sbg:createdBy": "jbeshea",
                "sbg:project": "jbeshea/bco-assignment-midterm",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "jbeshea"
                ],
                "sbg:latestRevision": 3,
                "sbg:publisher": "sbg",
                "sbg:content_hash": "aa55e0125fe02d2e76fba5f657832d5601636b29b40319ca4095b9f8652eaf5e8"
            },
            "label": "NA_remove",
            "sbg:x": -391.734375,
            "sbg:y": -154.5
        }
    ],
    "requirements": [],
    "sbg:projectName": "BCO_Assignment_Midterm",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "jbeshea",
            "sbg:modifiedOn": 1570661287,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "jbeshea",
            "sbg:modifiedOn": 1570661405,
            "sbg:revisionNotes": ""
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "jbeshea",
            "sbg:modifiedOn": 1570662305,
            "sbg:revisionNotes": ""
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "jbeshea",
            "sbg:modifiedOn": 1570662625,
            "sbg:revisionNotes": ""
        }
    ],
    "sbg:image_url": "https://cgc.sbgenomics.com/ns/brood/images/jbeshea/bco-assignment-midterm/mywf/3.png",
    "sbg:appVersion": [
        "v1.0",
        "sbg:draft-2"
    ],
    "sbg:id": "jbeshea/bco-assignment-midterm/mywf/3",
    "sbg:revision": 3,
    "sbg:revisionNotes": "",
    "sbg:modifiedOn": 1570662625,
    "sbg:modifiedBy": "jbeshea",
    "sbg:createdOn": 1570661287,
    "sbg:createdBy": "jbeshea",
    "sbg:project": "jbeshea/bco-assignment-midterm",
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [
        "Missing one or more mandatory run inputs in step inputs: ['#sbg_unpack_fastqs_1_0.input_archive_file']"
    ],
    "sbg:contributors": [
        "jbeshea"
    ],
    "sbg:latestRevision": 3,
    "sbg:publisher": "sbg",
    "sbg:content_hash": "a20227438b644bf6306cac3019d5f55651914ebe276819e748f5318f300e27f3d"
}