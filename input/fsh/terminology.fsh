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

CodeSystem: CSMasterFacilityListCodes
Id: cs-master-facility-list
Title: "Master Facility List (MFL) Codes"
Description: "Codes found in the MFL."
* ^experimental = false
* ^caseSensitive = true
* #830217-6 "MEDLASS IMAGING"
* #953200-3 "Moko Clinic"
* #758514-4 "Dr F Le Roux Medical Services"
* #974794-0 "THE X-RAY HUB"
* #509384-4 "Ent Care (Pty)Ltd"
* #863148-3 "St Joseph's Medical Center"
* #787178-3 "Prisons Clinic"
* #481025-5 "Karakubis Clinic"
* #304543-2 "24 HR EMERGENCY MEDICAL CARE"
* #556191-5 "Dr Kadiyala Surgery"
* #832969-0 "POHA BDF Health Post"
* #192292-1 "Nkaikela Youth Group"
* #856575-6 "Optico centre Tutume"
* #116257-7 "Bonesa Radiology Centre"
* #523937-1 "Elikya Medical Centre"
* #936043-9 "Dinovi Private Medical Clinic"
* #237583-0 "Phitshane Potlokwe Health Post"
* #753290-6 "Jwaneng Mine Hospital"
* #559369-4 "Highway Medical Centre"
* #989336-3 "New Xanagas/Tsawe Health Post"
* #807112-8 "Toro Clinic"
* #402141-6 "Bophelong Medical Clinic"
* #113048-3 "Riverside Hospital"
* #224970-4 "Xanagas Health Post"
* #713688-0 "MEDICALLIC ENTERPRISES T/A DR RJ BREDENKAMP"
* #894684-0 "Mankgodi Clinic"
* #540264-1 "BIDII MEDICAL SERVICES"
* #272170-2 "Palapye Medical Centre"
* #836692-4 "MMADINARE MEDICAL CENTER"
* #917198-4 "Dr Mohammed Ejaz Habib"
* #703564-5 "The Medical Plaza"
* #277435-4 "Delgado Spinal Health Clinic"
* #249073-8 "Phikwe Private Day Clinic"
* #537111-7 "ZOWA CLINICAL LABORATORIES"
* #357247-6 "Dr Miko Private Clinic"
* #411806-3 "Phase 2 Clinic"
* #262838-6 "Smart Pharmacy: Human and Vet. Medicines"
* #307204-8 "Bozogo clinic"
* #633090-6 "Kiran Medical Centre"
* #935580-1 "CAMAD INVESTMENT (PTY) LTD"
* #167969-5 "Vitality"
* #745542-1 "BETHESDA MEDICAL CENTRE"
* #160961-9 "Trusted Care Medical Centre"
* #448842-5 "Letlhakane Dental Clinic"
* #881200-0 "RAPHA MEDICAL CENTRE"
* #797955-2 "PURE SIGHT OPTOMETRISTS"
* #925634-8 "OM PHYSIOTHERAPHY CLINIC PTY LTD"
* #206715-5 "DAZZLING GRINS DENTAL CLINIC"
* #605051-2 "Shady Eyes Optometrist"
* #167159-3 "Junction Physiotherapy"
* #61986-6 "Mowana Copper Mine Clinic"
* #821498-3 "Hilltop Medical Centre"
* #326727-5 "YOUR FAMILY DENTIST DENTAL CLINIC"
* #904700-2 "Tutume Pharmacy"
* #774086-3 "Juliana Kalafi Clinic"
* #244149-1 "Katlotla Physiotherapy Clinic"
* #286856-0 "Pathview Laboratory"
* #623658-2 "Quali-Med Laboratories"
* #931356-0 "NEW HOPE PRIVATE CLINIC"
* #937506-4 "Nata Medical Care"
* #291112-1 "Dr ABBA MF"
* #206058-0 "Wapula Medical Centre"
* #982648-8 "Botswana Ash mine clinic"
* #643382-5 "Selibe Phikwe BDF Clinic"
* #998774-4 "Gantsi Primary Hospital"
* #717471-7 "Mothamo CJSS Clinic"
* #477319-8 "Pamper Inc (Pty) Ltd T/A Holistic Physio & Fitness Clinic"
* #89938-5 "Lordsland Medical Center"
* #168242-6 "BOCHAIP"
* #886589-1 "Medical Diagnostic Imaging Centre"
* #667055-8 "Rapid Care Physiotherapy"
* #984432-5 "PHARMAZONE"
* #910859-8 "Eye Sight Clinic"
* #474791-1 "ALL RIGHT PHARMACY"
* #325783-9 "D'kar Health Post"
* #886922-4 "AO Molepolole Clinic"
* #971240-7 "Premium Medical Centre"
* #128761-4 "UNIVERSAL FAMILY CLINIC"
* #983793-1 "Proland medical centre"
* #242824-1 "Life Centre Clinic"
* #568467-5 "Diagnofirm Medical Laboratories"
* #380519-9 "Serowe Eye Care"
* #484729-9 "Sidilega Private Hospital"
* #195535-0 "PROCARE PHARMACY"
* #972870-0 "Marang Dental Care"
* #797724-2 "Pharm-Mart Pharmacy"
* #602729-6 "BMC Clinic (factory)"
* #380553-8 "F/town Prisons (Sickbay) Clinic"
* #361071-4 "Kubung"
* #448900-1 "KENNET MEDICAL CENTRE"
* #884477-1 "DrK Travel Clinic"
* #503447-5 "Kasane Prisons Health Post"
* #687486-1 "Mahalapye Prisons Clinic"
* #802098-4 "Diagnofirm Medical Laboratory"
* #815249-8 "Roadside Pharmacy"
* #79831-4 "UB (Main Campus) Clinic"
* #847194-8 "Life Line Medical Clinic"
* #306812-9 "Sekgoma Memorial Hospital"
* #214623-1 "Selebi Phikwe Government Hospital"
* #96304-1 "serowe optician"
* #148454-2 "Tutume Primary Hospital"
* #625958-4 "Masunga Primary  Hospital"
* #215428-4 "Hukuntsi Primary Hospital"
* #755538-6 "Bobonong Primary Hospital"
* #488869-9 "Mmadinare Primary Hospital"
* #163606-7 "Tsabong Primary Hospital"
* #473132-9 "Rakops Primary Hospital"
* #257736-9 "Nkaikela Health Post"
* #333826-6 "LA VISTA MEDICAL CENTRE"
* #749268-9 "Lesirane Clinic"
* #298782-4 "Charleshill Clinic"
* #827088-6 "Tonota Clinic"
* #265991-0 "Letlhakeng Clinic"
* #791197-7 "Mabutsane Clinic"
* #804105-5 "The Eye Spot"
* #542996-4 "VICTORIA MEDICAL CENTRE"
* #399472-0 "Nata Clinic"
* #244471-9 "Sowa Clinic"
* #490102-1 "Kang Clinic"
* #961057-7 "EU 7  Clinic"
* #522501-6 "SARONA HEALTH CLINIC"
* #98381-7 "THUSONG SURGERY PTY LTD"
* #646835-9 "Dr CLEMENT CLINIC"
* #74820-2 "Optifocus"
* #725535-9 "TEBELOPELO"
* #116156-1 "Bakwena Pharmacy"
* #867623-1 "Medi-Perfect Pharmacy Mochudi"
* #353994-7 "Ewin Medical Services"
* #1041689-9 "KARIBU MEDICAL CENTRE"
* #962659-9 "FIRST CARE PHARMACY"
* #602523-3 "BLM DENTAL CLINIC"
* #297614-0 "Gopong Health Post"
* #540778-8 "NDEBORA MEDICAL CENTRE"
* #892124-9 "MASA MEDICAL CLINIC"
* #669911-0 "Carine SMET-SANTENS Psychology Practice"
* #708736-4 "Orthomed Prosthetics Orthotics Clinic"
* #472023-1 "Pandamatenga Clinic"
* #516779-6 "Negussie and Kidist Anaesthesia services"
* #641062-5 "Avivenna Maternal & Child Health & Wellness Clinic"
* #256806-1 "Benedicte Medical Clinic"
* #689860-5 "MED-PARK PHARMACY"
* #215882-2 "KARONG CLINICS"
* #257458-0 "Active Town Physiotherapy Clinic"
* #624090-7 "Molepolole College of Education"
* #849480-9 "Smart Pharmacy"
* #735075-4 "EYELIGHT OPTOMETRIST"
* #916214-0 "HEALTH SCOPE MEDICAL"
* #418708-4 "master code pty ltd t/a radio diagnosis"
* #67448-1 "DR LOUIS TALJAARD"
* #181398-9 "Square Pharmacy"
* #864865-1 "NEOVISION EYE CLINIC"
* #198785-8 "Aiden Dental Care"
* #239899-8 "MASUNGA MEDICAL SERVICES"
* #436373-5 "Kaelo Medical Emerging"
* #145828-0 "SUPREME CARE PHARMACY"
* #547122-3 "Magee Medical Imaging Pty Ltd"
* #187291-0 "DATI PAEDIATRIC CLINIC"
* #927399-6 "RAS-PULLA DENTAL CLINIC"
* #23363-5 "Eye Masters Optician"
* #707382-8 "AUTHENTIC SMILE"
* #430772-4 "Chidzanami Pharmacy Pty ltd"
* #861895-1 "Test Rite Consulting Group"
* #111442-0 "KORAK PHYSIOTHERAPY"
* #32636-3 "Mohaung Medical Centre"
* #557437-1 "Dermadee Skin Care Centre"
* #699501-3 "Ultimate Physiotherapy"
* #907515-1 "Motsentshe Health Post"
* #809338-7 "Satelite Private Medical Clinic"
* #738301-1 "Avenue Medical Centre"
* #266813-5 "AA Physiotherapy And Rehabilitation"
* #803293-0 "24 HOUR EM CLINIC"
* #628805-4 "FASHION EYE WEAR OPTICIANS"
* #518534-3 "FLAME LILY PHYSIOTHERAPY"
* #890747-9 "FRANCISTOWN OPTICIANS"
* #102362-1 "MEDICOS PHARMACY"
* #297631-4 "Cedmol Medical Clinical"
* #439437-5 "KAMLOOPS MEDICAL CENTRE"
* #876071-2 "PALAPYE MEDICAL CENTRE"
* #694165-2 "LEFIKA DETAL CLINIC"
* #958207-3 "ANGEL PRIVATE CLINIC"
* #489451-5 "MALL SCAN CENTRE"
* #280883-0 "Mashalaba Surgery"
* #42380-6 "BETHESDA MEDICAL CENTRE"
* #643159-7 "Diagnofirm Medical Laboratories"
* #544235-5 "L B K PHYSIO CLINIC"
* #554578-5 "LIFECHARGE PHYSIO & REHAB"
* #442567-4 "AQUA-SPRAY MEDICAL CENTRE"
* #898454-4 "Dr Kayidala Surgery"
* #751091-0 "LESEDING MEDICAL CENTER"
* #61832-2 "THEBE HEALTHCARE PTY LTD"
* #573315-9 "SARAI HOLISTIC CARE"
* #991010-0 "Gaborone Biokinetics"
* #969938-0 "MOSIME OPTOMETRISTS"
* #525629-2 "Mochudi Pharmacy"
* #463070-3 "Ramotswa Pharmacy"
* #448768-2 "HUKUNTSI PRIVATE CLINIC"
* #692352-8 "KARIBU MEDICAL CENTRE"
* #139415-4 "MOUPULE POWER STATION CLINIC"
* #640135-0 "FUN DENTAL CLINIC"
* #241358-1 "Spring Healthcare"
* #522704-6 "RABAH PHYSIO"
* #791970-7 "RELD MED PHARMACY"
* #600045-9 "Storkfort Health"
* #914410-6 "UNIMED PHARMACY"
* #262865-9 "SPARKLE DENTAL CLINIC"
* #543125-9 "DEAL MART"
* #551055-7 "ADVENTIST HEALTH SERVICES CLINIC"
* #332350-8 "Ramotswa Imaging Centre"
* #746029-8 "MASA MEDICAL CLINIC"
* #353920-2 "My Life Pharmacy"
* #782754-6 "Sam's Surgery"
* #394645-6 "DIAGNOFIRM MEDICAL LABORATORIES"
* #730486-8 "Dr Khan Surgery"
* #927877-1 "DR L.D MAHLOANE"
* #755274-8 "Broadvision Eye Clinic"
* #260292-8 "Jobet Medical Center"
* #777882-2 "Jwaneng Medical Centre"
* #793981-2 "TSHIDILONG PHYSIOTHERAPY"
* #432400-0 "VALUE CHAIN NETWORK"
* #239175-3 "KT HEALTHCARE PRIVATE MEDICAL CLINIC"
* #449436-5 "Ngami Physiotherapy Clinic"
* #793861-6 "Espoir Clinic"
* #589011-6 "Frida B-D Occupational Therapy Centre"
* #201781-2 "JWANENG EYE CARE"
* #80234-8 "BUMMHI"
* #310096-3 "Physio Back to normal"
* #370657-9 "Sepako Health Post"
* #226320-0 "Matsha Medical Center"
* #204899-9 "ORISTONE MEDICAL CLINIC"
* #306748-5 "Dental Hub"
* #105245-5 "First Care Pharmacy"
* #100478-7 "Oristone Medical Clinic"
* #663045-3 "Barakat Medical Centre"
* #121836-1 "REAL TRADE(PTY)LTD"
* #826083-8 "Lobone clinics"
* #127545-2 "PHYSIO HUB"
* #946994-1 "4 EYES OPTOMETRIST"
* #622375-4 "PHARMA HUB"
* #251139-2 "PHYSIOTHERAPY PRIVATE PRACTICE"
* #412231-3 "PROGRESSIVE PHYSIOTHERAPY CLINIC"
* #523110-5 "Phemo Clinic"
* #772967-6 "Natural Dent Dental Clinic"
* #675371-9 "Lorato Medical Centre"
* #249496-1 "Afiya Health and Dietetic Consultants"
* #690762-0 "PY Chem Pharmacy- Junction Branch"
* #903009-9 "The pan Clinic"
* #969668-3 "Diagnofirm (Pty)Ltd"
* #690786-9 "Pharma-direct Phamarcy"
* #682703-4 "Victorious Living Medical Clinic"
* #713867-0 "GHANZI PHARMACY"
* #27062-9 "Botswana Gender Based Violence Prevention and Support Centre"
* #709064-0 "Pharma Lulu"
* #792976-3 "Botsogo Medical Clinic"
* #810131-3 "Kubung Health Post"
* #962439-6 "PHAKALANE MEDICAL CENTER"
* #272944-0 "T&T Pharmacy Services (pty)LTD"
* #714083-3 "Matlhare Clinics"
* #894865-5 "LETLHAKANE PHARMACY"
* #431665-9 "SOLSHA PHYSIOCARE"
* #197971-5 "Multicare (pty)Ltd T/A Rose Dental"
* #4405-7 "Medi-Glow Aesthetics"
* #324142-9 "AO Clinic Mochudi"
* #913246-5 "OK CHEMIST-KANYE"
* #684175-3 "SANDY SPRINGS (PTY)Ltd"
* #406062-0 "V.I.P DENTAL CARE"
* #471424-2 "CARE & HOPE MEDICAL CLINIC"
* #301537-7 "Disaneng Clinic"
* #764799-3 "Central Clinic"
* #913749-8 "LEFKARA DENTAL SPA"
* #528225-6 "Medi-Perfect Pharmacy - Kgabo Mall"
* #732076-5 "BPM ORAL & DENTAL CARE CLINIC"
* #669128-1 "Independence Surgery"
* #583489-0 "Dr Saima Surgery"
* #873208-3 "Gaborone Private Hospital"
* #24528-2 "Tsarona Eye Specialist Services"
* #697359-8 "ELIM MEDICAL CENTRE"
* #570658-5 "THE CHEMIST PLUS"
* #769114-0 "ENDOCRINE & DIABETS CARES"
* #473791-2 "EXCLUSIVE DENTAL CLINIC"
* #949787-6 "SONOCARE SCANNING CENTRE"
* #386841-1 "Ultra Care Clinic"
* #358521-3 "North West Family Health Centre"
* #701071-3 "ALEMAYEHU G.B SURGICAL CENTRE"
* #170684-5 "FRIENDS PHARMACY"
* #266757-4 "HAVELE HOLDING PHYSIO"
* #973763-6 "Riverside Hospital Dialysis Clinic"
* #889361-2 "Bokaa Clinic"
* #586431-9 "My Chemist (Pharmacy)"
* #196788-4 "KATLO DENTAL SURGERY"
* #610449-1 "Eyesave Optical"
* #928816-8 "EyeSave Optical"
* #871521-1 "ANEJ FAMILY MEDICAL CLINIC (AFMC)"
* #950899-5 "Princess Marina Hospital"
* #654707-9 "LR PHYSIOTHERAPY"
* #414032-3 "NOTWANE PHARMACY"
* #571873-9 "MARVEL PHARMACY"
* #1044538-5 "MODEST PHARMACY"
* #783299-1 "Tsabong Unified Secondary School"
* #146260-5 "B.B.T. PHYSIOTHERAPY"
* #767749-5 "Dr Patel Surgery"
* #733114-3 "PALMES CLINIC"
* #526922-0 "LOBATSE PHARMACY"
* #598846-4 "SHALOM DENTAL CLINIC"
* #230781-7 "SEBELE OPTICAL CENTRE"
* #560632-2 "SPECSAVERS"
* #794932-4 "DR MOTINGWA DENTAL SURGERY"
* #466230-0 "Padre Pio Medical Centre"
* #786617-1 "Medi-Perfect Pharmacy - Pilane"
* #141880-5 "ERNAD MEDICAL CENTER"
* #528589-5 "ELITE PHYSIOTHERAPY"
* #360734-8 "Dr Omotoye Dental Surgery"
* #190477-0 "EYE HEALTH CLINICS"
* #816049-1 "BOPMOE HOLDINGS"
* #472233-6 "ELITE DENTAL CLINIC"
* #931933-6 "ZETA CLINIC"
* #715839-7 "INTEGRAL MEDICAL CENTRE"
* #974879-9 "FUN DENT DENTAL CLINIC"
* #132027-4 "GABANE PHARMACY"
* #202256-4 "Oramax Medical Center"
* #816867-6 "Labscroll Medicals Tutume"
* #18685-8 "Eden Clinic"
* #369849-5 "mowana private clinic"
* #413824-4 "City Medical Center"
* #783863-4 "SEBELE CENTRE PRIVATE CLINIC"
* #23551-5 "Notwane Medical Center"
* #423355-7 "Concord Clinic"
* #974441-8 "Tutume Medical Center"
* #950115-6 "Pholoso Medical Centre"
* #684095-3 "Optoguide Optometrist"
* #189482-3 "Mosi Health Post"
* #887904-1 "KGALAGADI PHARMACY"
* #789914-9 "LIFE LINE MEDICAL CLINIC"
* #328678-8 "St DAMIAN MEDICAL CLINIC"
* #220984-9 "INDRA MEDICAL CENTRE"
* #958002-8 "MASA PHYSIOTHERAPY CLINIC"
* #419929-5 "OPTICO CENTRE"
* #421000-1 "SQUARE PHARMACY"
* #776714-8 "SUPER-CARE PHARMACY"
* #398532-2 "SUPERMED PHARMACY"
* #881493-1 "THE CHEMIST - GABORONE"
* #951474-6 "Tlhatlogong Medical Clinic"
* #357890-3 "AO Clinic KB Mall"
* #900725-3 "VISION OPTICAL CENTRE"
* #630327-5 "Shakawe Senior Secondary School Clinic"
* #405952-3 "Kalafhi Medical Centre Renewal Aesthetics"
* #114696-8 "ECOPATH PATHOLOGY"
* #816068-1 "Universal Health Care"
* #194729-0 "St Mary's Dental Clinic"
* #539919-1 "The Doctors Inn Health Centre"
* #808986-4 "Serowe Family CLinic"
* #760429-1 "BATHO DENTAL CLINIC"
* #807951-9 "Compass Green Day Hospital"
* #316066-0 "Entle Dental Emporium"
* #303708-2 "Kgatleng Medical Center"
* #45728-3 "BOIPUSO SURGERY"
* #322979-6 "ST GEORGES MEDICAL CENTRE"
* #901601-5 "ECOPATH PATHOLOGY KANYE"
* #306393-0 "Peace Medical Centre"
* #280610-7 "BMC Clinic"
* #84999-2 "LB Private Health Care"
* #155922-8 "Joseph Kavindama Hospital"
* #157005-0 "Prime Health Centre"
* #788868-8 "Hospital Way Medical Centre"
* #232239-4 "Serowe Pharmacy"
* #450114-4 "Kalafhi Medical Center Village"
* #537303-0 "CLYDEVIEW DENTAL CLINIC"
* #141574-4 "Youth Friendly Services"
* #618900-5 "Sir Seretse Khama International Airport Clinic"
* #958636-3 "BOsele Pharmacy"
* #602795-7 "First Care Pharmacy"
* #231840-0 "Delta Pharmacies Ghanzi Pty Ltd"
* #368151-7 "Kgatleng Emergency Medical Services"
* #666764-6 "Morupule Coal Mine Clinic"
* #874777-6 "The Health - Haven Medical Centre"
* #689212-9 "Universal Health Care"
* #470400-3 "4Eye Optometrist"
* #769204-9 "Eye Express"
* #59027-3 "ULTRA CARE PHARMACY"
* #158250-1 "Bidii Medical Services"
* #267593-2 "Shakawe BDF Clinic"
* #358541-1 "Pharma Caprivi Pharmacy"
* #183511-5 "Better Care Pharmacy"
* #135676-5 "Adonai Medical Clinic"
* #836752-6 "OM Physiotherapy"
* #802430-9 "Phatsimo Eye Center"
* #308088-4 "Crafty Fisio"
* #664819-0 "Life Citadel Clinic"
* #888181-5 "Tshepo Medical Centre"
* #124054-8 "Fortworth Physiotherapy Clinc"
* #831366-0 "Mmathubudukwane Private Clinic"
* #825838-6 "Maranyane Medical Laboratory"
* #658555-8 "Serowe Mens Prisons Clinic"
* #198876-5 "Gaborone Central Clinic"
* #664672-3 "Lenmed Bokamoso Private Hospital"
* #831606-9 "Tumelo Medicare Clinic"
* #829944-8 "Dr Monga Clinic"
* #333424-0 "The Allergy Center"
* #725159-8 "Phodisoetsile Private Medical Centre"
* #804526-2 "Kanye Prison Health Post"
* #776204-0 "Phikwe Pharmacy"
* #75995-1 "Gilgal Dental Clinic"
* #374364-8 "Gabriel Clinic"
* #602113-3 "Boiteko Pharmacy"
* #520537-2 "Dipotsana Health Post"
* #365193-2 "Tshwaane Health Post"
* #219004-9 "Lejwana Health Post"
* #510551-5 "Matopi Health Post"
* #303962-5 "Molefi Senior Secondary School Clinic"
* #910036-3 "Ngwatle Health Post"
* #561209-8 "Disana Health Post"
* #853367-1 "Maun Prison Clinic"
* #162118-4 "Shoshong Senior Secondary School Clinic"
* #287528-4 "Pandamatenga BDF Clinic"
* #993317-7 "Doosan First Aid Centre (Morupule A)"
* #613006-6 "BUIST Clinic"
* #977548-7 "Dr Kabongo Clinic"
* #219564-2 "Madiba Senior Secondary School Clinic"
* #839437-1 "Pilane Private Medical Clinic"
* #893999-3 "Medron Medical Centre"
* #766553-2 "Koala Medical Center"
* #865899-9 "Elonga Medical Clinic"
* #221102-7 "Lotsane Senior School Clinic"
* #641008-8 "UNICHEM PHARMACY"
* #465208-7 "S&S Opticians"
* #415557-8 "GABORONE CHILDRENS CARE CLINIC"
* #543463-4 "Elite Dental Clinic"
* #307093-5 "THERAPEOS PHARMACY"
* #685786-6 "Dr Bose Medical Centre"
* #42926-6 "Family Care Pharmacy"
* #887619-5 "DR Jaco Meij Dental Surgeon(PTY)Ltd"
* #545351-9 "Liberty Medical Centre"
* #362008-5 "Expretions (Pty)Ltd"
* #691236-4 "BOTSOGO MEDICAL CENTRE"
* #838262-4 "DIJO KALAFI & WELLNESS CENTRE"
* #87090-7 "St Simon Medical Centre"
* #779515-6 "Jorreti Medical Centre"
* #620538-9 "The Village Surgery"
* #758046-7 "The Orthodontic Centre PTY LTD"
* #395705-7 "UNIVERSAL FAMILY CLINIC"
* #535372-7 "KB MEDICAL CLINIC"
* #184725-0 "Ultra care"
* #362330-3 "DR HIRUI MEDICAL CLINIC"
* #135575-9 "MASA FAMILY CLINIC"
* #383703-6 "Xpert Imaging Clinic"
* #599109-6 "AGAPE DENTAL CLINIC"
* #437590-3 "Tirelo Motseonageng Clinic"
* #189383-3 "Kazungula BDF Health Post"
* #803266-6 "Tshwaane Health Post"
* #936820-0 "Ditshukudu Health  Post"
* #1026941-3 "OPTICAL INSIGHT"
* #447878-0 "Old Sekgoma Clinic"
* #243426-4 "Matshelagabedi Clinic"
* #870308-4 "Mabudzane Health  Post"
* #228800-9 "Bokaa  Clinic"
* #639545-3 "Okavare Pharmacy"
* #490773-9 "GM CLINIC"
* #527110-1 "Ecopath Pathology Laboratory"
* #125093-5 "WOMENS HEALTH CENTRE"
* #529072-1 "LA GRACE PVT MED CLINIC"
* #1012440-2 "VISION 20/20 CENTER"
* #864616-8 "RAMOTSABABA FAMILY HEALTH"
* #808792-6 "Fox Eye Opticians"
* #1098164-5 "WRIGHTWAY'S DENTAL SERVICES"
* #956740-5 "KGALAGADI PHARMACY- GABZ"
* #240358-2 "Eretsha Health Post"
* #397733-7 "Siviya Health  Post"
* #253506-0 "Serule Clinic"
* #972576-3 "Sekakangwe Clinic"
* #274686-5 "Themashanga Clinic"
* #362146-3 "Ramokgwebana Clinic"
* #467438-8 "Butale Health Post"
* #201391-0 "Mbalambi Health Post"
* #495949-0 "Matenge Health Post"
* #524549-3 "Jackalas 2 Health Post"
* #704753-3 "Gambule Health Post"
* #282980-2 "Makaleng Clinic"
* #439627-1 "Kgomodiatshaba Health Post"
* #500663-0 "Dikgonnye Health Post"
* #153397-5 "Artesia Clinic"
* #34897-9 "Glen Valley Clinic"
* #188465-9 "Thamaga  Main Clinic"
* #965513-5 "Dzoroga Health Post"
* #849574-9 "Changate Health Post"
* #782149-9 "Sedie Clinic"
* #932660-4 "Kalakamati Health Post"
* #899084-8 "Kacgae Health Post"
* #822378-6 "Mosetse Health Post"
* #456797-0 "Mokgoro Clinic"
* #522018-1 "Maposa Health Post"
* #466505-5 "Kutamogoree Health Post"
* #272084-5 "Manxotai Health Post"
* #356155-2 "Dibete Health Post"
* #180702-3 "Tsokatshaa Health Post"
* #271111-7 "Mmutlane Health Post"
* #211721-6 "Makuta Health Post"
* #900214-8 "Otse Health Post"
* #691806-4 "Rungwana"
* #832575-5 "Nkange Clinic"
* #218345-7 "Mafhungo/Hubona"
* #116397-1 "Gakgatla Health Post"
* #227526-1 "Beetsha Clinic"
* #391399-3 "Lentsweletau Clinic"
* #597311-0 "Serowe Clinic"
* #165266-8 "Tshimoyapula Health Post"
* #415277-3 "Kadimo Samson Clinic"
* #299591-8 "Moiyabana Clinic"
* #477889-0 "Paje Health Post"
* #636538-1 "Majwaneng Health Post"
* #818896-3 "Dimajwe Health Post"
* #737491-1 "Mmashoro Clinic"
* #825473-2 "Russel May Clinic"
* #810456-4 "Majwana-a-dipitse Health Post"
* #835707-1 "Paje BDF Health Post"
* #126097-5 "Semitwe Health Post"
* #199921-8 "Gweta Clinic"
* #409920-6 "Lepashe Health Post"
* #803159-3 "Nshakashogwe Health Post"
* #941893-0 "Kumakwane Health Post"
* #842802-1 "Marobela Health Post"
* #294483-3 "Senete Health Post"
* #221119-1 "Magapatona Clinic"
* #899793-4 "Moroka Clinic"
* #870867-9 "Boatlaname Health Post"
* #808218-2 "Moshupa Health Post"
* #982657-9 "Sakutswane"
* #404224-8 "Nswazi Clinic"
* #991896-2 "Sebina Clinic"
* #765841-2 "Marapong Clinic"
* #950587-6 "Cwagare Health Post"
* #359075-9 "Segwagwa Health Post"
* #722511-3 "Phodisong"
* #42979-5 "Mmabesi Medical"
* #646833-4 "Mmamokhasi Clinic"
* #97580-5 "Tutume McConell Clinic"
* #826832-8 "Gamodubu Health Post"
* #456973-7 "Motswedi Clinic"
* #172824-5 "Lorwana Clinic"
* #406209-7 "Kanngwe Health Post"
* #237250-6 "Phitshane Molopo Clinic"
* #732770-3 "Lotsane Clinic"
* #167771-5 "Prison Health Post"
* #223705-5 "Dilolwe Clinic"
* #608860-3 "Magotlhwane Health Post"
* #518039-3 "Mafhikana Clinic"
* #433538-6 "Dagwi Health Post"
* #697341-6 "Sebego Clinic"
* #869718-7 "Kgwatlheng Clinic"
* #747272-3 "Lekgolobotlo Health Post"
* #253548-2 "Pitseng Clinic"
* #576287-7 "Joosub & Aysha Dada Clinic"
* #595918-4 "Ebrahim & Marriam Dada Clinic"
* #795021-5 "Lotlhakane East  Clinic"
* #843198-3 "Maunatlala Clinic"
* #194690-4 "Diabo Health Post"
* #921292-9 "Nkoyaphiri Clinic"
* #521057-0 "Weighbridge Clinic"
* #709838-7 "Parakarungu Clinic"
* #261525-0 "Gabane Health Post"
* #388278-4 "Metsimotlhabe Clinic"
* #517668-0 "Gabane  Clinic"
* #914848-7 "Mahlaku Lekganyane Clinic"
* #785970-5 "Satau Health Post"
* #773237-3 "Lesoma Health Post"
* #947960-1 "Plateau Clinic"
* #513809-4 "Mabele Health Post"
* #945939-7 "Lenyanti BDF Health Post"
* #951847-3 "Ikongwe Health Post"
* #912739-0 "Kodibeleng Health Post"
* #700560-6 "JEMIMA MEDICAL CENTRE"
* #547563-7 "Poloka Health Post"
* #276326-6 "Ramotlabaki Health Post"
* #240141-2 "STARPOLY HEALTH CLINIC"
* #996429-7 "Mokgenene Health Post"
* #404229-7 "YUNGI MEDICAL CENTRE"
* #321664-5 "Kgomokasitwa Health Post"
* #702756-8 "Lotlhakane West Clinic"
* #171223-1 "Ntlhantlhe Clinic"
* #599426-4 "Mogome Health Post"
* #199216-3 "Mokgware Health Post"
* #982082-0 "Ranaka Clinic"
* #300716-8 "Seherelela Health Post"
* #229763-8 "Molepolole Prison"
* #965687-7 "Mogonye Health Post"
* #632746-4 "Sehithwa Clinic"
* #758776-9 "Makalamabedi Clinic"
* #789739-0 "Kareng Clinic"
* #586770-0 "Ralekgetho Health Post"
* #153050-0 "SSKB (Mogoditshane BDF) Clinic"
* #419322-3 "BAC Clinic"
* #141441-6 "Vaalhoek Health Post"
* #221016-9 "Digawana Clinic"
* #806757-1 "Struizendam Health Post"
* #348593-5 "Mogojogojo Health Post"
* #793680-0 "Lesole Clinic"
* #647844-0 "Manga Clinic"
* #264929-1 "Damochujenaa Health Post"
* #947346-3 "Tshokwe Health Post"
* #740183-9 "Sefhophe Clinic"
* #706329-0 "Leetile Health Post"
* #972228-1 "Airstrip Clinic"
* #512171-0 "Madisakwane Health Post"
* #428165-5 "Mookane Clinic"
* #719032-5 "Madiba Health Post"
* #953071-8 "St Conrads Clinic"
* #796866-2 "Mowana Health Post"
* #419499-9 "Botshelo Clinic"
* #288380-9 "Sefhare Primary Hospital"
* #561274-2 "Moshupa Council Clinic"
* #360176-2 "Masukwane Health Post"
* #134420-9 "Ngwapa Health Post"
* #297825-2 "Shakwe Health Post"
* #867922-7 "Machaneng Clinic"
* #180732-0 "Mmaphashalala Health Post"
* #160838-9 "Mokobeng Health Post"
* #659894-0 "Mokoswane Health Post"
* #609667-1 "Ramokgonami Clinic"
* #785760-0 "Makwate Health post"
* #613622-0 "Moshopha Health Post"
* #458120-3 "Mhalapitsa Health Post"
* #147856-9 "Maape Health Post"
* #335661-5 "Chadibe Clinic"
* #806776-1 "Pilikwe Clinic"
* #358097-4 "Khawa Health Post"
* #393559-0 "Maun General Clinic"
* #176459-6 "Boseja Clinic"
* #798235-8 "Mathangwane Clinic"
* #608423-0 "Bodibeng Health Post"
* #490782-0 "Makakung Health Post"
* #838744-1 "Semboyo Health Post"
* #478048-2 "Phuduhudu Health Post"
* #786771-6 "Somelo Health Post"
* #947726-6 "Shashe Health Post"
* #991577-8 "Matsaudi Health Post"
* #146444-5 "Komana Health Post"
* #994083-4 "Toteng Health Post"
* #804642-7 "Sankoyo Health Post"
* #192441-4 "Moremi Health Post"
* #210542-7 "Seolwane Health Post"
* #438206-5 "Letsholathebe II Memorial District Hospital"
* #263484-8 "Manaledi Health Post"
* #889396-8 "Malaka Health Post"
* #1078910-5 "Lesenepole(Matolwane) Health Post"
* #154328-9 "Lecheng Clinic"
* #741052-5 "Radisele Clinic"
* #193948-7 "Lerala Clinic"
* #123758-5 "Gootau Health Post"
* #172273-5 "Matlhakola Health Post"
* #891412-9 "Mokungwane Health Post"
* #473400-0 "Goosekgweng Health Post"
* #305466-5 "Ratholo Health Post"
* #658384-3 "Dukwi Clinic"
* #620832-6 "Extention 3 Clinic"
* #832743-9 "Matsitama Health Post"
* #332865-5 "Kediretswe Clinic"
* #451025-1 "Khurumela Clinic"
* #921369-5 "Topisi Health Post"
* #708962-6 "Diphuduhudu Health Post"
* #678593-5 "Ncojane Clinic"
* #470942-4 "Thini Clinic"
* #761470-4 "Selolwane Health Post"
* #943097-6 "Lesilakgokong"
* #840134-1 "Moshana Health Post"
* #250219-3 "Papatlo Health Post"
* #686152-0 "Goshwe Health Post"
* #308621-2 "Matobo Health Post"
* #375908-1 "Tswaanyaneng Health Post"
* #676905-3 "Phihetswane Health Post"
* #585584-6 "Sheleketla Clinic"
* #117734-4 "Kokong Clinic"
* #584792-6 "Magoriapitse Health Post"
* #449269-0 "Tlhareseleele Health Post"
* #420871-6 "Mokhomma Health Post"
* #553760-0 "Boipelego Clinic"
* #766569-8 "Gweta Primary Hospital"
* #460350-2 "Kalfontein Clinic"
* #758579-7 "Deborah Retief Memorial Hospital"
* #360478-2 "Sese Clinic"
* #806153-3 "Selokolela Health Post"
* #377840-4 "Lorolwane Health Post"
* #373679-0 "Mogoditshane Clinic"
* #977333-4 "Shashe Mooke Health Post"
* #792566-2 "Shashe Station Health Post"
* #176666-6 "Mandunyane Health Post"
* #802273-3 "Mabesekwa Health Post"
* #611993-7 "Area S Health Post"
* #713823-3 "Area L Health Post"
* #215930-9 "Donga Clinic"
* #300052-8 "Thankane Health Post"
* #237486-6 "Pallaroad Health Post"
* #322012-6 "Mowana Health Post"
* #918847-5 "DITALALA CLINIC"
* #846914-0 "DR K TRAVEL CLINIC"
* #179797-6 "MOULICK'S FAMILY CARE"
* #262687-7 "Matlhako Health Post"
* #628767-6 "Kgoro Health Post"
* #332304-5 "Moralane Heath Post"
* #965601-8 "Mokatako Health Post"
* #120761-2 "Sheepfarm Health Post"
* #640687-0 "Moshupa SDA Clinic"
* #306646-1 "Diloro Health Post"
* #821194-8 "Sidilega Private Hospital"
* #870919-8 "Old Naledi Clinic"
* #730690-5 "Hereford Clinic"
* #893812-8 "Draihoek Health Post"
* #256008-4 "Extension 15  Clinic"
* #812755-7 "Bamalete Luthren Hospital"
* #1004633-2 "Maleshe Health Post"
* #451455-0 "Omaweneno Health Post"
* #1019252-4 "Makopong Clinic"
* #411725-5 "BOFWA"
* #571710-3 "Mmopane  Health Post"
* #395933-5 "Tsabong Clinic"
* #352619-1 "Middlepits Clinic"
* #936040-5 "Gakhibane Health Post"
* #440145-1 "Matshwane Clinic"
* #617724-0 "Shorobe Clinic"
* #445141-5 "Maubelo Health Post"
* #1018376-2 "Khuis Health Post"
* #669638-9 "Kolonkwaneng Health Post"
* #428747-0 "Jackalas 1 Health  Post"
* #496348-4 "Kgari  Health  Post"
* #469135-8 "Gungwe Health Post"
* #762953-8 "Tsau Clinic"
* #338699-2 "Kudumatse Health Post"
* #755644-2 "Baitiredi Clinic"
* #442946-0 "Phuthadikobo Clinic"
* #609449-4 "Maun BDF Clinic"
* #604111-5 "Thito Health Post"
* #1060319-9 "Chanoga Health Post"
* #940107-6 "Bonwapitse Health Post"
* #799821-4 "Shadishadi Health  Post"
* #693957-3 "Boswelakoko Clinic"
* #943273-3 "Hatsalatladi Health Post"
* #902553-7 "Tsonyane Health Post"
* #188683-7 "Mogonono Health Post"
* #782241-4 "Borakalalo Clinic"
* #139849-4 "Gakuto Health Post"
* #236213-5 "Kopong Clinic"
* #722327-4 "Kgope Health Post"
* #357664-2 "Mmanoko Health Post"
* #169155-9 "SHAA\\Bosele Health Post"
* #304722-2 "Morama Clinic"
* #390050-3 "Gantsi Clinic"
* #972813-0 "Lefhoko Health Post"
* #933244-6 "Lekgwapeng Health  Post"
* #969643-6 "Mmatseta Health Post"
* #728666-9 "Magokotswane  Health Post"
* #657606-0 "Mokowana /Mosweu Health Post"
* #377230-8 "Kachikau Clinic"
* #283972-8 "Kazungula Health Post"
* #807923-8 "Kavimba Clinic"
* #833536-6 "Kasane Health Post"
* #763910-7 "Mahetlwe Health Post"
* #918103-3 "Julia Molefhe Clinic"
* #206797-3 "Letoreng Health Post"
* #493151-5 "Lephepe Clinic"
* #517133-5 "Broadhurst I Clinic"
* #371418-5 "Broadhurst II Clinic"
* #678455-7 "Kagiso Clinic"
* #478977-2 "Sebele Clinic"
* #671504-9 "Extension II  Clinic"
* #190567-8 "Bontleng Clinic"
* #969077-7 "BOFWA Clinic"
* #218760-7 "Broadhurst Traditional Area Clinic"
* #809716-4 "Extension 14 Clinic"
* #155318-9 "Kgatelopele/Block 8 Clinic"
* #991139-7 "Tlokweng Main Clinic"
* #521011-7 "Mochudi 2  Clinic"
* #142959-6 "Boseja 1  Clinic"
* #653316-0 "Makakatlela  Clinic"
* #100051-2 "Senyawe Health Post"
* #550673-8 "Tshesebe Clinic"
* #159292-2 "Tsamaya Clinic"
* #134033-0 "Phaphane  Clinic"
* #933228-9 "Mmokolodi Clinic"
* #118883-8 "Mochudi 1  Clinic"
* #187595-4 "Moreomabele Health Post"
* #503641-3 "Morwa  Clinic"
* #674502-0 "Sedibeng Health Post"
* #422403-6 "Kgosing Clinic"
* #952729-2 "Ditshegwane Clinic"
* #371326-0 "Modipane Health Post"
* #169913-1 "Boseja 2  Clinic"
* #375485-0 "Dikwididi Health Post"
* #325329-1 "Molepolole Council Clinic"
* #849220-9 "Makgophana Health Post"
* #757017-9 "Rasesa  Clinic"
* #121018-6 "Malolwane  Clinic"
* #178427-1 "Matebele Health Post"
* #119826-6 "Pilane Health Post"
* #143993-4 "Dikhukhung Health Post"
* #760197-4 "Robelela Health Post"
* #687580-1 "Tsetseng Health Post"
* #193195-5 "Mabeleng Health Post"
* #326823-2 "Khekhenye Health Post"
* #544933-5 "Borotsi Clinic"
* #878856-4 "Tobane Health Post"
* #385056-7 "Makunda Health Post"
* #933031-7 "Chobokwane Health Post"
* #233523-0 "Metsimantsho Health Post"
* #858271-0 "Mmathubudukwane  Clinic"
* #635660-4 "Oliphant's Drift  Clinic"
* #348819-4 "Bere Health Post"
* #292794-5 "Gasita Clinic"
* #868940-8 "Oodi  Clinic"
* #273439-0 "Kole Clinic"
* #431904-2 "Nyangabgwe Hospital"
* #103328-1 "Mahalapye District Hospital"
* #811879-6 "Mafitlhakgosi Clinic"
* #431094-2 "Mahotshwane Health Post"
* #848251-5 "St Josephs Mission Clinic"
* #287388-3 "Palapye Primary Hospital"
* #326771-3 "Sekondomboro Health Post"
* #440231-9 "Etsha 6 Clinic"
* #702688-3 "Etsha 13 Clinic"
* #405411-0 "Etsha 1 Health Post"
* #820551-0 "Grootlagte Health Post"
* #162465-9 "Mabuo Health Post"
* #477648-0 "Modikwane Health Post (Serowe)"
* #523178-2 "Mogorosi Health Post"
* #557244-1 "Malatswai Health Post"
* #834026-7 "Tati Siding Clinic"
* #609192-0 "Letlhakane Primary Hospital"
* #770793-8 "Itekeng (Area W) Clinic"
* #325792-0 "Mokoboxane Health  Post"
* #703653-6 "Gojwane Health Post"
* #703810-2 "Tlhalogang Health Post"
* #507725-0 "Foley Health Post"
* #274913-3 "Manyanda Health Post"
* #557750-7 "Natale Health Post"
* #643270-2 "Gaborone West Clinic"
* #585979-8 "Mulambakwena Health Post"
* #957417-9 "Masunga Clinic"
* #348737-8 "Nlaphkwane Clinic"
* #336494-0 "Zwenshambe Health Post"
* #388754-4 "Mapoka Clinic"
* #540164-1 "Tloaneng Health Post"
* #478872-5 "Mosojane Health Post"
* #981309-8 "Letsholathebe Health Post"
* #602553-0 "Pole Health Post"
* #917324-6 "Sechele Health Post"
* #938343-1 "Kokotsha Health Post"
* #539393-9 "New Age Clinic"
* #409516-2 "Werda Clinic"
* #784733-8 "Maralaleng Health Post"
* #846940-5 "Gulubane Health Post"
* #384465-1 "Masingwaneng Health Post"
* #622014-9 "Botalaote/Toteng Health Post"
* #827227-0 "Bogogobo Health Post"
* #573363-9 "Mambo Health Post"
* #414241-0 "Kisa Health Post"
* #465070-1 "Rappelspan Health Post"
* #448812-8 "Bodungwane Health Post"
* #418397-6 "Khurutshe Health Post"
* #361644-8 "Leshibitse Health Post"
* #456996-8 "Mochudi Prisons Sick Bay Health Post"
* #724416-3 "Malotwana Health Post"
* #927959-7 "Zutshwa Health Post"
* #125795-5 "Maitengwe Clinic"
* #697110-5 "Moeti Clinic"
* #288910-3 "Matlapana Health Post"
* #539949-8 "Maun Clinic"
* #646788-0 "Bothatogo Health Post"
* #407358-1 "Mababe Health Post"
* #275295-4 "Manyana Clinic"
* #245426-2 "Goodhope Clinic"
* #713820-9 "Majaalela Health Post"
* #618772-8 "New Xade Clinic"
* #881345-3 "Qabo Health Post"
* #329309-9 "Kuke Health Post"
* #431261-7 "East Hanahai Health Post"
* #634692-8 "West Hanahai Health Post"
* #757774-5 "Medie Health Post"
* #712290-6 "Sojwe Clinic"
* #863362-0 "Mantshwabisi Health Post"
* #407464-7 "Serinane Health Post"
* #974945-8 "Loologane Health Post"
* #356568-6 "Kweneng Health  Post"
* #331961-3 "Metsibotlhoko Health Post"
* #359199-7 "Mosolotshane Health Post"
* #286718-2 "Kwando BDF Health Post"
* #793318-7 "Moeng  College Health Post"
* #156495-4 "Morupule Coliery Clinic"
* #533191-3 "Nutrition Clinic"
* #305620-7 "Thabala Clinic"
* #732845-3 "Newtown Clinic"
* #895295-4 "Chukumuchu Health Post"
* #239497-1 "Kajaja Health Post"
* #866139-9 "Gobojango Health Post"
* #674820-6 "Semolale Clinic"
* #461911-0 "Tsetsebjwe Clinic"
* #908419-5 "Molalatau Health Post"
* #811002-5 "Lepokole Health Post"
* #170913-8 "Mabolwe Health Post"
* #356146-1 "Mathathane Clinic"
* #854774-7 "Lentswelemoriti Health Post"
* #310115-1 "Broadhurst III Clinic"
* #542046-8 "Seronga Clinic"
* #245929-5 "Nokaneng Clinic"
* #484939-4 "Xakao Clinic"
* #218766-4 "Gumare Clinic"
* #410981-5 "Qangwa Clinic"
* #621771-5 "Sepopa Clinic"
* #908115-9 "Gunutsoga Health Post"
* #290937-2 "Kauxwi Health Post"
* #209107-2 "Mogotlho Health Post"
* #646188-3 "Habu Health Post"
* #379558-0 "Nxaunxau Health Post"
* #816069-9 "Mohembo/Nxomokao Health Post"
* #554994-4 "Ngarange Health Post"
* #146770-3 "Nxamasere Health Post"
* #245847-9 "Ikoga Health Post"
* #249838-4 "Ghani Health Post"
* #257034-9 "Shakawe Clinic"
* #320845-1 "Goodhope Primary Hospital"
* #295406-3 "O.K. CHEMIST"
* #582552-6 "Hukuntsi Clinic"
* #349554-6 "Make Health Post"
* #908500-2 "Ncaang Health Post"
* #547193-3 "Inalegolo Health Post"
* #751937-4 "Lehututu Health Post"
* #560691-8 "Lokgwabe Health Post"
* #829710-3 "Monong Health Post"
* #758986-4 "Tshane Health Post"
* #588661-9 "Phuduhudu Health Post"
* #120428-8 "Ukhwi Health Post"
* #802310-3 "Moselebe Health Post"
* #356085-1 "Hunhukwe Health Post"
* #432283-0 "Pitsane Clinic"
* #455460-6 "Mmathethe Clinic"
* #894895-2 "Mabule Clinic"
* #977671-7 "Hebron Clinic"
* #227847-1 "Metlobo Clinic"
* #975887-1 "Ramatlabama Clinic"
* #965830-3 "Tshidilamolomo Clinic"
* #399845-7 "Ditlharapa Health Post"
* #765941-0 "Gathwane Health Post"
* #515196-4 "Mmakgori Health Post"
* #381272-4 "Mokgomane Health Post"
* #244463-6 "Rakhuna Health Post"
* #842218-0 "Sekhutlhane Health Post"
* #828861-5 "Metlojane Health Post"
* #844338-4 "Tsopeng Clinic"
* #562246-9 "Peleng Central Clinic"
* #553731-1 "Woodhall Clinic"
* #889476-8 "Mogobane Clinic"
* #481757-3 "Lesetlhana Clinic"
* #199894-7 "Ramotswa Station/ Taung Clinic"
* #568461-8 "Otse Clinic"
* #528798-2 "Siga Clinic"
* #256522-4 "Botswana Police College"
* #958721-3 "Metsimaswaane"
* #350353-9 "Mogobane Health Post"
* #390975-1 "Khakhea Clinic"
* #757731-5 "Tshimologo Clinic"
* #297961-5 "Morwamosu Clinic"
* #911481-0 "Keng Health Post"
* #475203-6 "Khonkhwa Health Post"
* #138941-0 "Itholoke Health Post"
* #357636-0 "Sekoma Health Post"
* #334207-8 "Letlhakane Clinic"
* #828915-9 "Tawana Clinic"
* #556891-0 "Khumaga  Health  Post"
* #682954-3 "Mokubilo  Health  Post"
* #933411-1 "Xhumo Clinic"
* #823556-6 "Mmatshumo Clinic"
* #326326-6 "Mopipi Clinic"
* #490856-2 "Motopi Clinic"
* #474061-9 "Kedia Health  Post"
* #886790-5 "Rakops Health Post"
* #885823-5 "Mmadikola  Health Post"
* #429230-6 "Khwee Health Post"
* #781688-7 "Moreomaoto Health Post"
* #317664-1 "Mosu Health Post"
* #328148-2 "Toromoja  Health Post"
* #454413-6 "Mmea Health Post"
* #189831-1 "Xere Health  Post"
* #178647-4 "Leporung Health Post"
* #366872-0 "Tshwaragano Clinic"
* #739058-6 "Tatitown Clinic"
* #457469-5 "Botsalano Clinic"
* #743567-0 "Masego Clinic"
* #787329-2 "Boikhutso Clinic"
* #433002-3 "Ntshe Clinic"
* #453145-5 "Lapologang Clinic"
* #198322-0 "Botshabelo Clinic"
* #228068-3 "Sesame Clinic"
* #766051-7 "South East"
* #785994-5 "Industrial Clinic"
* #463123-0 "Tapologong Clinic"
* #688812-7 "Mabeleapudi Clinic"
* #634422-0 "Gudigwa Health Post"
* #680155-9 "Thebephatshwa AirBase"
* #535023-6 "Ngware Clinic"
* #644488-9 "Salajwe Clinic"
* #410982-3 "Moshaweng Clinic"
* #977674-1 "Khudumelapye Clinic"
* #751658-6 "Botlhapatlou Clinic"
* #741948-4 "Malwelwe Health Post"
* #956424-6 "Dutlwe Health Post"
* #845952-1 "Kotolaname Health Post"
* #375911-5 "Monwane Health Post"
* #516649-1 "Kaudwane Health Post"
* #396493-9 "Sesung Health Post"
* #171566-3 "Botswelelo Clinic"
* #814872-8 "Jubilee Clinic"
* #992675-9 "Sorilatholo Health Post"
* #358673-2 "Tubu Health Post"
* #210240-8 "Tobela Clinic"
* #484650-7 "Takatokwane Clinic"

ValueSet: VSMasterFacilityListCodes
Id: vs-master-facility-list
Title: "Master Facility List (MFL) Codes"
Description: "Codes found in the MFL."
* ^experimental = false
* include codes from system CSMasterFacilityListCodes