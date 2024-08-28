ValueSet: VSReasonForSampleCancellationOrRejection
Id: vs-reason-sample-cancelled-or-rejected
Title: "Reasons why a lab order was cancelled or rejected"
Description: "Reasons why a lab order was cancelled or rejected."
* ^experimental = false
* $SCT#441510007 "Blood specimen with anticoagulant" 
* $SCT#123840003 "Sample contaminated"
* $SCT#397933008 "Equipment error/failure"
* $SCT#281264009 "Inappropriate bottle or container for sample"
* $SCT#281268007 "Insufficient sample"
* $SCT#281265005 "Sample incorrectly labeled"
* $SCT#419182006 "Supplies not available"

ValueSet: VSServiceProviderType
Id: vs-service-provider
Title: "Service Providers"
Description: "Code used for representing the classification of organizations providing health services."
* ^experimental = false
* $SCT#276052003 "Public facilities"
* $SCT#394794000 "Health clinic managed by voluntary or private agents"
* $SCT#185483006 "Outreach clinic"
* $SCT#310391008 "Community clinic"
* $SCT#257622000 "Healthcare facility"
* $SCT#45899008 "Free-standing laboratory facility"

ValueSet: VSSpecimenType
Id: vs-specimen-type
Title: "Specimen Type Used In Viral Load testing"
Description:  "A list of specimen types."
* ^experimental = false
* $SCT#119361006 "Plasma specimen"
* $SCT#440500007 "Dried blood spot specimen"
* $SCT#441620008 "Oral fluid specimen"
* $SCT#258580003 "Whole blood specimen"
* $SCT#119364003 "Serum specimen"

CodeSystem: CSPimsLabOrderCodes
Id: cs-pims-lab-codes
Title: "PIMS Lab Codes"
Description: "Codes used during PIMS lab orders."
* ^experimental = false
* ^caseSensitive = true
* #P-1 "CD4" "PIMS Lab Code"
* #128 "Sputum AAFB" "PIMS Lab Code"
* #129 "Xpert" "PIMS Lab Code"
* #1 "CD4 Count" "PIMS Lab Code"
* #3 "Viral Load" "PIMS Lab Code"
* #87 "Erythrocyte sedim rate" "PIMS Lab Code"
* #14 "Erythrocyte sed rate" "PIMS Lab Code"
* #2 "CD4%" "PIMS Lab Code"

ValueSet: VSPimsLabOrderCodes
Id: vs-pims-lab-codes
Title: "PIMS Lab Codes"
Description: "Codes used during PIMS lab orders."
* ^experimental = false
* include codes from system CSPimsLabOrderCodes

CodeSystem: CSOpenMrsLabOrderCodes
Id: cs-openmrs-lab-codes
Title: "OpenMRS Lab Codes"
Description: "Codes used during OpenMRS lab orders."
* ^experimental = false
* ^caseSensitive = true
* #3376678 "CD4" "OpenMRS Lab Code"
* #3011225 "GENXPERT" "OpenMRS Lab Code"
* #3076387 "TB AFB MICRISCOPY (TB LAB ONLY)" "OpenMRS Lab Code"
* #3076385 "MICROBIOLOGY TB REVIEW" "OpenMRS Lab Code"
* #3076383 "TB-MGIT PZA" "OpenMRS Lab Code"
* #3076381 "TB-MGIT 2ND LINE DST" "OpenMRS Lab Code"
* #3076379 "TB-MGIT 1ST LINE DST" "OpenMRS Lab Code"
* #3076377 "TB MCS" "OpenMRS Lab Code"
* #3076375 "LPA IDENTIFICATION" "OpenMRS Lab Code"
* #3076373 "TB-LPA 2ND LINE" "OpenMRS Lab Code"
* #3076371 "TB-LPA 1ST LINE" "OpenMRS Lab Code"
* #3076369 "TB LAM Urine Test" "OpenMRS Lab Code"
* #3076366 "TB IDENTIFICATION" "OpenMRS Lab Code"
* #3076364 "TB FLUORESCENCE MICROSCOPY" "OpenMRS Lab Code"
* #3076362 "TB CULTURE" "OpenMRS Lab Code"
* #3076360 "AURAMINE STAIN" "OpenMRS Lab Code"
* #3076358 "MTB PROCESSED" "OpenMRS Lab Code"
* #3076356 "CD4 REVIEW" "OpenMRS Lab Code"
* #3076354 "CD8%" "OpenMRS Lab Code"
* #3076352 "CD8 ABSOLUTE" "OpenMRS Lab Code"
* #3076341 "VIRAL LOAD COUNT" "OpenMRS Lab Code"
* #3076349 "CD4/CD8 Ratio" "OpenMRS Lab Code"
* #3076347 "CD4 Absolute" "OpenMRS Lab Code"
* #3076345 "Viral Review" "OpenMRS Lab Code"
* #3076343 "VIRAL LOAD LOG" "OpenMRS Lab Code"
* #3068231 "Viral Load" "OpenMRS Lab Code"
* #2965073 "ERYTHROCYTE SEDIMENTATION RATE" "OpenMRS Lab Code"
* #3067593 "TB AFB MICROSCOPY" "OpenMRS Lab Code"
* #2947299 "CD4%" "OpenMRS Lab Code"

ValueSet: VSOpenMrsLabOrderCodes
Id: vs-openmrs-lab-codes
Title: "OpenMRS Lab Codes"
Description: "Codes used during OpenMRS lab orders."
* ^experimental = false
* include codes from system CSOpenMrsLabOrderCodes