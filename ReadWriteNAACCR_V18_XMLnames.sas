/* SAS PROGRAM TO READ AND WRITE NAACCR V18 RECORD LAYOUTS */
/* THIS VARIANT USES NAACCR XML NAMES (NAACCR ID) FOR SAS VARIABLE NAMES */

*** CHANGE FILE REFERENCES FOR INPUT AND OUTPUT FLAT ASCII FILES ***;

filename inv18     'V:\data\CANCER\NAACCR\DataStandardsAndDictionary\V18\test24194.N18';
filename outv18    'V:\data\CANCER\NAACCR\DataStandardsAndDictionary\V18\Test2.txd';

data SAStest;  
* infile inv18 lrecl =  4048 pad missover; /* INCIDENCE */
* infile inv18 lrecl =  6934 pad missover; /* CONFIDENTIAL */
  infile inv18 lrecl = 24194 pad missover; /* TEXT */

/* INCIDENCE VARIABLES */
input @1     recordType   $char1.   @;   label   recordType   ='10_Record Type - recordType - NaaccrData';   /* Revised */
input @2     registryType   $char1.   @;   label   registryType   ='30_Registry Type - registryType - NaaccrData';   /* Revised */
*input @3   reserved00   $char14.   @;   *label   reserved00   ='37_Reserved 00 - reserved00 - Tumor';   /* Revised */
input @17    naaccrRecordVersion   $char3.   @;   label   naaccrRecordVersion   ='50_NAACCR Record Version - naaccrRecordVersion - NaaccrData';   /* Revised */
input @20    npiRegistryId   $char10.   @;   label   npiRegistryId   ='45_NPI--Registry ID - npiRegistryId - NaaccrData';   /* Revised */
input @30    registryId   $char10.   @;   label   registryId   ='40_Registry ID - registryId - NaaccrData';   /* Revised */
input @40    tumorRecordNumber   $char2.   @;   label   tumorRecordNumber   ='60_Tumor Record Number - tumorRecordNumber - Tumor';   /* Revised */
input @42    patientIdNumber   $char8.   @;   label   patientIdNumber   ='20_Patient ID Number - patientIdNumber - Patient';   /* Revised */
input @50    patientSystemIdHosp   $char8.   @;   label   patientSystemIdHosp   ='21_Patient System ID-Hosp - patientSystemIdHosp - Tumor';   /* Revised */
*input @58    reserved01   $char16.   @;   *label   reserved01   ='370_Reserved 01 - reserved01 - Tumor';   /* Revised */
input @74    addrAtDxCity   $char50.   @;   label   addrAtDxCity   ='70_Addr at DX--City - addrAtDxCity - Tumor';   /* Revised */
input @124   addrAtDxState   $char2.   @;   label   addrAtDxState   ='80_Addr at DX--State - addrAtDxState - Tumor';   /* Revised */
input @126   addrAtDxPostalCode   $char9.   @;   label   addrAtDxPostalCode   ='100_Addr at DX--Postal Code - addrAtDxPostalCode - Tumor';   /* Revised */
input @135   countyAtDx   $char3.   @;   label   countyAtDx   ='90_County at DX Reported - countyAtDx - Tumor';   /* Revised */
*input @138   reserved16   $char12.   @;   *label   reserved16   ='2450_Reserved 16 - reserved16 - Tumor';   /* Revised */
input @150   countyAtDxAnalysis   $char3.   @;   label   countyAtDxAnalysis   ='89_County at DX Analysis - countyAtDxAnalysis - Tumor';   /* New */
input @153   geolocationid19708090   $char12.   @;   label   geolocationid19708090   ='351_GeoLocationID - 1970/80/90 - geolocationid19708090 - Tumor';   /* New */
input @153   stateAtDxGeocode19708090   $char2.   @;   label   stateAtDxGeocode19708090   ='81_State at DX Geocode 1970/80/90 - stateAtDxGeocode19708090 - Tumor';   /* New */
input @155   countyAtDxGeocode1990   $char3.   @;   label   countyAtDxGeocode1990   ='94_County at DX Geocode 1970/80/90 - countyAtDxGeocode1990 - Tumor';   /* Revised */
input @158   censusTract19708090   $char6.   @;   label   censusTract19708090   ='110_Census Tract 1970/80/90 - censusTract19708090 - Tumor';   /* Revised */
input @164   censusBlockGrp197090   $char1.   @;   label   censusBlockGrp197090   ='368_Census Block Grp 1970/80/90 - censusBlockGrp197090 - Tumor';   /* Revised */
input @165   censusCodSys19708090   $char1.   @;   label   censusCodSys19708090   ='120_Census Cod Sys 1970/80/90 - censusCodSys19708090 - Tumor';   /* Revised */
input @166   censusTrCert19708090   $char1.   @;   label   censusTrCert19708090   ='364_Census Tr Cert 1970/80/90 - censusTrCert19708090 - Tumor';   /* Revised */
input @167   geolocationid2000   $char12.   @;   label   geolocationid2000   ='352_GeoLocationID - 2000 - geolocationid2000 - Tumor';   /* New */
input @167   stateAtDxGeocode2000   $char2.   @;   label   stateAtDxGeocode2000   ='82_State at DX Geocode 2000 - stateAtDxGeocode2000 - Tumor';   /* New */
input @169   countyAtDxGeocode2000   $char3.   @;   label   countyAtDxGeocode2000   ='95_County at DX Geocode2000 - countyAtDxGeocode2000 - Tumor';   /* Revised */
input @172   censusTract2000   $char6.   @;   label   censusTract2000   ='130_Census Tract 2000 - censusTract2000 - Tumor';   /* Revised */
input @178   censusBlockGroup2000   $char1.   @;   label   censusBlockGroup2000   ='362_Census Block Group 2000 - censusBlockGroup2000 - Tumor';   /* Revised */
input @179   censusTrCertainty2000   $char1.   @;   label   censusTrCertainty2000   ='365_Census Tr Certainty 2000 - censusTrCertainty2000 - Tumor';   /* Revised */
input @180   geolocationid2010   $char12.   @;   label   geolocationid2010   ='353_GeoLocationID - 2010 - geolocationid2010 - Tumor';   /* New */
input @180   stateAtDxGeocode2010   $char2.   @;   label   stateAtDxGeocode2010   ='83_State at DX Geocode 2010 - stateAtDxGeocode2010 - Tumor';   /* New */
input @182   countyAtDxGeocode2010   $char3.   @;   label   countyAtDxGeocode2010   ='96_County at DX Geocode2010 - countyAtDxGeocode2010 - Tumor';   /* Revised */
input @185   censusTract2010   $char6.   @;   label   censusTract2010   ='135_Census Tract 2010 - censusTract2010 - Tumor';   /* Revised */
input @191   censusBlockGroup2010   $char1.   @;   label   censusBlockGroup2010   ='363_Census Block Group 2010 - censusBlockGroup2010 - Tumor';   /* Revised */
input @192   censusTrCertainty2010   $char1.   @;   label   censusTrCertainty2010   ='367_Census Tr Certainty 2010 - censusTrCertainty2010 - Tumor';   /* Revised */
input @193   stateAtDxGeocode2020   $char2.   @;   label   stateAtDxGeocode2020   ='84_State at DX Geocode 2020 - stateAtDxGeocode2020 - Tumor';   /* New */
input @193   geolocationid2020   $char12.   @;   label   geolocationid2020   ='354_GeoLocationID - 2020 - geolocationid2020 - Tumor';   /* New */
input @195   countyAtDxGeocode2020   $char3.   @;   label   countyAtDxGeocode2020   ='97_County at DX Geocode2020 - countyAtDxGeocode2020 - Tumor';   /* Revised */
input @198   censusTract2020   $char6.   @;   label   censusTract2020   ='125_Census Tract 2020 - censusTract2020 - Tumor';   /* New */
input @204   censusBlockGroup2020   $char1.   @;   label   censusBlockGroup2020   ='361_Census Block Group 2020 - censusBlockGroup2020 - Tumor';   /* New */
input @205   censusTractCertainty2020   $char1.   @;   label   censusTractCertainty2020   ='369_Census Tract Certainty 2020 - censusTractCertainty2020 - Tumor';   /* New */
input @206   maritalStatusAtDx   $char1.   @;   label   maritalStatusAtDx   ='150_Marital Status at DX - maritalStatusAtDx - Tumor';   /* Revised */
input @207   race1   $char2.   @;   label   race1   ='160_Race 1 - race1 - Patient';   /* Revised */
input @209   race2   $char2.   @;   label   race2   ='161_Race 2 - race2 - Patient';   /* Revised */
input @211   race3   $char2.   @;   label   race3   ='162_Race 3 - race3 - Patient';   /* Revised */
input @213   race4   $char2.   @;   label   race4   ='163_Race 4 - race4 - Patient';   /* Revised */
input @215   race5   $char2.   @;   label   race5   ='164_Race 5 - race5 - Patient';   /* Revised */
input @217   raceCodingSysCurrent   $char1.   @;   label   raceCodingSysCurrent   ='170_Race Coding Sys--Current - raceCodingSysCurrent - Patient';   /* Revised */
input @218   raceCodingSysOriginal   $char1.   @;   label   raceCodingSysOriginal   ='180_Race Coding Sys--Original - raceCodingSysOriginal - Patient';   /* Revised */
input @219   spanishHispanicOrigin   $char1.   @;   label   spanishHispanicOrigin   ='190_Spanish/Hispanic Origin - spanishHispanicOrigin - Patient';   /* Revised */
input @220   computedEthnicity   $char1.   @;   label   computedEthnicity   ='200_Computed Ethnicity - computedEthnicity - Patient';   /* Revised */
input @221   computedEthnicitySource   $char1.   @;   label   computedEthnicitySource   ='210_Computed Ethnicity Source - computedEthnicitySource - Patient';   /* Revised */
input @222   sex   $char1.   @;   label   sex   ='220_Sex - sex - Patient';   /* Revised */
input @223   ageAtDiagnosis   $char3.   @;   label   ageAtDiagnosis   ='230_Age at Diagnosis - ageAtDiagnosis - Tumor';   /* Revised */
input @226   dateOfBirth   $char8.   @;   label   dateOfBirth   ='240_Date of Birth - dateOfBirth - Patient';   /* Revised */
input @234   dateOfBirthFlag   $char2.   @;   label   dateOfBirthFlag   ='241_Date of Birth Flag - dateOfBirthFlag - Patient';   /* Revised */
input @236   birthplace   $char3.   @;   label   birthplace   ='250_Birthplace - birthplace - Patient';   /* Revised */
input @239   censusOccCode19702000   $char3.   @;   label   censusOccCode19702000   ='270_Census Occ Code 1970-2000 - censusOccCode19702000 - Tumor';   /* Revised */
input @242   censusIndCode19702000   $char3.   @;   label   censusIndCode19702000   ='280_Census Ind Code 1970-2000 - censusIndCode19702000 - Tumor';   /* Revised */
input @245   occupationSource   $char1.   @;   label   occupationSource   ='290_Occupation Source - occupationSource - Tumor';   /* Revised */
input @246   industrySource   $char1.   @;   label   industrySource   ='300_Industry Source - industrySource - Tumor';   /* Revised */
input @247   textUsualOccupation   $char100.   @;   label   textUsualOccupation   ='310_Text--Usual Occupation - textUsualOccupation - Tumor';   /* Revised */
input @347   textUsualIndustry   $char100.   @;   label   textUsualIndustry   ='320_Text--Usual Industry - textUsualIndustry - Tumor';   /* Revised */
input @447   censusOccIndSys7000   $char1.   @;   label   censusOccIndSys7000   ='330_Census Occ/Ind Sys 70-00 - censusOccIndSys7000 - Tumor';   /* Revised */
input @448   nhiaDerivedHispOrigin   $char1.   @;   label   nhiaDerivedHispOrigin   ='191_NHIA Derived Hisp Origin - nhiaDerivedHispOrigin - Patient';   /* Revised */
input @449   raceNapiia   $char2.   @;   label   raceNapiia   ='193_Race--NAPIIA(derived API) - raceNapiia - Patient';   /* Revised */
input @451   ihsLink   $char1.   @;   label   ihsLink   ='192_IHS Link - ihsLink - Patient';   /* Revised */
input @452   gisCoordinateQuality   $char2.   @;   label   gisCoordinateQuality   ='366_GIS Coordinate Quality - gisCoordinateQuality - Tumor';   /* Revised */
input @454   ruralurbanContinuum1993   $char2.   @;   label   ruralurbanContinuum1993   ='3300_RuralUrban Continuum 1993 - ruralurbanContinuum1993 - Tumor';   /* Revised */
input @456   ruralurbanContinuum2003   $char2.   @;   label   ruralurbanContinuum2003   ='3310_RuralUrban Continuum 2003 - ruralurbanContinuum2003 - Tumor';   /* Revised */
input @458   ruralurbanContinuum2013   $char2.   @;   label   ruralurbanContinuum2013   ='3312_RuralUrban Continuum 2013 - ruralurbanContinuum2013 - Tumor';   /* Revised */
input @460   ruca2000   $char1.   @;   label   ruca2000   ='339_RUCA 2000 - ruca2000 - Tumor';   /* New */
input @461   ruca2010   $char1.   @;   label   ruca2010   ='341_RUCA 2010 - ruca2010 - Tumor';   /* New */
input @462   uric2000   $char1.   @;   label   uric2000   ='345_URIC 2000 - uric2000 - Tumor';   /* New */
input @463   uric2010   $char1.   @;   label   uric2010   ='346_URIC 2010 - uric2010 - Tumor';   /* New */
input @464   addrAtDxCountry   $char3.   @;   label   addrAtDxCountry   ='102_Addr at DX--Country - addrAtDxCountry - Tumor';   /* Revised */
input @467   addrCurrentCountry   $char3.   @;   label   addrCurrentCountry   ='1832_Addr Current--Country - addrCurrentCountry - Patient';   /* Revised */
input @470   birthplaceState   $char2.   @;   label   birthplaceState   ='252_Birthplace--State - birthplaceState - Patient';   /* Revised */
input @472   birthplaceCountry   $char3.   @;   label   birthplaceCountry   ='254_Birthplace--Country - birthplaceCountry - Patient';   /* Revised */
input @475   followupContactCountry   $char3.   @;   label   followupContactCountry   ='1847_FollowUp Contact--Country - followupContactCountry - Tumor';   /* Revised */
input @478   placeOfDeathState   $char2.   @;   label   placeOfDeathState   ='1942_Place of Death--State - placeOfDeathState - Patient';   /* Revised */
input @480   placeOfDeathCountry   $char3.   @;   label   placeOfDeathCountry   ='1944_Place of Death--Country - placeOfDeathCountry - Patient';   /* Revised */
input @483   censusIndCode2010   $char4.   @;   label   censusIndCode2010   ='272_Census Ind Code 2010 CDC - censusIndCode2010 - Tumor';   /* Revised */
input @487   censusOccCode2010   $char4.   @;   label   censusOccCode2010   ='282_Census Occ Code 2010 CDC - censusOccCode2010 - Tumor';   /* Revised */
input @491   censusTrPovertyIndictr   $char1.   @;   label   censusTrPovertyIndictr   ='145_Census Tr Poverty Indictr - censusTrPovertyIndictr - Tumor';   /* Revised */
*input @492   reserved02   $char50.   @;   *label   reserved02   ='530_Reserved 02 - reserved02 - Tumor';   /* Revised */
input @542   sequenceNumberCentral   $char2.   @;   label   sequenceNumberCentral   ='380_Sequence Number--Central - sequenceNumberCentral - Tumor';   /* Revised */
input @544   dateOfDiagnosis   $char8.   @;   label   dateOfDiagnosis   ='390_Date of Diagnosis - dateOfDiagnosis - Tumor';   /* Revised */
input @552   dateOfDiagnosisFlag   $char2.   @;   label   dateOfDiagnosisFlag   ='391_Date of Diagnosis Flag - dateOfDiagnosisFlag - Tumor';   /* Revised */
input @554   primarySite   $char4.   @;   label   primarySite   ='400_Primary Site - primarySite - Tumor';   /* Revised */
input @558   laterality   $char1.   @;   label   laterality   ='410_Laterality - laterality - Tumor';   /* Revised */
input @559   morphTypebehavIcdO2   $char5.   @;   label   morphTypebehavIcdO2   ='419_Morph--Type&Behav ICD-O-2 - morphTypebehavIcdO2 - Tumor';   /* Revised */
input @559   histologyIcdO2   $char4.   @;   label   histologyIcdO2   ='420_Histology (92-00) ICD-O-2 - histologyIcdO2 - Tumor';   /* Revised */
input @563   behaviorIcdO2   $char1.   @;   label   behaviorIcdO2   ='430_Behavior (92-00) ICD-O-2 - behaviorIcdO2 - Tumor';   /* Revised */
input @564   histologicTypeIcdO3   $char4.   @;   label   histologicTypeIcdO3   ='522_Histologic Type ICD-O-3 - histologicTypeIcdO3 - Tumor';   /* Revised */
input @564   morphTypebehavIcdO3   $char5.   @;   label   morphTypebehavIcdO3   ='521_Morph--Type&Behav ICD-O-3 - morphTypebehavIcdO3 - Tumor';   /* Revised */
input @568   behaviorCodeIcdO3   $char1.   @;   label   behaviorCodeIcdO3   ='523_Behavior Code ICD-O-3 - behaviorCodeIcdO3 - Tumor';   /* Revised */
input @569   grade   $char1.   @;   label   grade   ='440_Grade - grade - Tumor';   /* Revised */
input @570   gradePathValue   $char1.   @;   label   gradePathValue   ='441_Grade Path Value - gradePathValue - Tumor';   /* Revised */
input @571   gradePathSystem   $char1.   @;   label   gradePathSystem   ='449_Grade Path System - gradePathSystem - Tumor';   /* Revised */
input @572   siteCodingSysCurrent   $char1.   @;   label   siteCodingSysCurrent   ='450_Site Coding Sys--Current - siteCodingSysCurrent - Tumor';   /* Revised */
input @573   siteCodingSysOriginal   $char1.   @;   label   siteCodingSysOriginal   ='460_Site Coding Sys--Original - siteCodingSysOriginal - Tumor';   /* Revised */
input @574   morphCodingSysCurrent   $char1.   @;   label   morphCodingSysCurrent   ='470_Morph Coding Sys--Current - morphCodingSysCurrent - Tumor';   /* Revised */
input @575   morphCodingSysOriginl   $char1.   @;   label   morphCodingSysOriginl   ='480_Morph Coding Sys--Originl - morphCodingSysOriginl - Tumor';   /* Revised */
input @576   diagnosticConfirmation   $char1.   @;   label   diagnosticConfirmation   ='490_Diagnostic Confirmation - diagnosticConfirmation - Tumor';   /* Revised */
input @577   typeOfReportingSource   $char1.   @;   label   typeOfReportingSource   ='500_Type of Reporting Source - typeOfReportingSource - Tumor';   /* Revised */
input @578   casefindingSource   $char2.   @;   label   casefindingSource   ='501_Casefinding Source - casefindingSource - Tumor';   /* Revised */
input @580   ambiguousTerminologyDx   $char1.   @;   label   ambiguousTerminologyDx   ='442_Ambiguous Terminology DX - ambiguousTerminologyDx - Tumor';   /* Revised */
input @581   dateConclusiveDx   $char8.   @;   label   dateConclusiveDx   ='443_Date Conclusive DX - dateConclusiveDx - Tumor';   /* Revised */
input @589   dateConclusiveDxFlag   $char2.   @;   label   dateConclusiveDxFlag   ='448_Date Conclusive DX Flag - dateConclusiveDxFlag - Tumor';   /* Revised */
input @591   multTumRptAsOnePrim   $char2.   @;   label   multTumRptAsOnePrim   ='444_Mult Tum Rpt as One Prim - multTumRptAsOnePrim - Tumor';   /* Revised */
input @593   dateOfMultTumors   $char8.   @;   label   dateOfMultTumors   ='445_Date of Mult Tumors - dateOfMultTumors - Tumor';   /* Revised */
input @601   dateOfMultTumorsFlag   $char2.   @;   label   dateOfMultTumorsFlag   ='439_Date of Mult Tumors Flag - dateOfMultTumorsFlag - Tumor';   /* Revised */
input @603   multiplicityCounter   $char2.   @;   label   multiplicityCounter   ='446_Multiplicity Counter - multiplicityCounter - Tumor';   /* Revised */
*input @605   reserved03   $char100.   @;   *label   reserved03   ='680_Reserved 03 - reserved03 - Tumor';   /* Revised */
input @705   npiReportingFacility   $char10.   @;   label   npiReportingFacility   ='545_NPI--Reporting Facility - npiReportingFacility - Tumor';   /* Revised */
input @715   reportingFacility   $char10.   @;   label   reportingFacility   ='540_Reporting Facility - reportingFacility - Tumor';   /* Revised */
input @725   npiArchiveFin   $char10.   @;   label   npiArchiveFin   ='3105_NPI--Archive FIN - npiArchiveFin - Tumor';   /* Revised */
input @735   archiveFin   $char10.   @;   label   archiveFin   ='3100_Archive FIN - archiveFin - Tumor';   /* Revised */
input @745   accessionNumberHosp   $char9.   @;   label   accessionNumberHosp   ='550_Accession Number--Hosp - accessionNumberHosp - Tumor';   /* Revised */
input @754   sequenceNumberHospital   $char2.   @;   label   sequenceNumberHospital   ='560_Sequence Number--Hospital - sequenceNumberHospital - Tumor';   /* Revised */
input @756   abstractedBy   $char3.   @;   label   abstractedBy   ='570_Abstracted By - abstractedBy - Tumor';   /* Revised */
input @759   dateOf1stContact   $char8.   @;   label   dateOf1stContact   ='580_Date of 1st Contact - dateOf1stContact - Tumor';   /* Revised */
input @767   dateOf1stContactFlag   $char2.   @;   label   dateOf1stContactFlag   ='581_Date of 1st Contact Flag - dateOf1stContactFlag - Tumor';   /* Revised */
input @769   dateOfInptAdm   $char8.   @;   label   dateOfInptAdm   ='590_Date of Inpt Adm - dateOfInptAdm - Tumor';   /* Revised */
input @777   dateOfInptAdmFlag   $char2.   @;   label   dateOfInptAdmFlag   ='591_Date of Inpt Adm Flag - dateOfInptAdmFlag - Tumor';   /* Revised */
input @779   dateOfInptDisch   $char8.   @;   label   dateOfInptDisch   ='600_Date of Inpt Disch - dateOfInptDisch - Tumor';   /* Revised */
input @787   dateOfInptDischFlag   $char2.   @;   label   dateOfInptDischFlag   ='601_Date of Inpt Disch Flag - dateOfInptDischFlag - Tumor';   /* Revised */
input @789   inpatientStatus   $char1.   @;   label   inpatientStatus   ='605_Inpatient Status - inpatientStatus - Tumor';   /* Revised */
input @790   classOfCase   $char2.   @;   label   classOfCase   ='610_Class of Case - classOfCase - Tumor';   /* Revised */
input @792   primaryPayerAtDx   $char2.   @;   label   primaryPayerAtDx   ='630_Primary Payer at DX - primaryPayerAtDx - Tumor';   /* Revised */
input @794   rxHospSurgApp2010   $char1.   @;   label   rxHospSurgApp2010   ='668_RX Hosp--Surg App 2010 - rxHospSurgApp2010 - Tumor';   /* Revised */
input @795   rxHospSurgPrimSite   $char2.   @;   label   rxHospSurgPrimSite   ='670_RX Hosp--Surg Prim Site - rxHospSurgPrimSite - Tumor';   /* Revised */
input @797   rxHospScopeRegLnSur   $char1.   @;   label   rxHospScopeRegLnSur   ='672_RX Hosp--Scope Reg LN Sur - rxHospScopeRegLnSur - Tumor';   /* Revised */
input @798   rxHospSurgOthRegDis   $char1.   @;   label   rxHospSurgOthRegDis   ='674_RX Hosp--Surg Oth Reg/Dis - rxHospSurgOthRegDis - Tumor';   /* Revised */
input @799   rxHospRegLnRemoved   $char2.   @;   label   rxHospRegLnRemoved   ='676_RX Hosp--Reg LN Removed - rxHospRegLnRemoved - Tumor';   /* Revised */
input @801   rxHospRadiation   $char1.   @;   label   rxHospRadiation   ='690_RX Hosp--Radiation - rxHospRadiation - Tumor';   /* Revised */
input @802   rxHospChemo   $char2.   @;   label   rxHospChemo   ='700_RX Hosp--Chemo - rxHospChemo - Tumor';   /* Revised */
input @804   rxHospHormone   $char2.   @;   label   rxHospHormone   ='710_RX Hosp--Hormone - rxHospHormone - Tumor';   /* Revised */
input @806   rxHospBrm   $char2.   @;   label   rxHospBrm   ='720_RX Hosp--BRM - rxHospBrm - Tumor';   /* Revised */
input @808   rxHospOther   $char1.   @;   label   rxHospOther   ='730_RX Hosp--Other - rxHospOther - Tumor';   /* Revised */
input @809   rxHospDxStgProc   $char2.   @;   label   rxHospDxStgProc   ='740_RX Hosp--DX/Stg Proc - rxHospDxStgProc - Tumor';   /* Revised */
input @811   rxHospPalliativeProc   $char1.   @;   label   rxHospPalliativeProc   ='3280_RX Hosp--Palliative Proc - rxHospPalliativeProc - Tumor';   /* Revised */
input @812   rxHospSurgSite9802   $char2.   @;   label   rxHospSurgSite9802   ='746_RX Hosp--Surg Site 98-02 - rxHospSurgSite9802 - Tumor';   /* Revised */
input @814   rxHospScopeReg9802   $char1.   @;   label   rxHospScopeReg9802   ='747_RX Hosp--Scope Reg 98-02 - rxHospScopeReg9802 - Tumor';   /* Revised */
input @815   rxHospSurgOth9802   $char1.   @;   label   rxHospSurgOth9802   ='748_RX Hosp--Surg Oth 98-02 - rxHospSurgOth9802 - Tumor';   /* Revised */
*input @816   reserved04   $char50.   @;   *label   reserved04   ='750_Reserved 04 - reserved04 - Tumor';   /* Revised */
input @866   tnmPathStagedBy   $char2.   @;   label   tnmPathStagedBy   ='930_TNM Path Staged By - tnmPathStagedBy - Tumor';   /* Revised */
input @868   tnmClinStagedBy   $char2.   @;   label   tnmClinStagedBy   ='990_TNM Clin Staged By - tnmClinStagedBy - Tumor';   /* Revised */
input @870   metsAtDxBone   $char1.   @;   label   metsAtDxBone   ='1112_Mets at DX-Bone - metsAtDxBone - Tumor';   /* Revised */
input @871   metsAtDxBrain   $char1.   @;   label   metsAtDxBrain   ='1113_Mets at DX-Brain - metsAtDxBrain - Tumor';   /* Revised */
input @872   metsAtDxDistantLn   $char1.   @;   label   metsAtDxDistantLn   ='1114_Mets at Dx-Distant LN - metsAtDxDistantLn - Tumor';   /* Revised */
input @873   metsAtDxLiver   $char1.   @;   label   metsAtDxLiver   ='1115_Mets at DX-Liver - metsAtDxLiver - Tumor';   /* Revised */
input @874   metsAtDxLung   $char1.   @;   label   metsAtDxLung   ='1116_Mets at DX-Lung - metsAtDxLung - Tumor';   /* Revised */
input @875   metsAtDxOther   $char1.   @;   label   metsAtDxOther   ='1117_Mets at DX-Other - metsAtDxOther - Tumor';   /* Revised */
input @876   tumorSizeClinical   $char3.   @;   label   tumorSizeClinical   ='752_Tumor Size Clinical - tumorSizeClinical - Tumor';   /* Revised */
input @879   tumorSizePathologic   $char3.   @;   label   tumorSizePathologic   ='754_Tumor Size Pathologic - tumorSizePathologic - Tumor';   /* Revised */
input @882   tumorSizeSummary   $char3.   @;   label   tumorSizeSummary   ='756_Tumor Size Summary - tumorSizeSummary - Tumor';   /* Revised */
input @885   derivedSeerPathStgGrp   $char5.   @;   label   derivedSeerPathStgGrp   ='3605_Derived SEER Path Stg Grp - derivedSeerPathStgGrp - Tumor';   /* Revised */
input @890   derivedSeerClinStgGrp   $char5.   @;   label   derivedSeerClinStgGrp   ='3610_Derived SEER Clin Stg Grp - derivedSeerClinStgGrp - Tumor';   /* Revised */
input @895   derivedSeerCmbStgGrp   $char5.   @;   label   derivedSeerCmbStgGrp   ='3614_Derived SEER Cmb Stg Grp - derivedSeerCmbStgGrp - Tumor';   /* Revised */
input @900   derivedSeerCombinedT   $char5.   @;   label   derivedSeerCombinedT   ='3616_Derived SEER Combined T - derivedSeerCombinedT - Tumor';   /* Revised */
input @905   derivedSeerCombinedN   $char5.   @;   label   derivedSeerCombinedN   ='3618_Derived SEER Combined N - derivedSeerCombinedN - Tumor';   /* Revised */
input @910   derivedSeerCombinedM   $char5.   @;   label   derivedSeerCombinedM   ='3620_Derived SEER Combined M - derivedSeerCombinedM - Tumor';   /* Revised */
input @915   derivedSeerCmbTSrc   $char1.   @;   label   derivedSeerCmbTSrc   ='3622_Derived SEER Cmb T Src - derivedSeerCmbTSrc - Tumor';   /* Revised */
input @916   derivedSeerCmbNSrc   $char1.   @;   label   derivedSeerCmbNSrc   ='3624_Derived SEER Cmb N Src - derivedSeerCmbNSrc - Tumor';   /* Revised */
input @917   derivedSeerCmbMSrc   $char1.   @;   label   derivedSeerCmbMSrc   ='3626_Derived SEER Cmb M Src - derivedSeerCmbMSrc - Tumor';   /* Revised */
input @918   eodPrimaryTumor   $char3.   @;   label   eodPrimaryTumor   ='772_EOD Primary Tumor - eodPrimaryTumor - Tumor';   /* Revised */
input @921   eodRegionalNodes   $char3.   @;   label   eodRegionalNodes   ='774_EOD Regional Nodes - eodRegionalNodes - Tumor';   /* Revised */
input @924   eodMets   $char2.   @;   label   eodMets   ='776_EOD Mets - eodMets - Tumor';   /* Revised */
input @926   derivedEod2018T   $char15.   @;   label   derivedEod2018T   ='785_Derived EOD 2018 T - derivedEod2018T - Tumor';   /* New */
input @941   derivedEod2018N   $char15.   @;   label   derivedEod2018N   ='815_Derived EOD 2018 N - derivedEod2018N - Tumor';   /* New */
input @956   derivedEod2018M   $char15.   @;   label   derivedEod2018M   ='795_Derived EOD 2018 M - derivedEod2018M - Tumor';   /* New */
input @971   derivedEod2018StageGroup   $char15.   @;   label   derivedEod2018StageGroup   ='818_Derived EOD 2018 Stage Group - derivedEod2018StageGroup - Tumor';   /* New */
input @986   derivedSummaryStage2018   $char1.   @;   label   derivedSummaryStage2018   ='762_Derived Summary Stage 2018 - derivedSummaryStage2018 - Tumor';   /* Revised */
input @987   summaryStage2018   $char1.   @;   label   summaryStage2018   ='764_Summary Stage 2018 - summaryStage2018 - Tumor';   /* Revised */
input @988   seerSummaryStage2000   $char1.   @;   label   seerSummaryStage2000   ='759_SEER Summary Stage 2000 - seerSummaryStage2000 - Tumor';   /* Revised */
input @989   seerSummaryStage1977   $char1.   @;   label   seerSummaryStage1977   ='760_SEER Summary Stage 1977 - seerSummaryStage1977 - Tumor';   /* Revised */
input @990   eodTumorSize   $char3.   @;   label   eodTumorSize   ='780_EOD--Tumor Size - eodTumorSize - Tumor';   /* Revised */
input @990   extentOfDisease10Dig   $char12.   @;   label   extentOfDisease10Dig   ='779_Extent of Disease 10-Dig - extentOfDisease10Dig - Tumor';   /* Revised */
input @993   eodExtension   $char2.   @;   label   eodExtension   ='790_EOD--Extension - eodExtension - Tumor';   /* Revised */
input @995   eodExtensionProstPath   $char2.   @;   label   eodExtensionProstPath   ='800_EOD--Extension Prost Path - eodExtensionProstPath - Tumor';   /* Revised */
input @997   eodLymphNodeInvolv   $char1.   @;   label   eodLymphNodeInvolv   ='810_EOD--Lymph Node Involv - eodLymphNodeInvolv - Tumor';   /* Revised */
input @998    regionalNodesPositive   $char2.   @;   label   regionalNodesPositive   ='820_Regional Nodes Positive - regionalNodesPositive - Tumor';   /* Revised */
input @1000   regionalNodesExamined   $char2.   @;   label   regionalNodesExamined   ='830_Regional Nodes Examined - regionalNodesExamined - Tumor';   /* Revised */
input @1002   dateRegionalLNDissection   $char8.   @;   label   dateRegionalLNDissection   ='682_Date Regional Lymph Node Dissection - dateRegionalLNDissection - Tumor';   /* New */
input @1010   dateRegionalLNDissectionFlag   $char2.   @;   label   dateRegionalLNDissectionFlag   ='683_Date Regional Lymph Node Dissection Flag - dateRegionalLNDissectionFlag - Tumor';   /* New */
input @1012   sentinelLymphNodesPositive   $char2.   @;   label   sentinelLymphNodesPositive   ='835_Sentinel Lymph Nodes Positive - sentinelLymphNodesPositive - Tumor';   /* New */
input @1014   sentinelLymphNodesExamined   $char2.   @;   label   sentinelLymphNodesExamined   ='834_Sentinel Lymph Nodes Examined - sentinelLymphNodesExamined - Tumor';   /* New */
input @1016   dateSentinelLymphNodeBiopsy   $char8.   @;   label   dateSentinelLymphNodeBiopsy   ='832_Date of Sentinel Lymph Node Biopsy - dateSentinelLymphNodeBiopsy - Tumor';   /* New */
input @1024   dateSentinelLymphNodeBiopsyFlag   $char2.   @;   label   dateSentinelLymphNodeBiopsyFlag   ='833_Date of Sentinel Lymph Node Biopsy Flag - dateSentinelLymphNodeBiopsyFlag - Tumor';   /* New */
input @1026   eodOld13Digit   $char13.   @;   label   eodOld13Digit   ='840_EOD--Old 13 Digit - eodOld13Digit - Tumor';   /* Revised */
input @1039   eodOld2Digit   $char2.   @;   label   eodOld2Digit   ='850_EOD--Old 2 Digit - eodOld2Digit - Tumor';   /* Revised */
input @1041   eodOld4Digit   $char4.   @;   label   eodOld4Digit   ='860_EOD--Old 4 Digit - eodOld4Digit - Tumor';   /* Revised */
input @1045   codingSystemForEod   $char1.   @;   label   codingSystemForEod   ='870_Coding System for EOD - codingSystemForEod - Tumor';   /* Revised */
input @1046   tnmEditionNumber   $char2.   @;   label   tnmEditionNumber   ='1060_TNM Edition Number - tnmEditionNumber - Tumor';   /* Revised */
input @1048   tnmPathT   $char4.   @;   label   tnmPathT   ='880_TNM Path T - tnmPathT - Tumor';   /* Revised */
input @1052   tnmPathN   $char4.   @;   label   tnmPathN   ='890_TNM Path N - tnmPathN - Tumor';   /* Revised */
input @1056   tnmPathM   $char4.   @;   label   tnmPathM   ='900_TNM Path M - tnmPathM - Tumor';   /* Revised */
input @1060   tnmPathStageGroup   $char4.   @;   label   tnmPathStageGroup   ='910_TNM Path Stage Group - tnmPathStageGroup - Tumor';   /* Revised */
input @1064   tnmPathDescriptor   $char1.   @;   label   tnmPathDescriptor   ='920_TNM Path Descriptor - tnmPathDescriptor - Tumor';   /* Revised */
input @1065   tnmClinT   $char4.   @;   label   tnmClinT   ='940_TNM Clin T - tnmClinT - Tumor';   /* Revised */
input @1069   tnmClinN   $char4.   @;   label   tnmClinN   ='950_TNM Clin N - tnmClinN - Tumor';   /* Revised */
input @1073   tnmClinM   $char4.   @;   label   tnmClinM   ='960_TNM Clin M - tnmClinM - Tumor';   /* Revised */
input @1077   tnmClinStageGroup   $char4.   @;   label   tnmClinStageGroup   ='970_TNM Clin Stage Group - tnmClinStageGroup - Tumor';   /* Revised */
input @1081   tnmClinDescriptor   $char1.   @;   label   tnmClinDescriptor   ='980_TNM Clin Descriptor - tnmClinDescriptor - Tumor';   /* Revised */
input @1082   ajccTnmClinT   $char15.   @;   label   ajccTnmClinT   ='1001_AJCC TNM Clin T - ajccTnmClinT - Tumor';   /* New */
input @1097   ajccTnmClinTSuffix   $char4.   @;   label   ajccTnmClinTSuffix   ='1031_AJCC TNM Clin T Suffix - ajccTnmClinTSuffix - Tumor';   /* New */
input @1101   ajccTnmClinN   $char15.   @;   label   ajccTnmClinN   ='1002_AJCC TNM Clin N - ajccTnmClinN - Tumor';   /* New */
input @1116   ajccTnmClinNSuffix   $char4.   @;   label   ajccTnmClinNSuffix   ='1034_AJCC TNM Clin N Suffix - ajccTnmClinNSuffix - Tumor';   /* New */
input @1120   ajccTnmClinM   $char15.   @;   label   ajccTnmClinM   ='1003_AJCC TNM Clin M - ajccTnmClinM - Tumor';   /* New */
input @1135   ajccTnmClinStageGroup   $char15.   @;   label   ajccTnmClinStageGroup   ='1004_AJCC TNM Clin Stage Group - ajccTnmClinStageGroup - Tumor';   /* New */
input @1150   ajccTnmPathT   $char15.   @;   label   ajccTnmPathT   ='1011_AJCC TNM Path T - ajccTnmPathT - Tumor';   /* New */
input @1165   ajccTnmPathTSuffix   $char4.   @;   label   ajccTnmPathTSuffix   ='1032_AJCC TNM Path T Suffix - ajccTnmPathTSuffix - Tumor';   /* New */
input @1169   ajccTnmPathN   $char15.   @;   label   ajccTnmPathN   ='1012_AJCC TNM Path N - ajccTnmPathN - Tumor';   /* New */
input @1184   ajccTnmPathNSuffix   $char4.   @;   label   ajccTnmPathNSuffix   ='1035_AJCC TNM Path N Suffix - ajccTnmPathNSuffix - Tumor';   /* New */
input @1188   ajccTnmPathM   $char15.   @;   label   ajccTnmPathM   ='1013_AJCC TNM Path M - ajccTnmPathM - Tumor';   /* New */
input @1203   ajccTnmPathStageGroup   $char15.   @;   label   ajccTnmPathStageGroup   ='1014_AJCC TNM Path Stage Group - ajccTnmPathStageGroup - Tumor';   /* New */
input @1218   ajccTnmPostTherapyT   $char15.   @;   label   ajccTnmPostTherapyT   ='1021_AJCC TNM Post Therapy T - ajccTnmPostTherapyT - Tumor';   /* New */
input @1233   ajccTnmPostTherapyTSuffix   $char4.   @;   label   ajccTnmPostTherapyTSuffix   ='1033_AJCC TNM Post Therapy T Suffix - ajccTnmPostTherapyTSuffix - Tumor';   /* New */
input @1237   ajccTnmPostTherapyN   $char15.   @;   label   ajccTnmPostTherapyN   ='1022_AJCC TNM Post Therapy N - ajccTnmPostTherapyN - Tumor';   /* New */
input @1252   ajccTnmPostTherapyNSuffix   $char4.   @;   label   ajccTnmPostTherapyNSuffix   ='1036_AJCC TNM Post Therapy N Suffix - ajccTnmPostTherapyNSuffix - Tumor';   /* New */
input @1256   ajccTnmPostTherapyM   $char15.   @;   label   ajccTnmPostTherapyM   ='1023_AJCC TNM Post Therapy M - ajccTnmPostTherapyM - Tumor';   /* New */
input @1271   ajccTnmPostTherapyStageGroup   $char15.   @;   label   ajccTnmPostTherapyStageGroup   ='1024_AJCC TNM Post Therapy Stage Group - ajccTnmPostTherapyStageGroup - Tumor';   /* New */
input @1286   gradeClinical   $char1.   @;   label   gradeClinical   ='3843_Grade Clinical - gradeClinical - Tumor';   /* New */
input @1287   gradePathological   $char1.   @;   label   gradePathological   ='3844_Grade Pathological - gradePathological - Tumor';   /* New */
input @1288   gradePostTherapy   $char1.   @;   label   gradePostTherapy   ='3845_Grade Post Therapy - gradePostTherapy - Tumor';   /* New */
input @1289   pediatricStage   $char2.   @;   label   pediatricStage   ='1120_Pediatric Stage - pediatricStage - Tumor';   /* Revised */
input @1291   pediatricStagingSystem   $char2.   @;   label   pediatricStagingSystem   ='1130_Pediatric Staging System - pediatricStagingSystem - Tumor';   /* Revised */
input @1293   pediatricStagedBy   $char1.   @;   label   pediatricStagedBy   ='1140_Pediatric Staged By - pediatricStagedBy - Tumor';   /* Revised */
input @1294   tumorMarker1   $char1.   @;   label   tumorMarker1   ='1150_Tumor Marker 1 - tumorMarker1 - Tumor';   /* Revised */
input @1295   tumorMarker2   $char1.   @;   label   tumorMarker2   ='1160_Tumor Marker 2 - tumorMarker2 - Tumor';   /* Revised */
input @1296   tumorMarker3   $char1.   @;   label   tumorMarker3   ='1170_Tumor Marker 3 - tumorMarker3 - Tumor';   /* Revised */
input @1297   lymphVascularInvasion   $char1.   @;   label   lymphVascularInvasion   ='1182_Lymphovascular Invasion - lymphVascularInvasion - Tumor';   /* Revised */
input @1298   csTumorSize   $char3.   @;   label   csTumorSize   ='2800_CS Tumor Size - csTumorSize - Tumor';   /* Revised */
input @1301   csExtension   $char3.   @;   label   csExtension   ='2810_CS Extension - csExtension - Tumor';   /* Revised */
input @1304   csTumorSizeExtEval   $char1.   @;   label   csTumorSizeExtEval   ='2820_CS Tumor Size/Ext Eval - csTumorSizeExtEval - Tumor';   /* Revised */
input @1305   csLymphNodes   $char3.   @;   label   csLymphNodes   ='2830_CS Lymph Nodes - csLymphNodes - Tumor';   /* Revised */
input @1308   csLymphNodesEval   $char1.   @;   label   csLymphNodesEval   ='2840_CS Lymph Nodes Eval - csLymphNodesEval - Tumor';   /* Revised */
input @1309   csMetsAtDx   $char2.   @;   label   csMetsAtDx   ='2850_CS Mets at DX - csMetsAtDx - Tumor';   /* Revised */
input @1311   csMetsEval   $char1.   @;   label   csMetsEval   ='2860_CS Mets Eval - csMetsEval - Tumor';   /* Revised */
input @1312   csMetsAtDxBone   $char1.   @;   label   csMetsAtDxBone   ='2851_CS Mets at Dx-Bone - csMetsAtDxBone - Tumor';   /* Revised */
input @1313   csMetsAtDxBrain   $char1.   @;   label   csMetsAtDxBrain   ='2852_CS Mets at Dx-Brain - csMetsAtDxBrain - Tumor';   /* Revised */
input @1314   csMetsAtDxLiver   $char1.   @;   label   csMetsAtDxLiver   ='2853_CS Mets at Dx-Liver - csMetsAtDxLiver - Tumor';   /* Revised */
input @1315   csMetsAtDxLung   $char1.   @;   label   csMetsAtDxLung   ='2854_CS Mets at Dx-Lung - csMetsAtDxLung - Tumor';   /* Revised */
input @1316   csSiteSpecificFactor1   $char3.   @;   label   csSiteSpecificFactor1   ='2880_CS Site-Specific Factor 1 - csSiteSpecificFactor1 - Tumor';   /* Revised */
input @1319   csSiteSpecificFactor2   $char3.   @;   label   csSiteSpecificFactor2   ='2890_CS Site-Specific Factor 2 - csSiteSpecificFactor2 - Tumor';   /* Revised */
input @1322   csSiteSpecificFactor3   $char3.   @;   label   csSiteSpecificFactor3   ='2900_CS Site-Specific Factor 3 - csSiteSpecificFactor3 - Tumor';   /* Revised */
input @1325   csSiteSpecificFactor4   $char3.   @;   label   csSiteSpecificFactor4   ='2910_CS Site-Specific Factor 4 - csSiteSpecificFactor4 - Tumor';   /* Revised */
input @1328   csSiteSpecificFactor5   $char3.   @;   label   csSiteSpecificFactor5   ='2920_CS Site-Specific Factor 5 - csSiteSpecificFactor5 - Tumor';   /* Revised */
input @1331   csSiteSpecificFactor6   $char3.   @;   label   csSiteSpecificFactor6   ='2930_CS Site-Specific Factor 6 - csSiteSpecificFactor6 - Tumor';   /* Revised */
input @1334   csSiteSpecificFactor7   $char3.   @;   label   csSiteSpecificFactor7   ='2861_CS Site-Specific Factor 7 - csSiteSpecificFactor7 - Tumor';   /* Revised */
input @1337   csSiteSpecificFactor8   $char3.   @;   label   csSiteSpecificFactor8   ='2862_CS Site-Specific Factor 8 - csSiteSpecificFactor8 - Tumor';   /* Revised */
input @1340   csSiteSpecificFactor9   $char3.   @;   label   csSiteSpecificFactor9   ='2863_CS Site-Specific Factor 9 - csSiteSpecificFactor9 - Tumor';   /* Revised */
input @1343   csSiteSpecificFactor10   $char3.   @;   label   csSiteSpecificFactor10   ='2864_CS Site-Specific Factor10 - csSiteSpecificFactor10 - Tumor';   /* Revised */
input @1346   csSiteSpecificFactor11   $char3.   @;   label   csSiteSpecificFactor11   ='2865_CS Site-Specific Factor11 - csSiteSpecificFactor11 - Tumor';   /* Revised */
input @1349   csSiteSpecificFactor12   $char3.   @;   label   csSiteSpecificFactor12   ='2866_CS Site-Specific Factor12 - csSiteSpecificFactor12 - Tumor';   /* Revised */
input @1352   csSiteSpecificFactor13   $char3.   @;   label   csSiteSpecificFactor13   ='2867_CS Site-Specific Factor13 - csSiteSpecificFactor13 - Tumor';   /* Revised */
input @1355   csSiteSpecificFactor14   $char3.   @;   label   csSiteSpecificFactor14   ='2868_CS Site-Specific Factor14 - csSiteSpecificFactor14 - Tumor';   /* Revised */
input @1358   csSiteSpecificFactor15   $char3.   @;   label   csSiteSpecificFactor15   ='2869_CS Site-Specific Factor15 - csSiteSpecificFactor15 - Tumor';   /* Revised */
input @1361   csSiteSpecificFactor16   $char3.   @;   label   csSiteSpecificFactor16   ='2870_CS Site-Specific Factor16 - csSiteSpecificFactor16 - Tumor';   /* Revised */
input @1364   csSiteSpecificFactor17   $char3.   @;   label   csSiteSpecificFactor17   ='2871_CS Site-Specific Factor17 - csSiteSpecificFactor17 - Tumor';   /* Revised */
input @1367   csSiteSpecificFactor18   $char3.   @;   label   csSiteSpecificFactor18   ='2872_CS Site-Specific Factor18 - csSiteSpecificFactor18 - Tumor';   /* Revised */
input @1370   csSiteSpecificFactor19   $char3.   @;   label   csSiteSpecificFactor19   ='2873_CS Site-Specific Factor19 - csSiteSpecificFactor19 - Tumor';   /* Revised */
input @1373   csSiteSpecificFactor20   $char3.   @;   label   csSiteSpecificFactor20   ='2874_CS Site-Specific Factor20 - csSiteSpecificFactor20 - Tumor';   /* Revised */
input @1376   csSiteSpecificFactor21   $char3.   @;   label   csSiteSpecificFactor21   ='2875_CS Site-Specific Factor21 - csSiteSpecificFactor21 - Tumor';   /* Revised */
input @1379   csSiteSpecificFactor22   $char3.   @;   label   csSiteSpecificFactor22   ='2876_CS Site-Specific Factor22 - csSiteSpecificFactor22 - Tumor';   /* Revised */
input @1382   csSiteSpecificFactor23   $char3.   @;   label   csSiteSpecificFactor23   ='2877_CS Site-Specific Factor23 - csSiteSpecificFactor23 - Tumor';   /* Revised */
input @1385   csSiteSpecificFactor24   $char3.   @;   label   csSiteSpecificFactor24   ='2878_CS Site-Specific Factor24 - csSiteSpecificFactor24 - Tumor';   /* Revised */
input @1388   csSiteSpecificFactor25   $char3.   @;   label   csSiteSpecificFactor25   ='2879_CS Site-Specific Factor25 - csSiteSpecificFactor25 - Tumor';   /* Revised */
input @1391   derivedAjcc6T   $char2.   @;   label   derivedAjcc6T   ='2940_Derived AJCC-6 T - derivedAjcc6T - Tumor';   /* Revised */
input @1393   derivedAjcc6TDescript   $char1.   @;   label   derivedAjcc6TDescript   ='2950_Derived AJCC-6 T Descript - derivedAjcc6TDescript - Tumor';   /* Revised */
input @1394   derivedAjcc6N   $char2.   @;   label   derivedAjcc6N   ='2960_Derived AJCC-6 N - derivedAjcc6N - Tumor';   /* Revised */
input @1396   derivedAjcc6NDescript   $char1.   @;   label   derivedAjcc6NDescript   ='2970_Derived AJCC-6 N Descript - derivedAjcc6NDescript - Tumor';   /* Revised */
input @1397   derivedAjcc6M   $char2.   @;   label   derivedAjcc6M   ='2980_Derived AJCC-6 M - derivedAjcc6M - Tumor';   /* Revised */
input @1399   derivedAjcc6MDescript   $char1.   @;   label   derivedAjcc6MDescript   ='2990_Derived AJCC-6 M Descript - derivedAjcc6MDescript - Tumor';   /* Revised */
input @1400   derivedAjcc6StageGrp   $char2.   @;   label   derivedAjcc6StageGrp   ='3000_Derived AJCC-6 Stage Grp - derivedAjcc6StageGrp - Tumor';   /* Revised */
input @1402   derivedAjcc7T   $char3.   @;   label   derivedAjcc7T   ='3400_Derived AJCC-7 T - derivedAjcc7T - Tumor';   /* Revised */
input @1405   derivedAjcc7TDescript   $char1.   @;   label   derivedAjcc7TDescript   ='3402_Derived AJCC-7 T Descript - derivedAjcc7TDescript - Tumor';   /* Revised */
input @1406   derivedAjcc7N   $char3.   @;   label   derivedAjcc7N   ='3410_Derived AJCC-7 N - derivedAjcc7N - Tumor';   /* Revised */
input @1409   derivedAjcc7NDescript   $char1.   @;   label   derivedAjcc7NDescript   ='3412_Derived AJCC-7 N Descript - derivedAjcc7NDescript - Tumor';   /* Revised */
input @1410   derivedAjcc7M   $char3.   @;   label   derivedAjcc7M   ='3420_Derived AJCC-7 M - derivedAjcc7M - Tumor';   /* Revised */
input @1413   derivedAjcc7MDescript   $char1.   @;   label   derivedAjcc7MDescript   ='3422_Derived AJCC-7 M Descript - derivedAjcc7MDescript - Tumor';   /* Revised */
input @1414   derivedAjcc7StageGrp   $char3.   @;   label   derivedAjcc7StageGrp   ='3430_Derived AJCC-7 Stage Grp - derivedAjcc7StageGrp - Tumor';   /* Revised */
input @1417   derivedPrerx7T   $char3.   @;   label   derivedPrerx7T   ='3440_Derived PreRx-7 T - derivedPrerx7T - Tumor';   /* Revised */
input @1420   derivedPrerx7TDescrip   $char1.   @;   label   derivedPrerx7TDescrip   ='3442_Derived PreRx-7 T Descrip - derivedPrerx7TDescrip - Tumor';   /* Revised */
input @1421   derivedPrerx7N   $char3.   @;   label   derivedPrerx7N   ='3450_Derived PreRx-7 N - derivedPrerx7N - Tumor';   /* Revised */
input @1424   derivedPrerx7NDescrip   $char1.   @;   label   derivedPrerx7NDescrip   ='3452_Derived PreRx-7 N Descrip - derivedPrerx7NDescrip - Tumor';   /* Revised */
input @1425   derivedPrerx7M   $char3.   @;   label   derivedPrerx7M   ='3460_Derived PreRx-7 M - derivedPrerx7M - Tumor';   /* Revised */
input @1428   derivedPrerx7MDescrip   $char1.   @;   label   derivedPrerx7MDescrip   ='3462_Derived PreRx-7 M Descrip - derivedPrerx7MDescrip - Tumor';   /* Revised */
input @1429   derivedPrerx7StageGrp   $char3.   @;   label   derivedPrerx7StageGrp   ='3470_Derived PreRx-7 Stage Grp - derivedPrerx7StageGrp - Tumor';   /* Revised */
input @1432   derivedPostrx7T   $char3.   @;   label   derivedPostrx7T   ='3480_Derived PostRx-7 T - derivedPostrx7T - Tumor';   /* Revised */
input @1435   derivedPostrx7N   $char3.   @;   label   derivedPostrx7N   ='3482_Derived PostRx-7 N - derivedPostrx7N - Tumor';   /* Revised */
input @1438   derivedPostrx7M   $char2.   @;   label   derivedPostrx7M   ='3490_Derived PostRx-7 M - derivedPostrx7M - Tumor';   /* Revised */
input @1440   derivedPostrx7StgeGrp   $char3.   @;   label   derivedPostrx7StgeGrp   ='3492_Derived PostRx-7 Stge Grp - derivedPostrx7StgeGrp - Tumor';   /* Revised */
input @1443   derivedSs1977   $char1.   @;   label   derivedSs1977   ='3010_Derived SS1977 - derivedSs1977 - Tumor';   /* Revised */
input @1444   derivedSs2000   $char1.   @;   label   derivedSs2000   ='3020_Derived SS2000 - derivedSs2000 - Tumor';   /* Revised */
input @1445   derivedNeoadjuvRxFlag   $char1.   @;   label   derivedNeoadjuvRxFlag   ='3600_Derived Neoadjuv Rx Flag - derivedNeoadjuvRxFlag - Tumor';   /* Revised */
input @1446   derivedAjccFlag   $char1.   @;   label   derivedAjccFlag   ='3030_Derived AJCC--Flag - derivedAjccFlag - Tumor';   /* Revised */
input @1447   derivedSs1977Flag   $char1.   @;   label   derivedSs1977Flag   ='3040_Derived SS1977--Flag - derivedSs1977Flag - Tumor';   /* Revised */
input @1448   derivedSs2000Flag   $char1.   @;   label   derivedSs2000Flag   ='3050_Derived SS2000--Flag - derivedSs2000Flag - Tumor';   /* Revised */
input @1449   npcrDerivedClinStgGrp   $char4.   @;   label   npcrDerivedClinStgGrp   ='3650_NPCR Derived Clin Stg Grp - npcrDerivedClinStgGrp - Tumor';   /* Revised */
input @1453   npcrDerivedPathStgGrp   $char4.   @;   label   npcrDerivedPathStgGrp   ='3655_NPCR Derived Path Stg Grp - npcrDerivedPathStgGrp - Tumor';   /* Revised */
input @1457   npcrDerivedAjcc8TnmClinStgGrp   $char15.   @;   label   npcrDerivedAjcc8TnmClinStgGrp   ='3645_NPCR Derived AJCC 8 TNM Clin Stg Grp - npcrDerivedAjcc8TnmClinStgGrp - Tumor';   /* New */
input @1472   npcrDerivedAjcc8TnmPathStgGrp   $char15.   @;   label   npcrDerivedAjcc8TnmPathStgGrp   ='3646_NPCR Derived AJCC 8 TNM Path Stg Grp - npcrDerivedAjcc8TnmPathStgGrp - Tumor';   /* New */
input @1487   npcrDerivedAjcc8TnmPostStgGrp   $char15.   @;   label   npcrDerivedAjcc8TnmPostStgGrp   ='3647_NPCR Derived AJCC 8 TNM Post Therapy Stg Grp - npcrDerivedAjcc8TnmPostStgGrp - Tumor';   /* New */
input @1502   csVersionInputCurrent   $char6.   @;   label   csVersionInputCurrent   ='2937_CS Version Input Current - csVersionInputCurrent - Tumor';   /* Revised */
input @1508   csVersionInputOriginal   $char6.   @;   label   csVersionInputOriginal   ='2935_CS Version Input Original - csVersionInputOriginal - Tumor';   /* Revised */
input @1514   csVersionDerived   $char6.   @;   label   csVersionDerived   ='2936_CS Version Derived - csVersionDerived - Tumor';   /* Revised */
input @1520   seerSiteSpecificFact1   $char1.   @;   label   seerSiteSpecificFact1   ='3700_SEER Site-Specific Fact 1 - seerSiteSpecificFact1 - Tumor';   /* Revised */
input @1521   seerSiteSpecificFact2   $char1.   @;   label   seerSiteSpecificFact2   ='3702_SEER Site-Specific Fact 2 - seerSiteSpecificFact2 - Tumor';   /* Revised */
input @1522   seerSiteSpecificFact3   $char1.   @;   label   seerSiteSpecificFact3   ='3704_SEER Site-Specific Fact 3 - seerSiteSpecificFact3 - Tumor';   /* Revised */
input @1523   seerSiteSpecificFact4   $char1.   @;   label   seerSiteSpecificFact4   ='3706_SEER Site-Specific Fact 4 - seerSiteSpecificFact4 - Tumor';   /* Revised */
input @1524   seerSiteSpecificFact5   $char1.   @;   label   seerSiteSpecificFact5   ='3708_SEER Site-Specific Fact 5 - seerSiteSpecificFact5 - Tumor';   /* Revised */
input @1525   seerSiteSpecificFact6   $char1.   @;   label   seerSiteSpecificFact6   ='3710_SEER Site-Specific Fact 6 - seerSiteSpecificFact6 - Tumor';   /* Revised */
input @1526   icdRevisionComorbid   $char1.   @;   label   icdRevisionComorbid   ='3165_ICD Revision Comorbid - icdRevisionComorbid - Tumor';   /* Revised */
input @1527   comorbidComplication1   $char5.   @;   label   comorbidComplication1   ='3110_Comorbid/Complication 1 - comorbidComplication1 - Tumor';   /* Revised */
input @1532   comorbidComplication2   $char5.   @;   label   comorbidComplication2   ='3120_Comorbid/Complication 2 - comorbidComplication2 - Tumor';   /* Revised */
input @1537   comorbidComplication3   $char5.   @;   label   comorbidComplication3   ='3130_Comorbid/Complication 3 - comorbidComplication3 - Tumor';   /* Revised */
input @1542   comorbidComplication4   $char5.   @;   label   comorbidComplication4   ='3140_Comorbid/Complication 4 - comorbidComplication4 - Tumor';   /* Revised */
input @1547   comorbidComplication5   $char5.   @;   label   comorbidComplication5   ='3150_Comorbid/Complication 5 - comorbidComplication5 - Tumor';   /* Revised */
input @1552   comorbidComplication6   $char5.   @;   label   comorbidComplication6   ='3160_Comorbid/Complication 6 - comorbidComplication6 - Tumor';   /* Revised */
input @1557   comorbidComplication7   $char5.   @;   label   comorbidComplication7   ='3161_Comorbid/Complication 7 - comorbidComplication7 - Tumor';   /* Revised */
input @1562   comorbidComplication8   $char5.   @;   label   comorbidComplication8   ='3162_Comorbid/Complication 8 - comorbidComplication8 - Tumor';   /* Revised */
input @1567   comorbidComplication9   $char5.   @;   label   comorbidComplication9   ='3163_Comorbid/Complication 9 - comorbidComplication9 - Tumor';   /* Revised */
input @1572   comorbidComplication10   $char5.   @;   label   comorbidComplication10   ='3164_Comorbid/Complication 10 - comorbidComplication10 - Tumor';   /* Revised */
input @1577   secondaryDiagnosis1   $char7.   @;   label   secondaryDiagnosis1   ='3780_Secondary Diagnosis 1 - secondaryDiagnosis1 - Tumor';   /* Revised */
input @1584   secondaryDiagnosis2   $char7.   @;   label   secondaryDiagnosis2   ='3782_Secondary Diagnosis 2 - secondaryDiagnosis2 - Tumor';   /* Revised */
input @1591   secondaryDiagnosis3   $char7.   @;   label   secondaryDiagnosis3   ='3784_Secondary Diagnosis 3 - secondaryDiagnosis3 - Tumor';   /* Revised */
input @1598   secondaryDiagnosis4   $char7.   @;   label   secondaryDiagnosis4   ='3786_Secondary Diagnosis 4 - secondaryDiagnosis4 - Tumor';   /* Revised */
input @1605   secondaryDiagnosis5   $char7.   @;   label   secondaryDiagnosis5   ='3788_Secondary Diagnosis 5 - secondaryDiagnosis5 - Tumor';   /* Revised */
input @1612   secondaryDiagnosis6   $char7.   @;   label   secondaryDiagnosis6   ='3790_Secondary Diagnosis 6 - secondaryDiagnosis6 - Tumor';   /* Revised */
input @1619   secondaryDiagnosis7   $char7.   @;   label   secondaryDiagnosis7   ='3792_Secondary Diagnosis 7 - secondaryDiagnosis7 - Tumor';   /* Revised */
input @1626   secondaryDiagnosis8   $char7.   @;   label   secondaryDiagnosis8   ='3794_Secondary Diagnosis 8 - secondaryDiagnosis8 - Tumor';   /* Revised */
input @1633   secondaryDiagnosis9   $char7.   @;   label   secondaryDiagnosis9   ='3796_Secondary Diagnosis 9 - secondaryDiagnosis9 - Tumor';   /* Revised */
input @1640   secondaryDiagnosis10   $char7.   @;   label   secondaryDiagnosis10   ='3798_Secondary Diagnosis 10 - secondaryDiagnosis10 - Tumor';   /* Revised */
input @1647   npcrSpecificField   $char75.   @;   label   npcrSpecificField   ='3720_NPCR Specific Field - npcrSpecificField - Tumor';   /* Revised */
input @1722   ajccId   $char4.   @;   label   ajccId   ='995_AJCC ID - ajccId - Tumor';   /* New */
input @1726   schemaId   $char5.   @;   label   schemaId   ='3800_Schema ID - schemaId - Tumor';   /* New */
input @1731   schemaDiscriminator1   $char1.   @;   label   schemaDiscriminator1   ='3926_Schema Discriminator 1 - schemaDiscriminator1 - Tumor';   /* New */
input @1732   schemaDiscriminator2   $char1.   @;   label   schemaDiscriminator2   ='3927_Schema Discriminator 2 - schemaDiscriminator2 - Tumor';   /* New */
input @1733   schemaDiscriminator3   $char1.   @;   label   schemaDiscriminator3   ='3928_Schema Discriminator 3 - schemaDiscriminator3 - Tumor';   /* New */
input @1734   percentNecrosisPostNeoadjuvant   $char5.   @;   label   percentNecrosisPostNeoadjuvant   ='3908_Percent Necrosis Post Neoadjuvant - percentNecrosisPostNeoadjuvant - Tumor';   /* New */
*input @1739   reserved15   $char1.   @;   *label   reserved15   ='2400_Reserved 15 - reserved15 - Tumor';   /* Revised */
input @1740   chromosome1pLossHeterozygosity   $char1.   @;   label   chromosome1pLossHeterozygosity   ='3801_Chromosome 1p: Loss of Heterozygosity (LOH) - chromosome1pLossHeterozygosity - Tumor';   /* New */
input @1741   chromosome19qLossHeterozygosity   $char1.   @;   label   chromosome19qLossHeterozygosity   ='3802_Chromosome 19q: Loss of Heterozygosity (LOH) - chromosome19qLossHeterozygosity - Tumor';   /* New */
input @1742   methylationOfO6MGMT   $char1.   @;   label   methylationOfO6MGMT   ='3889_Methylation of O6-Methylguanine-Methyltransferase - methylationOfO6MGMT - Tumor';   /* New */
input @1743   estrogenReceptorSummary   $char1.   @;   label   estrogenReceptorSummary   ='3827_Estrogen Receptor Summary - estrogenReceptorSummary - Tumor';   /* New */
input @1744   her2OverallSummary   $char1.   @;   label   her2OverallSummary   ='3855_HER2 Overall Summary - her2OverallSummary - Tumor';   /* New */
input @1745   lnPositiveAxillaryLevel1To2   $char2.   @;   label   lnPositiveAxillaryLevel1To2   ='3882_LN Positive Axillary Level I-II - lnPositiveAxillaryLevel1To2 - Tumor';   /* New */
input @1747   multigeneSignatureMethod   $char1.   @;   label   multigeneSignatureMethod   ='3894_Multigene Signature Method - multigeneSignatureMethod - Tumor';   /* New */
input @1748   multigeneSignatureResults   $char2.   @;   label   multigeneSignatureResults   ='3895_Multigene Signature Results - multigeneSignatureResults - Tumor';   /* New */
input @1750   progesteroneRecepSummary   $char1.   @;   label   progesteroneRecepSummary   ='3915_Progesterone Receptor Summary - progesteroneRecepSummary - Tumor';   /* New */
input @1751   responseToNeoadjuvantTherapy   $char1.   @;   label   responseToNeoadjuvantTherapy   ='3922_Response to Neoadjuvant Therapy - responseToNeoadjuvantTherapy - Tumor';   /* New */
input @1752   estrogenReceptorPercntPosOrRange   $char3.   @;   label   estrogenReceptorPercntPosOrRange   ='3826_Estrogen Receptor Percent Positive or Range - estrogenReceptorPercntPosOrRange - Tumor';   /* New */
input @1755   estrogenReceptorTotalAllredScore   $char2.   @;   label   estrogenReceptorTotalAllredScore   ='3828_Estrogen Receptor Total Allred Score - estrogenReceptorTotalAllredScore - Tumor';   /* New */
input @1757   her2IhcSummary   $char1.   @;   label   her2IhcSummary   ='3850_HER2 IHC Summary - her2IhcSummary - Tumor';   /* New */
input @1758   her2IshDualProbeCopyNumber   $char4.   @;   label   her2IshDualProbeCopyNumber   ='3851_HER2 ISH Dual Probe Copy Number - her2IshDualProbeCopyNumber - Tumor';   /* New */
input @1762   her2IshDualProbeRatio   $char4.   @;   label   her2IshDualProbeRatio   ='3852_HER2 ISH Dual Probe Ratio - her2IshDualProbeRatio - Tumor';   /* New */
input @1766   her2IshSingleProbeCopyNumber   $char4.   @;   label   her2IshSingleProbeCopyNumber   ='3853_HER2 ISH Single Probe Copy Number - her2IshSingleProbeCopyNumber - Tumor';   /* New */
input @1770   her2IshSummary   $char1.   @;   label   her2IshSummary   ='3854_HER2 ISH Summary - her2IshSummary - Tumor';   /* New */
input @1771   ki67   $char5.   @;   label   ki67   ='3863_Ki-67 - ki67 - Tumor';   /* New */
input @1776   oncotypeDxRecurrenceScoreDcis   $char3.   @;   label   oncotypeDxRecurrenceScoreDcis   ='3903_Oncotype Dx Recurrence Score-DCIS - oncotypeDxRecurrenceScoreDcis - Tumor';   /* New */
input @1779   oncotypeDxRecurrenceScoreInvasiv   $char3.   @;   label   oncotypeDxRecurrenceScoreInvasiv   ='3904_Oncotype Dx Recurrence Score-Invasive - oncotypeDxRecurrenceScoreInvasiv - Tumor';   /* New */
input @1782   oncotypeDxRiskLevelDcis   $char1.   @;   label   oncotypeDxRiskLevelDcis   ='3905_Oncotype Dx Risk Level-DCIS - oncotypeDxRiskLevelDcis - Tumor';   /* New */
input @1783   oncotypeDxRiskLevelInvasive   $char1.   @;   label   oncotypeDxRiskLevelInvasive   ='3906_Oncotype Dx Risk Level-Invasive - oncotypeDxRiskLevelInvasive - Tumor';   /* New */
input @1784   progesteroneRecepPrcntPosOrRange   $char3.   @;   label   progesteroneRecepPrcntPosOrRange   ='3914_Progesterone Receptor Percent Positive or Range - progesteroneRecepPrcntPosOrRange - Tumor';   /* New */
input @1787   progesteroneRecepTotalAllredScor   $char2.   @;   label   progesteroneRecepTotalAllredScor   ='3916_Progesterone Receptor Total Allred Score - progesteroneRecepTotalAllredScor - Tumor';   /* New */
input @1789   ceaPretreatmentInterpretation   $char1.   @;   label   ceaPretreatmentInterpretation   ='3819_CEA Pretreatment Interpretation - ceaPretreatmentInterpretation - Tumor';   /* New */
input @1790   ceaPretreatmentLabValue   $char6.   @;   label   ceaPretreatmentLabValue   ='3820_CEA Pretreatment Lab Value - ceaPretreatmentLabValue - Tumor';   /* New */
input @1796   circumferentialResectionMargin   $char4.   @;   label   circumferentialResectionMargin   ='3823_Circumferential Resection Margin (CRM) - circumferentialResectionMargin - Tumor';   /* New */
input @1800   kras   $char1.   @;   label   kras   ='3866_KRAS - kras - Tumor';   /* New */
input @1801   microsatelliteInstability   $char1.   @;   label   microsatelliteInstability   ='3890_Microsatellite Instability (MSI) - microsatelliteInstability - Tumor';   /* New */
input @1802   perineuralInvasion   $char1.   @;   label   perineuralInvasion   ='3909_Perineural Invasion - perineuralInvasion - Tumor';   /* New */
input @1803   tumorDeposits   $char2.   @;   label   tumorDeposits   ='3934_Tumor Deposits - tumorDeposits - Tumor';   /* New */
input @1805   numberOfPositiveParaAorticNodes   $char2.   @;   label   numberOfPositiveParaAorticNodes   ='3901_Number of Positive Para-Aortic Nodes - numberOfPositiveParaAorticNodes - Tumor';   /* New */
input @1807   numberOfExaminedParaAorticNodes   $char2.   @;   label   numberOfExaminedParaAorticNodes   ='3899_Number of Examined Para-Aortic Nodes - numberOfExaminedParaAorticNodes - Tumor';   /* New */
input @1809   numberOfPositivePelvicNodes   $char2.   @;   label   numberOfPositivePelvicNodes   ='3902_Number of Positive Pelvic Nodes - numberOfPositivePelvicNodes - Tumor';   /* New */
input @1811   numberOfExaminedPelvicNodes   $char2.   @;   label   numberOfExaminedPelvicNodes   ='3900_Number of Examined Pelvic Nodes - numberOfExaminedPelvicNodes - Tumor';   /* New */
input @1813   peritonealCytology   $char1.   @;   label   peritonealCytology   ='3911_Peritoneal Cytology - peritonealCytology - Tumor';   /* New */
input @1814   esophagusAndEgjTumorEpicenter   $char1.   @;   label   esophagusAndEgjTumorEpicenter   ='3829_Esophagus and EGJ Tumor Epicenter - esophagusAndEgjTumorEpicenter - Tumor';   /* New */
input @1815   kitGeneImmunohistochemistry   $char1.   @;   label   kitGeneImmunohistochemistry   ='3865_KIT Gene Immunohistochemistry - kitGeneImmunohistochemistry - Tumor';   /* New */
input @1816   figoStage   $char2.   @;   label   figoStage   ='3836_FIGO Stage - figoStage - Tumor';   /* New */
input @1818   extranodalExtensionHeadNeckClin   $char1.   @;   label   extranodalExtensionHeadNeckClin   ='3831_Extranodal Extension Head and Neck Clinical - extranodalExtensionHeadNeckClin - Tumor';   /* New */
input @1819   extranodalExtensionHeadNeckPath   $char3.   @;   label   extranodalExtensionHeadNeckPath   ='3832_Extranodal Extension Head and Neck Pathological - extranodalExtensionHeadNeckPath - Tumor';   /* New */
input @1822   lnHeadAndNeckLevels1To3   $char1.   @;   label   lnHeadAndNeckLevels1To3   ='3876_LN Head and Neck Levels I-III - lnHeadAndNeckLevels1To3 - Tumor';   /* New */
input @1823   lnHeadAndNeckLevels4To5   $char1.   @;   label   lnHeadAndNeckLevels4To5   ='3877_LN Head and Neck Levels IV-V - lnHeadAndNeckLevels4To5 - Tumor';   /* New */
input @1824   lnHeadAndNeckLevels6To7   $char1.   @;   label   lnHeadAndNeckLevels6To7   ='3878_LN Head and Neck Levels VI-VII - lnHeadAndNeckLevels6To7 - Tumor';   /* New */
input @1825   lnHeadAndNeckOther   $char1.   @;   label   lnHeadAndNeckOther   ='3879_LN Head and Neck Other - lnHeadAndNeckOther - Tumor';   /* New */
input @1826   lnSize   $char4.   @;   label   lnSize   ='3883_LN Size - lnSize - Tumor';   /* New */
input @1830   jak2   $char1.   @;   label   jak2   ='3862_JAK2 - jak2 - Tumor';   /* New */
input @1831   primarySclerosingCholangitis   $char1.   @;   label   primarySclerosingCholangitis   ='3917_Primary Sclerosing Cholangitis - primarySclerosingCholangitis - Tumor';   /* New */
input @1832   tumorGrowthPattern   $char1.   @;   label   tumorGrowthPattern   ='3935_Tumor Growth Pattern - tumorGrowthPattern - Tumor';   /* New */
input @1833   ipsilateralAdrenalGlandInvolve   $char1.   @;   label   ipsilateralAdrenalGlandInvolve   ='3861_Ipsilateral Adrenal Gland Involvement - ipsilateralAdrenalGlandInvolve - Tumor';   /* New */
input @1834   invasionBeyondCapsule   $char1.   @;   label   invasionBeyondCapsule   ='3864_Invasion Beyond Capsule - invasionBeyondCapsule - Tumor';   /* New */
input @1835   majorVeinInvolvement   $char1.   @;   label   majorVeinInvolvement   ='3886_Major Vein Involvement - majorVeinInvolvement - Tumor';   /* New */
input @1836   sarcomatoidFeatures   $char3.   @;   label   sarcomatoidFeatures   ='3925_Sarcomatoid Features - sarcomatoidFeatures - Tumor';   /* New */
input @1839   adenoidCysticBasaloidPattern   $char5.   @;   label   adenoidCysticBasaloidPattern   ='3803_Adenoid Cystic Basaloid Pattern - adenoidCysticBasaloidPattern - Tumor';   /* New */
input @1844   afpPretreatmentInterpretation   $char1.   @;   label   afpPretreatmentInterpretation   ='3809_AFP Pretreatment Interpretation - afpPretreatmentInterpretation - Tumor';   /* New */
input @1845   afpPretreatmentLabValue   $char6.   @;   label   afpPretreatmentLabValue   ='3810_AFP Pretreatment Lab Value - afpPretreatmentLabValue - Tumor';   /* New */
input @1851   bilirubinPretxTotalLabValue   $char5.   @;   label   bilirubinPretxTotalLabValue   ='3813_Bilirubin Pretreatment Total Lab Value - bilirubinPretxTotalLabValue - Tumor';   /* New */
input @1856   bilirubinPretxUnitOfMeasure   $char1.   @;   label   bilirubinPretxUnitOfMeasure   ='3814_Bilirubin Pretreatment Unit of Measure - bilirubinPretxUnitOfMeasure - Tumor';   /* New */
input @1857   creatininePretreatmentLabValue   $char4.   @;   label   creatininePretreatmentLabValue   ='3824_Creatinine Pretreatment Lab Value - creatininePretreatmentLabValue - Tumor';   /* New */
input @1861   creatininePretxUnitOfMeasure   $char1.   @;   label   creatininePretxUnitOfMeasure   ='3825_Creatinine Pretreatment Unit of Measure - creatininePretxUnitOfMeasure - Tumor';   /* New */
input @1862   fibrosisScore   $char1.   @;   label   fibrosisScore   ='3835_Fibrosis Score - fibrosisScore - Tumor';   /* New */
input @1863   iNRProthrombinTime   $char3.   @;   label   iNRProthrombinTime   ='3860_International Normalized Ratio Prothrombin Time - iNRProthrombinTime - Tumor';   /* New */
input @1866   separateTumorNodules   $char1.   @;   label   separateTumorNodules   ='3929_Separate Tumor Nodules - separateTumorNodules - Tumor';   /* New */
input @1867   visceralParietalPleuralInvasion   $char1.   @;   label   visceralParietalPleuralInvasion   ='3937_Visceral and Parietal Pleural Invasion - visceralParietalPleuralInvasion - Tumor';   /* New */
input @1868   bSymptoms   $char1.   @;   label   bSymptoms   ='3812_B symptoms - bSymptoms - Tumor';   /* New */
input @1869   hivStatus   $char1.   @;   label   hivStatus   ='3859_HIV Status - hivStatus - Tumor';   /* New */
input @1870   nccnInternationalPrognosticIndex   $char2.   @;   label   nccnInternationalPrognosticIndex   ='3896_NCCN International Prognostic Index (IPI) - nccnInternationalPrognosticIndex - Tumor';   /* New */
input @1872   mitoticRateMelanoma   $char2.   @;   label   mitoticRateMelanoma   ='3893_Mitotic Rate Melanoma - mitoticRateMelanoma - Tumor';   /* New */
input @1874   chromosome3Status   $char1.   @;   label   chromosome3Status   ='3821_Chromosome 3 Status - chromosome3Status - Tumor';   /* New */
input @1875   chromosome8qStatus   $char1.   @;   label   chromosome8qStatus   ='3822_Chromosome 8q Status - chromosome8qStatus - Tumor';   /* New */
input @1876   extravascularMatrixPatterns   $char1.   @;   label   extravascularMatrixPatterns   ='3834_Extravascular Matrix Patterns - extravascularMatrixPatterns - Tumor';   /* New */
input @1877   measuredBasalDiameter   $char4.   @;   label   measuredBasalDiameter   ='3887_Measured Basal Diameter - measuredBasalDiameter - Tumor';   /* New */
input @1881   measuredThickness   $char4.   @;   label   measuredThickness   ='3888_Measured Thickness - measuredThickness - Tumor';   /* New */
input @1885   microvascularDensity   $char2.   @;   label   microvascularDensity   ='3891_Microvascular Density - microvascularDensity - Tumor';   /* New */
input @1887   mitoticCountUvealMelanoma   $char4.   @;   label   mitoticCountUvealMelanoma   ='3892_Mitotic Count Uveal Melanoma - mitoticCountUvealMelanoma - Tumor';   /* New */
input @1891   breslowTumorThickness   $char4.   @;   label   breslowTumorThickness   ='3817_Breslow Tumor Thickness - breslowTumorThickness - Tumor';   /* New */
input @1895   ldhUpperLimitsOfNormal   $char3.   @;   label   ldhUpperLimitsOfNormal   ='3870_LDH Upper Limits of Normal - ldhUpperLimitsOfNormal - Tumor';   /* New */
input @1898   ldhPretreatmentLabValue   $char7.   @;   label   ldhPretreatmentLabValue   ='3932_LDH Pretreatment Lab Value - ldhPretreatmentLabValue - Tumor';   /* New */
input @1905   ulceration   $char1.   @;   label   ulceration   ='3936_Ulceration - ulceration - Tumor';   /* New */
input @1906   lnIsolatedTumorCells   $char1.   @;   label   lnIsolatedTumorCells   ='3880_LN Isolated Tumor Cells (ITC) - lnIsolatedTumorCells - Tumor';   /* New */
input @1907   profoundImmuneSuppression   $char1.   @;   label   profoundImmuneSuppression   ='3918_Profound Immune Suppression - profoundImmuneSuppression - Tumor';   /* New */
input @1908   peripheralBloodInvolvement   $char1.   @;   label   peripheralBloodInvolvement   ='3910_Peripheral Blood Involvement - peripheralBloodInvolvement - Tumor';   /* New */
input @1909   heritableTrait   $char1.   @;   label   heritableTrait   ='3856_Heritable Trait - heritableTrait - Tumor';   /* New */
input @1910   adenopathy   $char1.   @;   label   adenopathy   ='3804_Adenopathy - adenopathy - Tumor';   /* New */
input @1911   anemia   $char1.   @;   label   anemia   ='3811_Anemia - anemia - Tumor';   /* New */
input @1912   lymphocytosis   $char1.   @;   label   lymphocytosis   ='3885_Lymphocytosis - lymphocytosis - Tumor';   /* New */
input @1913   organomegaly   $char1.   @;   label   organomegaly   ='3907_Organomegaly - organomegaly - Tumor';   /* New */
input @1914   thrombocytopenia   $char1.   @;   label   thrombocytopenia   ='3933_Thrombocytopenia - thrombocytopenia - Tumor';   /* New */
input @1915   highRiskCytogenetics   $char1.   @;   label   highRiskCytogenetics   ='3857_High Risk Cytogenetics - highRiskCytogenetics - Tumor';   /* New */
input @1916   ldhPretreatmentLevel   $char1.   @;   label   ldhPretreatmentLevel   ='3869_LDH Pretreatment Level - ldhPretreatmentLevel - Tumor';   /* New */
input @1917   serumAlbuminPretreatmentLevel   $char1.   @;   label   serumAlbuminPretreatmentLevel   ='3930_Serum Albumin Pretreatment Level - serumAlbuminPretreatmentLevel - Tumor';   /* New */
input @1918   serumBeta2MicroglobulinPretxLvl   $char1.   @;   label   serumBeta2MicroglobulinPretxLvl   ='3931_Serum Beta-2 Microglobulin Pretreatment Level - serumBeta2MicroglobulinPretxLvl - Tumor';   /* New */
input @1919   ca125PretreatmentInterpretation   $char1.   @;   label   ca125PretreatmentInterpretation   ='3818_CA-125 Pretreatment Interpretation - ca125PretreatmentInterpretation - Tumor';   /* New */
input @1920   residualTumVolPostCytoreduction   $char2.   @;   label   residualTumVolPostCytoreduction   ='3921_Residual Tumor Volume Post Cytoreduction - residualTumVolPostCytoreduction - Tumor';   /* New */
input @1922   extranodalExtensionClin   $char1.   @;   label   extranodalExtensionClin   ='3830_Extranodal Extension Clin (non-Head and Neck) - extranodalExtensionClin - Tumor';   /* New */
input @1923   extranodalExtensionPath   $char1.   @;   label   extranodalExtensionPath   ='3833_Extranodal Extension Path (non-Head and Neck) - extranodalExtensionPath - Tumor';   /* New */
input @1924   gestationalTrophoblasticPxIndex   $char2.   @;   label   gestationalTrophoblasticPxIndex   ='3837_Gestational Trophoblastic Prognostic Scoring Index - gestationalTrophoblasticPxIndex - Tumor';   /* New */
input @1926   pleuralEffusion   $char1.   @;   label   pleuralEffusion   ='3913_Pleural Effusion - pleuralEffusion - Tumor';   /* New */
input @1927   gleasonPatternsClinical   $char2.   @;   label   gleasonPatternsClinical   ='3838_Gleason Patterns Clinical - gleasonPatternsClinical - Tumor';   /* New */
input @1929   gleasonPatternsPathological   $char2.   @;   label   gleasonPatternsPathological   ='3839_Gleason Patterns Pathological - gleasonPatternsPathological - Tumor';   /* New */
input @1931   gleasonScoreClinical   $char2.   @;   label   gleasonScoreClinical   ='3840_Gleason Score Clinical - gleasonScoreClinical - Tumor';   /* New */
input @1933   gleasonScorePathological   $char2.   @;   label   gleasonScorePathological   ='3841_Gleason Score Pathological - gleasonScorePathological - Tumor';   /* New */
input @1935   gleasonTertiaryPattern   $char2.   @;   label   gleasonTertiaryPattern   ='3842_Gleason Tertiary Pattern - gleasonTertiaryPattern - Tumor';   /* New */
input @1937   numberOfCoresExamined   $char2.   @;   label   numberOfCoresExamined   ='3897_Number of Cores Examined - numberOfCoresExamined - Tumor';   /* New */
input @1939   numberOfCoresPositive   $char2.   @;   label   numberOfCoresPositive   ='3898_Number of Cores Positive - numberOfCoresPositive - Tumor';   /* New */
input @1941   prostatePathologicalExtension   $char3.   @;   label   prostatePathologicalExtension   ='3919_Prostate Pathological Extension - prostatePathologicalExtension - Tumor';   /* New */
input @1944   psaLabValue   $char5.   @;   label   psaLabValue   ='3920_PSA (Prostatic Specific Antigen) Lab Value - psaLabValue - Tumor';   /* New */
input @1949   highRiskHistologicFeatures   $char1.   @;   label   highRiskHistologicFeatures   ='3858_High Risk Histologic Features - highRiskHistologicFeatures - Tumor';   /* New */
input @1950   boneInvasion   $char1.   @;   label   boneInvasion   ='3815_Bone Invasion - boneInvasion - Tumor';   /* New */
input @1951   afpPreOrchiectomyLabValue   $char7.   @;   label   afpPreOrchiectomyLabValue   ='3807_AFP Pre-Orchiectomy Lab Value - afpPreOrchiectomyLabValue - Tumor';   /* New */
input @1958   afpPreOrchiectomyRange   $char1.   @;   label   afpPreOrchiectomyRange   ='3808_AFP Pre-Orchiectomy Range - afpPreOrchiectomyRange - Tumor';   /* New */
input @1959   afpPostOrchiectomyLabValue   $char7.   @;   label   afpPostOrchiectomyLabValue   ='3805_AFP Post-Orchiectomy Lab Value - afpPostOrchiectomyLabValue - Tumor';   /* New */
input @1966   afpPostOrchiectomyRange   $char1.   @;   label   afpPostOrchiectomyRange   ='3806_AFP Post-Orchiectomy Range - afpPostOrchiectomyRange - Tumor';   /* New */
input @1967   hcgPreOrchiectomyLabValue   $char7.   @;   label   hcgPreOrchiectomyLabValue   ='3848_hCG Pre-Orchiectomy Lab Value - hcgPreOrchiectomyLabValue - Tumor';   /* New */
input @1974   hcgPreOrchiectomyRange   $char1.   @;   label   hcgPreOrchiectomyRange   ='3849_hCG Pre-Orchiectomy Range - hcgPreOrchiectomyRange - Tumor';   /* New */
input @1975   hcgPostOrchiectomyLabValue   $char7.   @;   label   hcgPostOrchiectomyLabValue   ='3846_hCG Post-Orchiectomy Lab Value - hcgPostOrchiectomyLabValue - Tumor';   /* New */
input @1982   hcgPostOrchiectomyRange   $char1.   @;   label   hcgPostOrchiectomyRange   ='3847_hCG Post-Orchiectomy Range - hcgPostOrchiectomyRange - Tumor';   /* New */
input @1983   ldhPreOrchiectomyRange   $char1.   @;   label   ldhPreOrchiectomyRange   ='3868_LDH Pre-Orchiectomy Range - ldhPreOrchiectomyRange - Tumor';   /* New */
input @1984   ldhPostOrchiectomyRange   $char1.   @;   label   ldhPostOrchiectomyRange   ='3867_LDH Post-Orchiectomy Range - ldhPostOrchiectomyRange - Tumor';   /* New */
input @1985   sCategoryClinical   $char1.   @;   label   sCategoryClinical   ='3923_S Category Clinical - sCategoryClinical - Tumor';   /* New */
input @1986   sCategoryPathological   $char1.   @;   label   sCategoryPathological   ='3924_S Category Pathological - sCategoryPathological - Tumor';   /* New */
input @1987   lnAssessMethodParaaortic   $char1.   @;   label   lnAssessMethodParaaortic   ='3872_LN Assessment Method Para-Aortic - lnAssessMethodParaaortic - Tumor';   /* New */
input @1988   lnAssessMethodPelvic   $char1.   @;   label   lnAssessMethodPelvic   ='3873_LN Assessment Method Pelvic - lnAssessMethodPelvic - Tumor';   /* New */
input @1989   lnStatusFemorInguinParaaortPelv   $char1.   @;   label   lnStatusFemorInguinParaaortPelv   ='3874_LN Distant Assessment Method - lnStatusFemorInguinParaaortPelv - Tumor';   /* New */
input @1990   lnDistantMediastinalScalene   $char1.   @;   label   lnDistantMediastinalScalene   ='3875_LN Distant: Mediastinal, Scalene - lnDistantMediastinalScalene - Tumor';   /* New */
input @1991   lnStatusFemorInguinParaaortPelv   $char1.   @;   label   lnStatusFemorInguinParaaortPelv   ='3884_LN Status Femoral-Inguinal, Para-Aortic, Pelvic - lnStatusFemorInguinParaaortPelv - Tumor';   /* New */
input @1992   lnAssessMethodFemoralInguinal   $char1.   @;   label   lnAssessMethodFemoralInguinal   ='3871_LN Assessment Method Femoral-Inguinal - lnAssessMethodFemoralInguinal - Tumor';   /* New */
input @1993   lnLaterality   $char1.   @;   label   lnLaterality   ='3881_LN Laterality - lnLaterality - Tumor';   /* New */
input @1994   brainMolecularMarkers   $char2.   @;   label   brainMolecularMarkers   ='3816_Brain Molecular Markers - brainMolecularMarkers - Tumor';   /* New */
*input @1996   reserved05   $char98.   @;   *label   reserved05   ='1180_Reserved 05 - reserved05 - Tumor';   /* Revised */
input @2094   dateInitialRxSeer   $char8.   @;   label   dateInitialRxSeer   ='1260_Date Initial RX SEER - dateInitialRxSeer - Tumor';   /* Revised */
input @2102   dateInitialRxSeerFlag   $char2.   @;   label   dateInitialRxSeerFlag   ='1261_Date Initial RX SEER Flag - dateInitialRxSeerFlag - Tumor';   /* Revised */
input @2104   date1stCrsRxCoc   $char8.   @;   label   date1stCrsRxCoc   ='1270_Date 1st Crs RX CoC - date1stCrsRxCoc - Tumor';   /* Revised */
input @2112   date1stCrsRxCocFlag   $char2.   @;   label   date1stCrsRxCocFlag   ='1271_Date 1st Crs RX CoC Flag - date1stCrsRxCocFlag - Tumor';   /* Revised */
input @2114   rxDateSurgery   $char8.   @;   label   rxDateSurgery   ='1200_RX Date Surgery - rxDateSurgery - Tumor';   /* Revised */
input @2122   rxDateSurgeryFlag   $char2.   @;   label   rxDateSurgeryFlag   ='1201_RX Date Surgery Flag - rxDateSurgeryFlag - Tumor';   /* Revised */
input @2124   rxDateMostDefinSurg   $char8.   @;   label   rxDateMostDefinSurg   ='3170_RX Date Mst Defn Srg - rxDateMostDefinSurg - Tumor';   /* Revised */
input @2132   rxDateMostDefinSurgFlag   $char2.   @;   label   rxDateMostDefinSurgFlag   ='3171_RX Date Mst Defn Srg Flag - rxDateMostDefinSurgFlag - Tumor';   /* Revised */
input @2134   rxDateSurgicalDisch   $char8.   @;   label   rxDateSurgicalDisch   ='3180_RX Date Surg Disch - rxDateSurgicalDisch - Tumor';   /* Revised */
input @2142   rxDateSurgicalDischFlag   $char2.   @;   label   rxDateSurgicalDischFlag   ='3181_RX Date Surg Disch Flag - rxDateSurgicalDischFlag - Tumor';   /* Revised */
input @2144   rxDateRadiation   $char8.   @;   label   rxDateRadiation   ='1210_RX Date Radiation - rxDateRadiation - Tumor';   /* Revised */
input @2152   rxDateRadiationFlag   $char2.   @;   label   rxDateRadiationFlag   ='1211_RX Date Radiation Flag - rxDateRadiationFlag - Tumor';   /* Revised */
input @2154   rxDateRadiationEnded   $char8.   @;   label   rxDateRadiationEnded   ='3220_RX Date Rad Ended - rxDateRadiationEnded - Tumor';   /* Revised */
input @2162   rxDateRadiationEndedFlag   $char2.   @;   label   rxDateRadiationEndedFlag   ='3221_RX Date Rad Ended Flag - rxDateRadiationEndedFlag - Tumor';   /* Revised */
input @2164   rxDateSystemic   $char8.   @;   label   rxDateSystemic   ='3230_RX Date Systemic - rxDateSystemic - Tumor';   /* Revised */
input @2172   rxDateSystemicFlag   $char2.   @;   label   rxDateSystemicFlag   ='3231_RX Date Systemic Flag - rxDateSystemicFlag - Tumor';   /* Revised */
input @2174   rxDateChemo   $char8.   @;   label   rxDateChemo   ='1220_RX Date Chemo - rxDateChemo - Tumor';   /* Revised */
input @2182   rxDateChemoFlag   $char2.   @;   label   rxDateChemoFlag   ='1221_RX Date Chemo Flag - rxDateChemoFlag - Tumor';   /* Revised */
input @2184   rxDateHormone   $char8.   @;   label   rxDateHormone   ='1230_RX Date Hormone - rxDateHormone - Tumor';   /* Revised */
input @2192   rxDateHormoneFlag   $char2.   @;   label   rxDateHormoneFlag   ='1231_RX Date Hormone Flag - rxDateHormoneFlag - Tumor';   /* Revised */
input @2194   rxDateBrm   $char8.   @;   label   rxDateBrm   ='1240_RX Date BRM - rxDateBrm - Tumor';   /* Revised */
input @2202   rxDateBrmFlag   $char2.   @;   label   rxDateBrmFlag   ='1241_RX Date BRM Flag - rxDateBrmFlag - Tumor';   /* Revised */
input @2204   rxDateOther   $char8.   @;   label   rxDateOther   ='1250_RX Date Other - rxDateOther - Tumor';   /* Revised */
input @2212   rxDateOtherFlag   $char2.   @;   label   rxDateOtherFlag   ='1251_RX Date Other Flag - rxDateOtherFlag - Tumor';   /* Revised */
input @2214   rxDateDxStgProc   $char8.   @;   label   rxDateDxStgProc   ='1280_RX Date DX/Stg Proc - rxDateDxStgProc - Tumor';   /* Revised */
input @2222   rxDateDxStgProcFlag   $char2.   @;   label   rxDateDxStgProcFlag   ='1281_RX Date DX/Stg Proc Flag - rxDateDxStgProcFlag - Tumor';   /* Revised */
input @2224   rxSummTreatmentStatus   $char1.   @;   label   rxSummTreatmentStatus   ='1285_RX Summ--Treatment Status - rxSummTreatmentStatus - Tumor';   /* Revised */
input @2225   rxSummSurgPrimSite   $char2.   @;   label   rxSummSurgPrimSite   ='1290_RX Summ--Surg Prim Site - rxSummSurgPrimSite - Tumor';   /* Revised */
input @2227   rxSummScopeRegLnSur   $char1.   @;   label   rxSummScopeRegLnSur   ='1292_RX Summ--Scope Reg LN Sur - rxSummScopeRegLnSur - Tumor';   /* Revised */
input @2228   rxSummSurgOthRegDis   $char1.   @;   label   rxSummSurgOthRegDis   ='1294_RX Summ--Surg Oth Reg/Dis - rxSummSurgOthRegDis - Tumor';   /* Revised */
input @2229   rxSummRegLnExamined   $char2.   @;   label   rxSummRegLnExamined   ='1296_RX Summ--Reg LN Examined - rxSummRegLnExamined - Tumor';   /* Revised */
input @2231   rxSummSurgicalApproch   $char1.   @;   label   rxSummSurgicalApproch   ='1310_RX Summ--Surgical Approch - rxSummSurgicalApproch - Tumor';   /* Revised */
input @2232   rxSummSurgicalMargins   $char1.   @;   label   rxSummSurgicalMargins   ='1320_RX Summ--Surgical Margins - rxSummSurgicalMargins - Tumor';   /* Revised */
input @2233   rxSummReconstruct1st   $char1.   @;   label   rxSummReconstruct1st   ='1330_RX Summ--Reconstruct 1st - rxSummReconstruct1st - Tumor';   /* Revised */
input @2234   reasonForNoSurgery   $char1.   @;   label   reasonForNoSurgery   ='1340_Reason for No Surgery - reasonForNoSurgery - Tumor';   /* Revised */
input @2235   rxSummDxStgProc   $char2.   @;   label   rxSummDxStgProc   ='1350_RX Summ--DX/Stg Proc - rxSummDxStgProc - Tumor';   /* Revised */
input @2237   rxSummPalliativeProc   $char1.   @;   label   rxSummPalliativeProc   ='3270_RX Summ--Palliative Proc - rxSummPalliativeProc - Tumor';   /* Revised */
input @2238   rxSummRadiation   $char1.   @;   label   rxSummRadiation   ='1360_RX Summ--Radiation - rxSummRadiation - Tumor';   /* Revised */
input @2239   rxSummRadToCns   $char1.   @;   label   rxSummRadToCns   ='1370_RX Summ--Rad to CNS - rxSummRadToCns - Tumor';   /* Revised */
input @2240   rxSummSurgRadSeq   $char1.   @;   label   rxSummSurgRadSeq   ='1380_RX Summ--Surg/Rad Seq - rxSummSurgRadSeq - Tumor';   /* Revised */
input @2241   rxSummTransplntEndocr   $char2.   @;   label   rxSummTransplntEndocr   ='3250_RX Summ--Transplnt/Endocr - rxSummTransplntEndocr - Tumor';   /* Revised */
input @2243   rxSummChemo   $char2.   @;   label   rxSummChemo   ='1390_RX Summ--Chemo - rxSummChemo - Tumor';   /* Revised */
input @2245   rxSummHormone   $char2.   @;   label   rxSummHormone   ='1400_RX Summ--Hormone - rxSummHormone - Tumor';   /* Revised */
input @2247   rxSummBrm   $char2.   @;   label   rxSummBrm   ='1410_RX Summ--BRM - rxSummBrm - Tumor';   /* Revised */
input @2249   rxSummOther   $char1.   @;   label   rxSummOther   ='1420_RX Summ--Other - rxSummOther - Tumor';   /* Revised */
input @2250   reasonForNoRadiation   $char1.   @;   label   reasonForNoRadiation   ='1430_Reason for No Radiation - reasonForNoRadiation - Tumor';   /* Revised */
input @2251   rxCodingSystemCurrent   $char2.   @;   label   rxCodingSystemCurrent   ='1460_RX Coding System--Current - rxCodingSystemCurrent - Tumor';   /* Revised */
input @2253   radRegionalDoseCgy   $char5.   @;   label   radRegionalDoseCgy   ='1510_Rad--Regional Dose: cGy - radRegionalDoseCgy - Tumor';   /* Revised */
input @2258   radNoOfTreatmentVol   $char3.   @;   label   radNoOfTreatmentVol   ='1520_Rad--No of Treatment Vol - radNoOfTreatmentVol - Tumor';   /* Revised */
input @2261   radTreatmentVolume   $char2.   @;   label   radTreatmentVolume   ='1540_Rad--Treatment Volume - radTreatmentVolume - Tumor';   /* Revised */
input @2263   radLocationOfRx   $char1.   @;   label   radLocationOfRx   ='1550_Rad--Location of RX - radLocationOfRx - Tumor';   /* Revised */
input @2264   radRegionalRxModality   $char2.   @;   label   radRegionalRxModality   ='1570_Rad--Regional RX Modality - radRegionalRxModality - Tumor';   /* Revised */
input @2266   radBoostRxModality   $char2.   @;   label   radBoostRxModality   ='3200_Rad--Boost RX Modality - radBoostRxModality - Tumor';   /* Revised */
input @2268   radBoostDoseCgy   $char5.   @;   label   radBoostDoseCgy   ='3210_Rad--Boost Dose cGy - radBoostDoseCgy - Tumor';   /* Revised */
input @2273   rxSummSystemicSurSeq   $char1.   @;   label   rxSummSystemicSurSeq   ='1639_RX Summ--Systemic/Sur Seq - rxSummSystemicSurSeq - Tumor';   /* Revised */
input @2274   rxSummSurgeryType   $char2.   @;   label   rxSummSurgeryType   ='1640_RX Summ--Surgery Type - rxSummSurgeryType - Tumor';   /* Revised */
input @2276   readmSameHosp30Days   $char1.   @;   label   readmSameHosp30Days   ='3190_Readm Same Hosp 30 Days - readmSameHosp30Days - Tumor';   /* Revised */
input @2277   rxSummSurgSite9802   $char2.   @;   label   rxSummSurgSite9802   ='1646_RX Summ--Surg Site 98-02 - rxSummSurgSite9802 - Tumor';   /* Revised */
input @2279   rxSummScopeReg9802   $char1.   @;   label   rxSummScopeReg9802   ='1647_RX Summ--Scope Reg 98-02 - rxSummScopeReg9802 - Tumor';   /* Revised */
input @2280   rxSummSurgOth9802   $char1.   @;   label   rxSummSurgOth9802   ='1648_RX Summ--Surg Oth 98-02 - rxSummSurgOth9802 - Tumor';   /* Revised */
input @2281   phase1RadiationToDrainingLN   $char2.   @;   label   phase1RadiationToDrainingLN   ='1504_Phase I Radiation Primary Treatment Volume - phase1RadiationToDrainingLN - Tumor';   /* New */
input @2283   phase1RadiationToDrainingLN   $char2.   @;   label   phase1RadiationToDrainingLN   ='1505_Phase I Radiation to Draining Lymph Nodes - phase1RadiationToDrainingLN - Tumor';   /* New */
input @2285   phase1RadiationTreatmentModality   $char2.   @;   label   phase1RadiationTreatmentModality   ='1506_Phase I Radiation Treatment Modality - phase1RadiationTreatmentModality - Tumor';   /* New */
input @2287   phase1RadiationExternalBeamTech   $char2.   @;   label   phase1RadiationExternalBeamTech   ='1502_Phase I Radiation External Beam Planning Tech - phase1RadiationExternalBeamTech - Tumor';   /* New */
input @2289   phase1DosePerFraction   $char5.   @;   label   phase1DosePerFraction   ='1501_Phase I Dose per Fraction - phase1DosePerFraction - Tumor';   /* New */
input @2294   phase1NumberOfFractions   $char3.   @;   label   phase1NumberOfFractions   ='1503_Phase I Number of Fractions - phase1NumberOfFractions - Tumor';   /* New */
input @2297   phase1TotalDose   $char6.   @;   label   phase1TotalDose   ='1507_Phase I Total Dose - phase1TotalDose - Tumor';   /* New */
input @2303   phase2RadiationPrimaryTxVolume   $char2.   @;   label   phase2RadiationPrimaryTxVolume   ='1514_Phase II Radiation Primary Treatment Volume - phase2RadiationPrimaryTxVolume - Tumor';   /* New */
input @2305   phase2RadiationToDrainingLN   $char2.   @;   label   phase2RadiationToDrainingLN   ='1515_Phase II Radiation to Draining Lymph Nodes - phase2RadiationToDrainingLN - Tumor';   /* New */
input @2307   phase2RadiationTreatmentModality   $char2.   @;   label   phase2RadiationTreatmentModality   ='1516_Phase II Radiation Treatment Modality - phase2RadiationTreatmentModality - Tumor';   /* New */
input @2309   phase2RadiationExternalBeamTech   $char2.   @;   label   phase2RadiationExternalBeamTech   ='1512_Phase II Radiation External Beam Planning Tech - phase2RadiationExternalBeamTech - Tumor';   /* New */
input @2311   phase2DosePerFraction   $char5.   @;   label   phase2DosePerFraction   ='1511_Phase II Dose per Fraction - phase2DosePerFraction - Tumor';   /* New */
input @2316   phase2NumberOfFractions   $char3.   @;   label   phase2NumberOfFractions   ='1513_Phase II Number of Fractions - phase2NumberOfFractions - Tumor';   /* New */
input @2319   phase2TotalDose   $char6.   @;   label   phase2TotalDose   ='1517_Phase II Total Dose - phase2TotalDose - Tumor';   /* New */
input @2325   phase3RadiationPrimaryTxVolume   $char2.   @;   label   phase3RadiationPrimaryTxVolume   ='1524_Phase III Radiation Primary Treatment Volume - phase3RadiationPrimaryTxVolume - Tumor';   /* New */
input @2327   phase3RadiationToDrainingLN   $char2.   @;   label   phase3RadiationToDrainingLN   ='1525_Phase III Radiation to Draining Lymph Nodes - phase3RadiationToDrainingLN - Tumor';   /* New */
input @2329   phase3RadiationTreatmentModality   $char2.   @;   label   phase3RadiationTreatmentModality   ='1526_Phase III Radiation Treatment Modality - phase3RadiationTreatmentModality - Tumor';   /* New */
input @2331   phase3RadiationExternalBeamTech   $char2.   @;   label   phase3RadiationExternalBeamTech   ='1522_Phase III Radiation External Beam Planning Tech - phase3RadiationExternalBeamTech - Tumor';   /* New */
input @2333   phase3DosePerFraction   $char5.   @;   label   phase3DosePerFraction   ='1521_Phase III Dose per Fraction - phase3DosePerFraction - Tumor';   /* New */
input @2338   phase3NumberOfFractions   $char3.   @;   label   phase3NumberOfFractions   ='1523_Phase III Number of Fractions - phase3NumberOfFractions - Tumor';   /* New */
input @2341   phase3TotalDose   $char6.   @;   label   phase3TotalDose   ='1527_Phase III Total Dose - phase3TotalDose - Tumor';   /* New */
input @2347   numberPhasesOfRadTxToVolume   $char2.   @;   label   numberPhasesOfRadTxToVolume   ='1532_Number of Phases of Rad Treatment to this Volume - numberPhasesOfRadTxToVolume - Tumor';   /* New */
input @2349   radiationTxDiscontinuedEarly   $char2.   @;   label   radiationTxDiscontinuedEarly   ='1531_Radiation Treatment Discontinued Early - radiationTxDiscontinuedEarly - Tumor';   /* New */
input @2351   totalDose   $char6.   @;   label   totalDose   ='1533_Total Dose - totalDose - Tumor';   /* New */
*input @2357   reserved06   $char100.   @;   *label   reserved06   ='1190_Reserved 06 - reserved06 - Tumor';   /* Revised */
input @2457   subsqRx2ndCourseDate   $char8.   @;   label   subsqRx2ndCourseDate   ='1660_Subsq RX 2nd Course Date - subsqRx2ndCourseDate - Tumor';   /* Revised */
input @2465   subsqRx2ndcrsDateFlag   $char2.   @;   label   subsqRx2ndcrsDateFlag   ='1661_Subsq RX 2ndCrs Date Flag - subsqRx2ndcrsDateFlag - Tumor';   /* Revised */
input @2467   subsqRx2ndCourseSurg   $char2.   @;   label   subsqRx2ndCourseSurg   ='1671_Subsq RX 2nd Course Surg - subsqRx2ndCourseSurg - Tumor';   /* Revised */
input @2467   subsqRx2ndCourseCodes   $char11.   @;   label   subsqRx2ndCourseCodes   ='1670_Subsq RX 2nd Course Codes - subsqRx2ndCourseCodes - Tumor';   /* Revised */
input @2469   subsqRx2ndScopeLnSu   $char1.   @;   label   subsqRx2ndScopeLnSu   ='1677_Subsq RX 2nd--Scope LN SU - subsqRx2ndScopeLnSu - Tumor';   /* Revised */
input @2470   subsqRx2ndSurgOth   $char1.   @;   label   subsqRx2ndSurgOth   ='1678_Subsq RX 2nd--Surg Oth - subsqRx2ndSurgOth - Tumor';   /* Revised */
input @2471   subsqRx2ndRegLnRem   $char2.   @;   label   subsqRx2ndRegLnRem   ='1679_Subsq RX 2nd--Reg LN Rem - subsqRx2ndRegLnRem - Tumor';   /* Revised */
input @2473   subsqRx2ndCourseRad   $char1.   @;   label   subsqRx2ndCourseRad   ='1672_Subsq RX 2nd Course Rad - subsqRx2ndCourseRad - Tumor';   /* Revised */
input @2474   subsqRx2ndCourseChemo   $char1.   @;   label   subsqRx2ndCourseChemo   ='1673_Subsq RX 2nd Course Chemo - subsqRx2ndCourseChemo - Tumor';   /* Revised */
input @2475   subsqRx2ndCourseHorm   $char1.   @;   label   subsqRx2ndCourseHorm   ='1674_Subsq RX 2nd Course Horm - subsqRx2ndCourseHorm - Tumor';   /* Revised */
input @2476   subsqRx2ndCourseBrm   $char1.   @;   label   subsqRx2ndCourseBrm   ='1675_Subsq RX 2nd Course BRM - subsqRx2ndCourseBrm - Tumor';   /* Revised */
input @2477   subsqRx2ndCourseOth   $char1.   @;   label   subsqRx2ndCourseOth   ='1676_Subsq RX 2nd Course Oth - subsqRx2ndCourseOth - Tumor';   /* Revised */
input @2478   subsqRx3rdCourseDate   $char8.   @;   label   subsqRx3rdCourseDate   ='1680_Subsq RX 3rd Course Date - subsqRx3rdCourseDate - Tumor';   /* Revised */
input @2486   subsqRx3rdcrsDateFlag   $char2.   @;   label   subsqRx3rdcrsDateFlag   ='1681_Subsq RX 3rdCrs Date Flag - subsqRx3rdcrsDateFlag - Tumor';   /* Revised */
input @2488   subsqRx3rdCourseCodes   $char11.   @;   label   subsqRx3rdCourseCodes   ='1690_Subsq RX 3rd Course Codes - subsqRx3rdCourseCodes - Tumor';   /* Revised */
input @2488   subsqRx3rdCourseSurg   $char2.   @;   label   subsqRx3rdCourseSurg   ='1691_Subsq RX 3rd Course Surg - subsqRx3rdCourseSurg - Tumor';   /* Revised */
input @2490   subsqRx3rdScopeLnSu   $char1.   @;   label   subsqRx3rdScopeLnSu   ='1697_Subsq RX 3rd--Scope LN Su - subsqRx3rdScopeLnSu - Tumor';   /* Revised */
input @2491   subsqRx3rdSurgOth   $char1.   @;   label   subsqRx3rdSurgOth   ='1698_Subsq RX 3rd--Surg Oth - subsqRx3rdSurgOth - Tumor';   /* Revised */
input @2492   subsqRx3rdRegLnRem   $char2.   @;   label   subsqRx3rdRegLnRem   ='1699_Subsq RX 3rd--Reg LN Rem - subsqRx3rdRegLnRem - Tumor';   /* Revised */
input @2494   subsqRx3rdCourseRad   $char1.   @;   label   subsqRx3rdCourseRad   ='1692_Subsq RX 3rd Course Rad - subsqRx3rdCourseRad - Tumor';   /* Revised */
input @2495   subsqRx3rdCourseChemo   $char1.   @;   label   subsqRx3rdCourseChemo   ='1693_Subsq RX 3rd Course Chemo - subsqRx3rdCourseChemo - Tumor';   /* Revised */
input @2496   subsqRx3rdCourseHorm   $char1.   @;   label   subsqRx3rdCourseHorm   ='1694_Subsq RX 3rd Course Horm - subsqRx3rdCourseHorm - Tumor';   /* Revised */
input @2497   subsqRx3rdCourseBrm   $char1.   @;   label   subsqRx3rdCourseBrm   ='1695_Subsq RX 3rd Course BRM - subsqRx3rdCourseBrm - Tumor';   /* Revised */
input @2498   subsqRx3rdCourseOth   $char1.   @;   label   subsqRx3rdCourseOth   ='1696_Subsq RX 3rd Course Oth - subsqRx3rdCourseOth - Tumor';   /* Revised */
input @2499   subsqRx4thCourseDate   $char8.   @;   label   subsqRx4thCourseDate   ='1700_Subsq RX 4th Course Date - subsqRx4thCourseDate - Tumor';   /* Revised */
input @2507   subsqRx4thcrsDateFlag   $char2.   @;   label   subsqRx4thcrsDateFlag   ='1701_Subsq RX 4thCrs Date Flag - subsqRx4thcrsDateFlag - Tumor';   /* Revised */
input @2509   subsqRx4thCourseSurg   $char2.   @;   label   subsqRx4thCourseSurg   ='1711_Subsq RX 4th Course Surg - subsqRx4thCourseSurg - Tumor';   /* Revised */
input @2509   subsqRx4thCourseCodes   $char11.   @;   label   subsqRx4thCourseCodes   ='1710_Subsq RX 4th Course Codes - subsqRx4thCourseCodes - Tumor';   /* Revised */
input @2511   subsqRx4thScopeLnSu   $char1.   @;   label   subsqRx4thScopeLnSu   ='1717_Subsq RX 4th--Scope LN Su - subsqRx4thScopeLnSu - Tumor';   /* Revised */
input @2512   subsqRx4thSurgOth   $char1.   @;   label   subsqRx4thSurgOth   ='1718_Subsq RX 4th--Surg Oth - subsqRx4thSurgOth - Tumor';   /* Revised */
input @2513   subsqRx4thRegLnRem   $char2.   @;   label   subsqRx4thRegLnRem   ='1719_Subsq RX 4th--Reg LN Rem - subsqRx4thRegLnRem - Tumor';   /* Revised */
input @2515   subsqRx4thCourseRad   $char1.   @;   label   subsqRx4thCourseRad   ='1712_Subsq RX 4th Course Rad - subsqRx4thCourseRad - Tumor';   /* Revised */
input @2516   subsqRx4thCourseChemo   $char1.   @;   label   subsqRx4thCourseChemo   ='1713_Subsq RX 4th Course Chemo - subsqRx4thCourseChemo - Tumor';   /* Revised */
input @2517   subsqRx4thCourseHorm   $char1.   @;   label   subsqRx4thCourseHorm   ='1714_Subsq RX 4th Course Horm - subsqRx4thCourseHorm - Tumor';   /* Revised */
input @2518   subsqRx4thCourseBrm   $char1.   @;   label   subsqRx4thCourseBrm   ='1715_Subsq RX 4th Course BRM - subsqRx4thCourseBrm - Tumor';   /* Revised */
input @2519   subsqRx4thCourseOth   $char1.   @;   label   subsqRx4thCourseOth   ='1716_Subsq RX 4th Course Oth - subsqRx4thCourseOth - Tumor';   /* Revised */
input @2520   subsqRxReconstructDel   $char1.   @;   label   subsqRxReconstructDel   ='1741_Subsq RX--Reconstruct Del - subsqRxReconstructDel - Tumor';   /* Revised */
*input @2521   reserved07   $char50.   @;   *label   reserved07   ='1300_Reserved 07 - reserved07 - Tumor';   /* Revised */
input @2571   overRideSsNodespos   $char1.   @;   label   overRideSsNodespos   ='1981_Over-ride SS/NodesPos - overRideSsNodespos - Tumor';   /* Revised */
input @2572   overRideSsTnmN   $char1.   @;   label   overRideSsTnmN   ='1982_Over-ride SS/TNM-N - overRideSsTnmN - Tumor';   /* Revised */
input @2573   overRideSsTnmM   $char1.   @;   label   overRideSsTnmM   ='1983_Over-ride SS/TNM-M - overRideSsTnmM - Tumor';   /* Revised */
input @2574   overRideAcsnClassSeq   $char1.   @;   label   overRideAcsnClassSeq   ='1985_Over-ride Acsn/Class/Seq - overRideAcsnClassSeq - Tumor';   /* Revised */
input @2575   overRideHospseqDxconf   $char1.   @;   label   overRideHospseqDxconf   ='1986_Over-ride HospSeq/DxConf - overRideHospseqDxconf - Tumor';   /* Revised */
input @2576   overRideCocSiteType   $char1.   @;   label   overRideCocSiteType   ='1987_Over-ride CoC-Site/Type - overRideCocSiteType - Tumor';   /* Revised */
input @2577   overRideHospseqSite   $char1.   @;   label   overRideHospseqSite   ='1988_Over-ride HospSeq/Site - overRideHospseqSite - Tumor';   /* Revised */
input @2578   overRideSiteTnmStggrp   $char1.   @;   label   overRideSiteTnmStggrp   ='1989_Over-ride Site/TNM-StgGrp - overRideSiteTnmStggrp - Tumor';   /* Revised */
input @2579   overRideAgeSiteMorph   $char1.   @;   label   overRideAgeSiteMorph   ='1990_Over-ride Age/Site/Morph - overRideAgeSiteMorph - Tumor';   /* Revised */
input @2580   overRideTnmStage   $char1.   @;   label   overRideTnmStage   ='1992_Over-ride TNM Stage - overRideTnmStage - Tumor';   /* New */
input @2581   overRideTnmTis   $char1.   @;   label   overRideTnmTis   ='1993_Over-ride TNM Tis - overRideTnmTis - Tumor';   /* New */
input @2582   overRideTnm3   $char1.   @;   label   overRideTnm3   ='1994_Over-ride TNM 3 - overRideTnm3 - Tumor';   /* New */
input @2583   overRideSeqnoDxconf   $char1.   @;   label   overRideSeqnoDxconf   ='2000_Over-ride SeqNo/DxConf - overRideSeqnoDxconf - Tumor';   /* Revised */
input @2584   overRideSiteLatSeqno   $char1.   @;   label   overRideSiteLatSeqno   ='2010_Over-ride Site/Lat/SeqNo - overRideSiteLatSeqno - Tumor';   /* Revised */
input @2585   overRideSurgDxconf   $char1.   @;   label   overRideSurgDxconf   ='2020_Over-ride Surg/DxConf - overRideSurgDxconf - Tumor';   /* Revised */
input @2586   overRideSiteType   $char1.   @;   label   overRideSiteType   ='2030_Over-ride Site/Type - overRideSiteType - Tumor';   /* Revised */
input @2587   overRideHistology   $char1.   @;   label   overRideHistology   ='2040_Over-ride Histology - overRideHistology - Tumor';   /* Revised */
input @2588   overRideReportSource   $char1.   @;   label   overRideReportSource   ='2050_Over-ride Report Source - overRideReportSource - Tumor';   /* Revised */
input @2589   overRideIllDefineSite   $char1.   @;   label   overRideIllDefineSite   ='2060_Over-ride Ill-define Site - overRideIllDefineSite - Tumor';   /* Revised */
input @2590   overRideLeukLymphoma   $char1.   @;   label   overRideLeukLymphoma   ='2070_Over-ride Leuk, Lymphoma - overRideLeukLymphoma - Tumor';   /* Revised */
input @2591   overRideSiteBehavior   $char1.   @;   label   overRideSiteBehavior   ='2071_Over-ride Site/Behavior - overRideSiteBehavior - Tumor';   /* Revised */
input @2592   overRideSiteEodDxDt   $char1.   @;   label   overRideSiteEodDxDt   ='2072_Over-ride Site/EOD/DX Dt - overRideSiteEodDxDt - Tumor';   /* Revised */
input @2593   overRideSiteLatEod   $char1.   @;   label   overRideSiteLatEod   ='2073_Over-ride Site/Lat/EOD - overRideSiteLatEod - Tumor';   /* Revised */
input @2594   overRideSiteLatMorph   $char1.   @;   label   overRideSiteLatMorph   ='2074_Over-ride Site/Lat/Morph - overRideSiteLatMorph - Tumor';   /* Revised */
input @2595   overRideNameSex   $char1.   @;   label   overRideNameSex   ='2078_Over-ride Name/Sex - overRideNameSex - Patient';   /* New */
input @2596   siteIcdO1   $char4.   @;   label   siteIcdO1   ='1960_Site (73-91) ICD-O-1 - siteIcdO1 - Tumor';   /* Revised */
input @2600   histologyIcdO1   $char4.   @;   label   histologyIcdO1   ='1971_Histology (73-91) ICD-O-1 - histologyIcdO1 - Tumor';   /* Revised */
input @2600   morphIcdO1   $char6.   @;   label   morphIcdO1   ='1970_Morph (73-91) ICD-O-1 - morphIcdO1 - Tumor';   /* Revised */
input @2604   behaviorIcdO1   $char1.   @;   label   behaviorIcdO1   ='1972_Behavior (73-91) ICD-O-1 - behaviorIcdO1 - Tumor';   /* Revised */
input @2605   gradeIcdO1   $char1.   @;   label   gradeIcdO1   ='1973_Grade (73-91) ICD-O-1 - gradeIcdO1 - Tumor';   /* Revised */
input @2606   icdO2ConversionFlag   $char1.   @;   label   icdO2ConversionFlag   ='1980_ICD-O-2 Conversion Flag - icdO2ConversionFlag - Tumor';   /* Revised */
input @2607   crcChecksum   $char10.   @;   label   crcChecksum   ='2081_CRC CHECKSUM - crcChecksum - Tumor';   /* Revised */
input @2617   seerCodingSysCurrent   $char1.   @;   label   seerCodingSysCurrent   ='2120_SEER Coding Sys--Current - seerCodingSysCurrent - Tumor';   /* Revised */
input @2618   seerCodingSysOriginal   $char1.   @;   label   seerCodingSysOriginal   ='2130_SEER Coding Sys--Original - seerCodingSysOriginal - Tumor';   /* Revised */
input @2619   cocCodingSysCurrent   $char2.   @;   label   cocCodingSysCurrent   ='2140_CoC Coding Sys--Current - cocCodingSysCurrent - Tumor';   /* Revised */
input @2621   cocCodingSysOriginal   $char2.   @;   label   cocCodingSysOriginal   ='2150_CoC Coding Sys--Original - cocCodingSysOriginal - Tumor';   /* Revised */
input @2623   rqrsNcdbSubmissionFlag   $char1.   @;   label   rqrsNcdbSubmissionFlag   ='2155_RQRS NCDB Submission Flag - rqrsNcdbSubmissionFlag - Tumor';   /* New */
input @2624   cocAccreditedFlag   $char1.   @;   label   cocAccreditedFlag   ='2152_CoC Accredited Flag - cocAccreditedFlag - Tumor';   /* New */
input @2625   vendorName   $char10.   @;   label   vendorName   ='2170_Vendor Name - vendorName - Tumor';   /* Revised */
input @2635   seerTypeOfFollowUp   $char1.   @;   label   seerTypeOfFollowUp   ='2180_SEER Type of Follow-Up - seerTypeOfFollowUp - Tumor';   /* Revised */
input @2636   seerRecordNumber   $char2.   @;   label   seerRecordNumber   ='2190_SEER Record Number - seerRecordNumber - Tumor';   /* Revised */
input @2638   diagnosticProc7387   $char2.   @;   label   diagnosticProc7387   ='2200_Diagnostic Proc 73-87 - diagnosticProc7387 - Tumor';   /* Revised */
input @2640   dateCaseInitiated   $char8.   @;   label   dateCaseInitiated   ='2085_Date Case Initiated - dateCaseInitiated - Tumor';   /* Revised */
input @2648   dateCaseCompleted   $char8.   @;   label   dateCaseCompleted   ='2090_Date Case Completed - dateCaseCompleted - Tumor';   /* Revised */
input @2656   dateCaseCompletedCoc   $char8.   @;   label   dateCaseCompletedCoc   ='2092_Date Case Completed--CoC - dateCaseCompletedCoc - Tumor';   /* Revised */
input @2664   dateCaseLastChanged   $char8.   @;   label   dateCaseLastChanged   ='2100_Date Case Last Changed - dateCaseLastChanged - Tumor';   /* Revised */
input @2672   dateCaseReportExported   $char8.   @;   label   dateCaseReportExported   ='2110_Date Case Report Exported - dateCaseReportExported - Tumor';   /* Revised */
input @2680   dateCaseReportReceived   $char8.   @;   label   dateCaseReportReceived   ='2111_Date Case Report Received - dateCaseReportReceived - Tumor';   /* Revised */
input @2688   dateCaseReportLoaded   $char8.   @;   label   dateCaseReportLoaded   ='2112_Date Case Report Loaded - dateCaseReportLoaded - Tumor';   /* Revised */
input @2696   dateTumorRecordAvailbl   $char8.   @;   label   dateTumorRecordAvailbl   ='2113_Date Tumor Record Availbl - dateTumorRecordAvailbl - Tumor';   /* Revised */
input @2704   icdO3ConversionFlag   $char1.   @;   label   icdO3ConversionFlag   ='2116_ICD-O-3 Conversion Flag - icdO3ConversionFlag - Tumor';   /* Revised */
input @2705   overRideCs1   $char1.   @;   label   overRideCs1   ='3750_Over-ride CS 1 - overRideCs1 - Tumor';   /* Revised */
input @2706   overRideCs2   $char1.   @;   label   overRideCs2   ='3751_Over-ride CS 2 - overRideCs2 - Tumor';   /* Revised */
input @2707   overRideCs3   $char1.   @;   label   overRideCs3   ='3752_Over-ride CS 3 - overRideCs3 - Tumor';   /* Revised */
input @2708   overRideCs4   $char1.   @;   label   overRideCs4   ='3753_Over-ride CS 4 - overRideCs4 - Tumor';   /* Revised */
input @2709   overRideCs5   $char1.   @;   label   overRideCs5   ='3754_Over-ride CS 5 - overRideCs5 - Tumor';   /* Revised */
input @2710   overRideCs6   $char1.   @;   label   overRideCs6   ='3755_Over-ride CS 6 - overRideCs6 - Tumor';   /* Revised */
input @2711   overRideCs7   $char1.   @;   label   overRideCs7   ='3756_Over-ride CS 7 - overRideCs7 - Tumor';   /* Revised */
input @2712   overRideCs8   $char1.   @;   label   overRideCs8   ='3757_Over-ride CS 8 - overRideCs8 - Tumor';   /* Revised */
input @2713   overRideCs9   $char1.   @;   label   overRideCs9   ='3758_Over-ride CS 9 - overRideCs9 - Tumor';   /* Revised */
input @2714   overRideCs10   $char1.   @;   label   overRideCs10   ='3759_Over-ride CS 10 - overRideCs10 - Tumor';   /* Revised */
input @2715   overRideCs11   $char1.   @;   label   overRideCs11   ='3760_Over-ride CS 11 - overRideCs11 - Tumor';   /* Revised */
input @2716   overRideCs12   $char1.   @;   label   overRideCs12   ='3761_Over-ride CS 12 - overRideCs12 - Tumor';   /* Revised */
input @2717   overRideCs13   $char1.   @;   label   overRideCs13   ='3762_Over-ride CS 13 - overRideCs13 - Tumor';   /* Revised */
input @2718   overRideCs14   $char1.   @;   label   overRideCs14   ='3763_Over-ride CS 14 - overRideCs14 - Tumor';   /* Revised */
input @2719   overRideCs15   $char1.   @;   label   overRideCs15   ='3764_Over-ride CS 15 - overRideCs15 - Tumor';   /* Revised */
input @2720   overRideCs16   $char1.   @;   label   overRideCs16   ='3765_Over-ride CS 16 - overRideCs16 - Tumor';   /* Revised */
input @2721   overRideCs17   $char1.   @;   label   overRideCs17   ='3766_Over-ride CS 17 - overRideCs17 - Tumor';   /* Revised */
input @2722   overRideCs18   $char1.   @;   label   overRideCs18   ='3767_Over-ride CS 18 - overRideCs18 - Tumor';   /* Revised */
input @2723   overRideCs19   $char1.   @;   label   overRideCs19   ='3768_Over-ride CS 19 - overRideCs19 - Tumor';   /* Revised */
input @2724   overRideCs20   $char1.   @;   label   overRideCs20   ='3769_Over-ride CS 20 - overRideCs20 - Tumor';   /* Revised */
*input @2725   reserved08   $char50.   @;   *label   reserved08   ='1650_Reserved 08 - reserved08 - Tumor';   /* Revised */
input @2775   dateOfLastContact   $char8.   @;   label   dateOfLastContact   ='1750_Date of Last Contact - dateOfLastContact - Patient';   /* Revised */
input @2783   dateOfLastContactFlag   $char2.   @;   label   dateOfLastContactFlag   ='1751_Date of Last Contact Flag - dateOfLastContactFlag - Patient';   /* Revised */
input @2785   vitalStatus   $char1.   @;   label   vitalStatus   ='1760_Vital Status - vitalStatus - Patient';   /* Revised */
input @2786   vitalStatusRecode   $char1.   @;   label   vitalStatusRecode   ='1762_Vital Status Recode - vitalStatusRecode - Patient';   /* New */
input @2787   cancerStatus   $char1.   @;   label   cancerStatus   ='1770_Cancer Status - cancerStatus - Tumor';   /* Revised */
input @2788   dateOfLastCancerStatus   $char8.   @;   label   dateOfLastCancerStatus   ='1772_Date of Last Cancer (tumor) Status - dateOfLastCancerStatus - Tumor';   /* New */
input @2796   dateOfLastCancerStatusFlag   $char2.   @;   label   dateOfLastCancerStatusFlag   ='1773_Date of Last Cancer (tumor) Status Flag - dateOfLastCancerStatusFlag - Tumor';   /* New */
input @2798   recordNumberRecode   $char2.   @;   label   recordNumberRecode   ='1775_Record Number Recode - recordNumberRecode - Tumor';   /* New */
input @2800   qualityOfSurvival   $char1.   @;   label   qualityOfSurvival   ='1780_Quality of Survival - qualityOfSurvival - Tumor';   /* Revised */
input @2801   followUpSource   $char1.   @;   label   followUpSource   ='1790_Follow-Up Source - followUpSource - Tumor';   /* Revised */
input @2802   nextFollowUpSource   $char1.   @;   label   nextFollowUpSource   ='1800_Next Follow-Up Source - nextFollowUpSource - Tumor';   /* Revised */
input @2803   addrCurrentCity   $char50.   @;   label   addrCurrentCity   ='1810_Addr Current--City - addrCurrentCity - Patient';   /* Revised */
input @2853   addrCurrentState   $char2.   @;   label   addrCurrentState   ='1820_Addr Current--State - addrCurrentState - Patient';   /* Revised */
input @2855   addrCurrentPostalCode   $char9.   @;   label   addrCurrentPostalCode   ='1830_Addr Current--Postal Code - addrCurrentPostalCode - Patient';   /* Revised */
input @2864   countyCurrent   $char3.   @;   label   countyCurrent   ='1840_County--Current - countyCurrent - Patient';   /* Revised */
input @2867   recurrenceDate1st   $char8.   @;   label   recurrenceDate1st   ='1860_Recurrence Date--1st - recurrenceDate1st - Tumor';   /* Revised */
input @2875   recurrenceDate1stFlag   $char2.   @;   label   recurrenceDate1stFlag   ='1861_Recurrence Date--1st Flag - recurrenceDate1stFlag - Tumor';   /* Revised */
input @2877   recurrenceType1st   $char2.   @;   label   recurrenceType1st   ='1880_Recurrence Type--1st - recurrenceType1st - Tumor';   /* Revised */
input @2879   followUpContactCity   $char50.   @;   label   followUpContactCity   ='1842_Follow-Up Contact--City - followUpContactCity - Tumor';   /* Revised */
input @2929   followUpContactState   $char2.   @;   label   followUpContactState   ='1844_Follow-Up Contact--State - followUpContactState - Tumor';   /* Revised */
input @2931   followUpContactPostal   $char9.   @;   label   followUpContactPostal   ='1846_Follow-Up Contact--Postal - followUpContactPostal - Tumor';   /* Revised */
input @2940   causeOfDeath   $char4.   @;   label   causeOfDeath   ='1910_Cause of Death - causeOfDeath - Patient';   /* Revised */
input @2944   seerCauseSpecificCod   $char1.   @;   label   seerCauseSpecificCod   ='1914_SEER Cause Specific COD - seerCauseSpecificCod - Tumor';   /* New */
input @2945   seerOtherCod   $char1.   @;   label   seerOtherCod   ='1915_SEER Other COD - seerOtherCod - Tumor';   /* New */
input @2946   icdRevisionNumber   $char1.   @;   label   icdRevisionNumber   ='1920_ICD Revision Number - icdRevisionNumber - Patient';   /* Revised */
input @2947   autopsy   $char1.   @;   label   autopsy   ='1930_Autopsy - autopsy - Patient';   /* Revised */
input @2948   placeOfDeath   $char3.   @;   label   placeOfDeath   ='1940_Place of Death - placeOfDeath - Patient';   /* Revised */
input @2951   followUpSourceCentral   $char2.   @;   label   followUpSourceCentral   ='1791_Follow-up Source Central - followUpSourceCentral - Tumor';   /* Revised */
input @2953   dateOfDeathCanada   $char8.   @;   label   dateOfDeathCanada   ='1755_Date of Death--Canada - dateOfDeathCanada - Patient';   /* Revised */
input @2961   dateOfDeathCanadaFlag   $char2.   @;   label   dateOfDeathCanadaFlag   ='1756_Date of Death--CanadaFlag - dateOfDeathCanadaFlag - Patient';   /* Revised */
input @2963   unusualFollowUpMethod   $char2.   @;   label   unusualFollowUpMethod   ='1850_Unusual Follow-Up Method - unusualFollowUpMethod - Tumor';   /* Revised */
input @2965   survDateActiveFollowup   $char8.   @;   label   survDateActiveFollowup   ='1782_Surv-Date Active Followup - survDateActiveFollowup - Tumor';   /* Revised */
input @2973   survFlagActiveFollowup   $char1.   @;   label   survFlagActiveFollowup   ='1783_Surv-Flag Active Followup - survFlagActiveFollowup - Tumor';   /* Revised */
input @2974   survMosActiveFollowup   $char4.   @;   label   survMosActiveFollowup   ='1784_Surv-Mos Active Followup - survMosActiveFollowup - Tumor';   /* Revised */
input @2978   survDatePresumedAlive   $char8.   @;   label   survDatePresumedAlive   ='1785_Surv-Date Presumed Alive - survDatePresumedAlive - Tumor';   /* Revised */
input @2986   survFlagPresumedAlive   $char1.   @;   label   survFlagPresumedAlive   ='1786_Surv-Flag Presumed Alive - survFlagPresumedAlive - Tumor';   /* Revised */
input @2987   survMosPresumedAlive   $char4.   @;   label   survMosPresumedAlive   ='1787_Surv-Mos Presumed Alive - survMosPresumedAlive - Tumor';   /* Revised */
input @2991   survDateDxRecode   $char8.   @;   label   survDateDxRecode   ='1788_Surv-Date DX Recode - survDateDxRecode - Tumor';   /* Revised */
*input @2999   reserved09   $char50.   @;   *label   reserved09   ='1740_Reserved 09 - reserved09 - Tumor';   /* Revised */
*input @3049   stateRequestorItems   $char1000.   @;   *label   stateRequestorItems   ='2220_State/Requestor Items - stateRequestorItems - Tumor';   /* Revised */
  
/* NPCR-SPECIFIC FIELDS FOR NBCCEDP LINKAGE */                          
input @1647 N18_9980 $char1.  @; label N18_9980 ='9980_EDP MDE Link';   
input @1648 N18_9981 $char8.  @; label N18_9981 ='9981_EDP MDE Link Date'; 

/* NPCR-SPECIFIC FIELDS FOR FOREVER 6 CER VARIABLES */
input @1656 N18_9960 $char2.  @; label N18_9960 ='9960_Height';   
input @1658 N18_9961 $char3.  @; label N18_9961 ='9961_Weight';   
input @1661 N18_9965 $char1.  @; label N18_9965 ='9965_Tobacco Use Cigarettes';  
input @1662 N18_9966 $char1.  @; label N18_9966 ='9966_Tobacco Use Other Smoke'; 
input @1663 N18_9967 $char1.  @; label N18_9967 ='9967_Tobacco Use Smokeless';   
input @1664 N18_9968 $char1.  @; label N18_9968 ='9968_Tobacco Use NOS';   

/* NPCR-SPECIFIC FIELDS FOR EARLY CASE CAPTURE FLAG */
input @1665 N18_12010 $char1.  @; label N18_12010 ='12010_ECC Flag';  

/* NPCR-SPECIFIC FIELDS FOR c AND p MODIFIERS */
input @1666 N18_12000 $char2.  @; label N18_12000 ='12000_cT Blank Validation Flag';  
input @1668 N18_12001 $char2.  @; label N18_12001 ='12001_cN Blank Validation Flag';  
input @1670 N18_12002 $char2.  @; label N18_12002 ='12002_cM Blank Validation Flag';  
input @1672 N18_12003 $char2.  @; label N18_12003 ='12003_pT Blank Validation Flag'; 
input @1674 N18_12004 $char2.  @; label N18_12004 ='12004_pN Blank Validation Flag';  
input @1676 N18_12005 $char2.  @; label N18_12005 ='12005_pM Blank Validation Flag';  

/* NPCR-SPECIFIC FIELDS FOR INDIAN HEALTH SERVICE LINKAGE FIELDS */
input @1678 N18_9990 $char1.  @; label N18_9990 ='9990_IHS Purchased/Referred Care Service Delivery Area (PRCDA)';  
input @1679 N18_9991 $char1.  @; label N18_9991 ='9991_Urban Indian Health Organization (UIHO)';  
input @1680 N18_9992 $char2.  @; label N18_9992 ='9992_Urban Indian Health Organization Facility';  

 
/* CONFIDENTIAL LAYOUT 6934 */                        
input @4049   nameLast   $char40.   @;   label   nameLast   ='2230_Name--Last - nameLast - Patient';   /* Revised */
input @4089   nameFirst   $char40.   @;   label   nameFirst   ='2240_Name--First - nameFirst - Patient';   /* Revised */
input @4129   nameMiddle   $char40.   @;   label   nameMiddle   ='2250_Name--Middle - nameMiddle - Patient';   /* Revised */
input @4169   namePrefix   $char3.   @;   label   namePrefix   ='2260_Name--Prefix - namePrefix - Patient';   /* Revised */
input @4172   nameSuffix   $char3.   @;   label   nameSuffix   ='2270_Name--Suffix - nameSuffix - Patient';   /* Revised */
input @4175   nameAlias   $char40.   @;   label   nameAlias   ='2280_Name--Alias - nameAlias - Patient';   /* Revised */
input @4215   nameMaiden   $char40.   @;   label   nameMaiden   ='2390_Name--Maiden - nameMaiden - Patient';   /* Revised */
input @4255   nameSpouseParent   $char60.   @;   label   nameSpouseParent   ='2290_Name--Spouse/Parent - nameSpouseParent - Tumor';   /* Revised */
input @4315   medicalRecordNumber   $char11.   @;   label   medicalRecordNumber   ='2300_Medical Record Number - medicalRecordNumber - Tumor';   /* Revised */
input @4326   militaryRecordNoSuffix   $char2.   @;   label   militaryRecordNoSuffix   ='2310_Military Record No Suffix - militaryRecordNoSuffix - Tumor';   /* Revised */
input @4328   socialSecurityNumber   $char9.   @;   label   socialSecurityNumber   ='2320_Social Security Number - socialSecurityNumber - Patient';   /* Revised */
input @4337   medicareBeneficiaryIdentifier   $char11.   @;   label   medicareBeneficiaryIdentifier   ='2315_Medicare Beneficiary Identifier - medicareBeneficiaryIdentifier - Patient';   /* New */
input @4348   addrAtDxNoStreet   $char60.   @;   label   addrAtDxNoStreet   ='2330_Addr at DX--No & Street - addrAtDxNoStreet - Tumor';   /* Revised */
input @4408   addrAtDxSupplementl   $char60.   @;   label   addrAtDxSupplementl   ='2335_Addr at DX--Supplementl - addrAtDxSupplementl - Tumor';   /* Revised */
input @4468   addrCurrentNoStreet   $char60.   @;   label   addrCurrentNoStreet   ='2350_Addr Current--No & Street - addrCurrentNoStreet - Patient';   /* Revised */
input @4528   addrCurrentSupplementl   $char60.   @;   label   addrCurrentSupplementl   ='2355_Addr Current--Supplementl - addrCurrentSupplementl - Patient';   /* Revised */
input @4588   telephone   $char10.   @;   label   telephone   ='2360_Telephone - telephone - Patient';   /* Revised */
input @4598   dcStateFileNumber   $char6.   @;   label   dcStateFileNumber   ='2380_DC State File Number - dcStateFileNumber - Patient';   /* Revised */
input @4604   followUpContactName   $char60.   @;   label   followUpContactName   ='2394_Follow-Up Contact--Name - followUpContactName - Tumor';   /* Revised */
input @4664   followUpContactNost   $char60.   @;   label   followUpContactNost   ='2392_Follow-Up Contact--No&St - followUpContactNost - Tumor';   /* Revised */
input @4724   followUpContactSuppl   $char60.   @;   label   followUpContactSuppl   ='2393_Follow-Up Contact--Suppl - followUpContactSuppl - Tumor';   /* Revised */
input @4784   latitude   $char10.   @;   label   latitude   ='2352_Latitude - latitude - Tumor';   /* Revised */
input @4794   longitude   $char11.   @;   label   longitude   ='2354_Longitude - longitude - Tumor';   /* Revised */
*input @4805   reserved10   $char100.   @;   *label   reserved10   ='1835_Reserved 10 - reserved10 - Tumor';   /* Revised */
input @4905   npiFollowingRegistry   $char10.   @;   label   npiFollowingRegistry   ='2445_NPI--Following Registry - npiFollowingRegistry - Tumor';   /* Revised */
input @4915   followingRegistry   $char10.   @;   label   followingRegistry   ='2440_Following Registry - followingRegistry - Tumor';   /* Revised */
input @4925   npiInstReferredFrom   $char10.   @;   label   npiInstReferredFrom   ='2415_NPI--Inst Referred From - npiInstReferredFrom - Tumor';   /* Revised */
input @4935   institutionReferredFrom   $char10.   @;   label   institutionReferredFrom   ='2410_Institution Referred From - institutionReferredFrom - Tumor';   /* Revised */
input @4945   npiInstReferredTo   $char10.   @;   label   npiInstReferredTo   ='2425_NPI--Inst Referred To - npiInstReferredTo - Tumor';   /* Revised */
input @4955   institutionReferredTo   $char10.   @;   label   institutionReferredTo   ='2420_Institution Referred To - institutionReferredTo - Tumor';   /* Revised */
*input @4965   reserved11   $char50.   @;   *label   reserved11   ='1900_Reserved 11 - reserved11 - Tumor';   /* Revised */
input @5015   npiPhysicianManaging   $char10.   @;   label   npiPhysicianManaging   ='2465_NPI--Physician--Managing - npiPhysicianManaging - Tumor';   /* Revised */
input @5025   physicianManaging   $char8.   @;   label   physicianManaging   ='2460_Physician--Managing - physicianManaging - Tumor';   /* Revised */
input @5033   npiPhysicianFollowUp   $char10.   @;   label   npiPhysicianFollowUp   ='2475_NPI--Physician--Follow-Up - npiPhysicianFollowUp - Tumor';   /* Revised */
input @5043   physicianFollowUp   $char8.   @;   label   physicianFollowUp   ='2470_Physician--Follow-Up - physicianFollowUp - Tumor';   /* Revised */
input @5051   npiPhysicianPrimarySurg   $char10.   @;   label   npiPhysicianPrimarySurg   ='2485_NPI--Physician--Primary Surg - npiPhysicianPrimarySurg - Tumor';   /* Revised */
input @5061   physicianPrimarySurg   $char8.   @;   label   physicianPrimarySurg   ='2480_Physician--Primary Surg - physicianPrimarySurg - Tumor';   /* Revised */
input @5069   npiPhysician3   $char10.   @;   label   npiPhysician3   ='2495_NPI--Physician 3 - npiPhysician3 - Tumor';   /* Revised */
input @5079   physician3   $char8.   @;   label   physician3   ='2490_Physician 3 - physician3 - Tumor';   /* Revised */
input @5087   npiPhysician4   $char10.   @;   label   npiPhysician4   ='2505_NPI--Physician 4 - npiPhysician4 - Tumor';   /* Revised */
input @5097   physician4   $char8.   @;   label   physician4   ='2500_Physician 4 - physician4 - Tumor';   /* Revised */
input @5105   ehrReporting   $char1000.   @;   label   ehrReporting   ='2508_EHR Reporting - ehrReporting - Tumor';   /* New */
*input @6105   reserved12   $char50.   @;   *label   reserved12   ='2510_Reserved 12 - reserved12 - Tumor';   /* Revised */
input @6155   pathReportingFacId1   $char25.   @;   label   pathReportingFacId1   ='7010_Path Reporting Fac ID 1 - pathReportingFacId1 - Tumor';   /* Revised */
input @6180   pathReportNumber1   $char20.   @;   label   pathReportNumber1   ='7090_Path Report Number 1 - pathReportNumber1 - Tumor';   /* Revised */
input @6200   pathDateSpecCollect1   $char14.   @;   label   pathDateSpecCollect1   ='7320_Path Date Spec Collect 1 - pathDateSpecCollect1 - Tumor';   /* Revised */
input @6214   pathReportType1   $char2.   @;   label   pathReportType1   ='7480_Path Report Type 1 - pathReportType1 - Tumor';   /* Revised */
input @6216   pathOrderingFacNo1   $char25.   @;   label   pathOrderingFacNo1   ='7190_Path Ordering Fac No 1 - pathOrderingFacNo1 - Tumor';   /* Revised */
input @6241   pathOrderPhysLicNo1   $char20.   @;   label   pathOrderPhysLicNo1   ='7100_Path Order Phys Lic No 1 - pathOrderPhysLicNo1 - Tumor';   /* Revised */
input @6261   pathReportingFacId2   $char25.   @;   label   pathReportingFacId2   ='7011_Path Reporting Fac ID 2 - pathReportingFacId2 - Tumor';   /* Revised */
input @6286   pathReportNumber2   $char20.   @;   label   pathReportNumber2   ='7091_Path Report Number 2 - pathReportNumber2 - Tumor';   /* Revised */
input @6306   pathDateSpecCollect2   $char14.   @;   label   pathDateSpecCollect2   ='7321_Path Date Spec Collect 2 - pathDateSpecCollect2 - Tumor';   /* Revised */
input @6320   pathReportType2   $char2.   @;   label   pathReportType2   ='7481_Path Report Type 2 - pathReportType2 - Tumor';   /* Revised */
input @6322   pathOrderingFacNo2   $char25.   @;   label   pathOrderingFacNo2   ='7191_Path Ordering Fac No 2 - pathOrderingFacNo2 - Tumor';   /* Revised */
input @6347   pathOrderPhysLicNo2   $char20.   @;   label   pathOrderPhysLicNo2   ='7101_Path Order Phys Lic No 2 - pathOrderPhysLicNo2 - Tumor';   /* Revised */
input @6367   pathReportingFacId3   $char25.   @;   label   pathReportingFacId3   ='7012_Path Reporting Fac ID 3 - pathReportingFacId3 - Tumor';   /* Revised */
input @6392   pathReportNumber3   $char20.   @;   label   pathReportNumber3   ='7092_Path Report Number 3 - pathReportNumber3 - Tumor';   /* Revised */
input @6412   pathDateSpecCollect3   $char14.   @;   label   pathDateSpecCollect3   ='7322_Path Date Spec Collect 3 - pathDateSpecCollect3 - Tumor';   /* Revised */
input @6426   pathReportType3   $char2.   @;   label   pathReportType3   ='7482_Path Report Type 3 - pathReportType3 - Tumor';   /* Revised */
input @6428   pathOrderingFacNo3   $char25.   @;   label   pathOrderingFacNo3   ='7192_Path Ordering Fac No 3 - pathOrderingFacNo3 - Tumor';   /* Revised */
input @6453   pathOrderPhysLicNo3   $char20.   @;   label   pathOrderPhysLicNo3   ='7102_Path Order Phys Lic No 3 - pathOrderPhysLicNo3 - Tumor';   /* Revised */
input @6473   pathReportingFacId4   $char25.   @;   label   pathReportingFacId4   ='7013_Path Reporting Fac ID 4 - pathReportingFacId4 - Tumor';   /* Revised */
input @6498   pathReportNumber4   $char20.   @;   label   pathReportNumber4   ='7093_Path Report Number 4 - pathReportNumber4 - Tumor';   /* Revised */
input @6518   pathDateSpecCollect4   $char14.   @;   label   pathDateSpecCollect4   ='7323_Path Date Spec Collect 4 - pathDateSpecCollect4 - Tumor';   /* Revised */
input @6532   pathReportType4   $char2.   @;   label   pathReportType4   ='7483_Path Report Type 4 - pathReportType4 - Tumor';   /* Revised */
input @6534   pathOrderingFacNo4   $char25.   @;   label   pathOrderingFacNo4   ='7193_Path Ordering Fac No 4 - pathOrderingFacNo4 - Tumor';   /* Revised */
input @6559   pathOrderPhysLicNo4   $char20.   @;   label   pathOrderPhysLicNo4   ='7103_Path Order Phys Lic No 4 - pathOrderPhysLicNo4 - Tumor';   /* Revised */
input @6579   pathReportingFacId5   $char25.   @;   label   pathReportingFacId5   ='7014_Path Reporting Fac ID 5 - pathReportingFacId5 - Tumor';   /* Revised */
input @6604   pathReportNumber5   $char20.   @;   label   pathReportNumber5   ='7094_Path Report Number 5 - pathReportNumber5 - Tumor';   /* Revised */
input @6624   pathDateSpecCollect5   $char14.   @;   label   pathDateSpecCollect5   ='7324_Path Date Spec Collect 5 - pathDateSpecCollect5 - Tumor';   /* Revised */
input @6638   pathReportType5   $char2.   @;   label   pathReportType5   ='7484_Path Report Type 5 - pathReportType5 - Tumor';   /* Revised */
input @6640   pathOrderingFacNo5   $char25.   @;   label   pathOrderingFacNo5   ='7194_Path Ordering Fac No 5 - pathOrderingFacNo5 - Tumor';   /* Revised */
input @6665   pathOrderPhysLicNo5   $char20.   @;   label   pathOrderPhysLicNo5   ='7104_Path Order Phys Lic No 5 - pathOrderPhysLicNo5 - Tumor';   /* Revised */
*input @6685   reserved13   $char250.   @;   *label   reserved13   ='2080_Reserved 13 - reserved13 - Tumor';   /* Revised */
                        
                        
/* TEXT VARIABLES 22824 */      
input @6935   textDxProcPe   $char1000.   @;   label   textDxProcPe   ='2520_Text--DX Proc--PE - textDxProcPe - Tumor';   /* Revised */
input @7935   textDxProcXRayScan   $char1000.   @;   label   textDxProcXRayScan   ='2530_Text--DX Proc--X-ray/Scan - textDxProcXRayScan - Tumor';   /* Revised */
input @8935   textDxProcScopes   $char1000.   @;   label   textDxProcScopes   ='2540_Text--DX Proc--Scopes - textDxProcScopes - Tumor';   /* Revised */
input @9935    textDxProcLabTests   $char1000.   @;   label   textDxProcLabTests   ='2550_Text--DX Proc--Lab Tests - textDxProcLabTests - Tumor';   /* Revised */
input @10935   textDxProcOp   $char1000.   @;   label   textDxProcOp   ='2560_Text--DX Proc--Op - textDxProcOp - Tumor';   /* Revised */
input @11935   textDxProcPath   $char1000.   @;   label   textDxProcPath   ='2570_Text--DX Proc--Path - textDxProcPath - Tumor';   /* Revised */
input @12935   textPrimarySiteTitle   $char100.   @;   label   textPrimarySiteTitle   ='2580_Text--Primary Site Title - textPrimarySiteTitle - Tumor';   /* Revised */
input @13035   textHistologyTitle   $char100.   @;   label   textHistologyTitle   ='2590_Text--Histology Title - textHistologyTitle - Tumor';   /* Revised */
input @13135   textStaging   $char1000.   @;   label   textStaging   ='2600_Text--Staging - textStaging - Tumor';   /* Revised */
input @14135   rxTextSurgery   $char1000.   @;   label   rxTextSurgery   ='2610_RX Text--Surgery - rxTextSurgery - Tumor';   /* Revised */
input @15135   rxTextRadiation   $char1000.   @;   label   rxTextRadiation   ='2620_RX Text--Radiation (Beam) - rxTextRadiation - Tumor';   /* Revised */
input @16135   rxTextRadiationOther   $char1000.   @;   label   rxTextRadiationOther   ='2630_RX Text--Radiation Other - rxTextRadiationOther - Tumor';   /* Revised */
input @17135   rxTextChemo   $char1000.   @;   label   rxTextChemo   ='2640_RX Text--Chemo - rxTextChemo - Tumor';   /* Revised */
input @18135   rxTextHormone   $char1000.   @;   label   rxTextHormone   ='2650_RX Text--Hormone - rxTextHormone - Tumor';   /* Revised */
input @19135   rxTextBrm   $char1000.   @;   label   rxTextBrm   ='2660_RX Text--BRM - rxTextBrm - Tumor';   /* Revised */
input @20135   rxTextOther   $char1000.   @;   label   rxTextOther   ='2670_RX Text--Other - rxTextOther - Tumor';   /* Revised */
input @21135   textRemarks   $char1000.   @;   label   textRemarks   ='2680_Text--Remarks - textRemarks - Tumor';   /* Revised */
input @22135   textPlaceOfDiagnosis   $char60.   @;   label   textPlaceOfDiagnosis   ='2690_Text--Place of Diagnosis - textPlaceOfDiagnosis - Tumor';   /* Revised */
*input @22195   reserved14   $char2000.   @;   *label   reserved14   ='2210_Reserved 14 - reserved14 - Tumor';   /* Revised */

/* ADDITIONAL USEFUL VARIABLES IN RECORD */
input @544 dx_year    $char4.   @;  label  dx_year   ='YEAR OF DIAGNOSIS';
input @548 dx_month   $char2.   @;  label  dx_month  ='MONTH OF DIAGNOSIS';
input @126 ZIPCode    $char5.   @;  label  ZIPCode   ='ZIP CODE 5-DIGIT';  

run;



data _NULL_;
   set SAStest;
* file outv18 lrecl= 4048 pad; /* INCIDENCE */
* file outv18 lrecl= 6934 pad; /* CONFIDENTIAL */
  file outv18 lrecl=24194 pad; /* TEXT */
put
/* Incidence record */              
   @1   recordType   $1.
   @2   registryType   $1.
/*   @3   reserved00   $14.*/
   @17    naaccrRecordVersion   $3.
   @20    npiRegistryId   $10.
   @30    registryId   $10.
   @40    tumorRecordNumber   $2.
   @42    patientIdNumber   $8.
   @50    patientSystemIdHosp   $8.
/*   @58    reserved01   $16.*/
   @74    addrAtDxCity   $50.
   @124   addrAtDxState   $2.
   @126   addrAtDxPostalCode   $9.
   @135   countyAtDx   $3.
/*   @138   reserved16   $12.*/
   @150   countyAtDxAnalysis   $3.
   @153   geolocationid19708090   $12.
   @153   stateAtDxGeocode19708090   $2.
   @155   countyAtDxGeocode1990   $3.
   @158   censusTract19708090   $6.
   @164   censusBlockGrp197090   $1.
   @165   censusCodSys19708090   $1.
   @166   censusTrCert19708090   $1.
   @167   geolocationid2000   $12.
   @167   stateAtDxGeocode2000   $2.
   @169   countyAtDxGeocode2000   $3.
   @172   censusTract2000   $6.
   @178   censusBlockGroup2000   $1.
   @179   censusTrCertainty2000   $1.
   @180   geolocationid2010   $12.
   @180   stateAtDxGeocode2010   $2.
   @182   countyAtDxGeocode2010   $3.
   @185   censusTract2010   $6.
   @191   censusBlockGroup2010   $1.
   @192   censusTrCertainty2010   $1.
   @193   stateAtDxGeocode2020   $2.
   @193   geolocationid2020   $12.
   @195   countyAtDxGeocode2020   $3.
   @198   censusTract2020   $6.
   @204   censusBlockGroup2020   $1.
   @205   censusTractCertainty2020   $1.
   @206   maritalStatusAtDx   $1.
   @207   race1   $2.
   @209   race2   $2.
   @211   race3   $2.
   @213   race4   $2.
   @215   race5   $2.
   @217   raceCodingSysCurrent   $1.
   @218   raceCodingSysOriginal   $1.
   @219   spanishHispanicOrigin   $1.
   @220   computedEthnicity   $1.
   @221   computedEthnicitySource   $1.
   @222   sex   $1.
   @223   ageAtDiagnosis   $3.
   @226   dateOfBirth   $8.
   @234   dateOfBirthFlag   $2.
   @236   birthplace   $3.
   @239   censusOccCode19702000   $3.
   @242   censusIndCode19702000   $3.
   @245   occupationSource   $1.
   @246   industrySource   $1.
   @247   textUsualOccupation   $100.
   @347   textUsualIndustry   $100.
   @447   censusOccIndSys7000   $1.
   @448   nhiaDerivedHispOrigin   $1.
   @449   raceNapiia   $2.
   @451   ihsLink   $1.
   @452   gisCoordinateQuality   $2.
   @454   ruralurbanContinuum1993   $2.
   @456   ruralurbanContinuum2003   $2.
   @458   ruralurbanContinuum2013   $2.
   @460   ruca2000   $1.
   @461   ruca2010   $1.
   @462   uric2000   $1.
   @463   uric2010   $1.
   @464   addrAtDxCountry   $3.
   @467   addrCurrentCountry   $3.
   @470   birthplaceState   $2.
   @472   birthplaceCountry   $3.
   @475   followupContactCountry   $3.
   @478   placeOfDeathState   $2.
   @480   placeOfDeathCountry   $3.
   @483   censusIndCode2010   $4.
   @487   censusOccCode2010   $4.
   @491   censusTrPovertyIndictr   $1.
/*   @492   reserved02   $50.*/
   @542   sequenceNumberCentral   $2.
   @544   dateOfDiagnosis   $8.
   @552   dateOfDiagnosisFlag   $2.
   @554   primarySite   $4.
   @558   laterality   $1.
   @559   morphTypebehavIcdO2   $5.
   @559   histologyIcdO2   $4.
   @563   behaviorIcdO2   $1.
   @564   histologicTypeIcdO3   $4.
   @564   morphTypebehavIcdO3   $5.
   @568   behaviorCodeIcdO3   $1.
   @569   grade   $1.
   @570   gradePathValue   $1.
   @571   gradePathSystem   $1.
   @572   siteCodingSysCurrent   $1.
   @573   siteCodingSysOriginal   $1.
   @574   morphCodingSysCurrent   $1.
   @575   morphCodingSysOriginl   $1.
   @576   diagnosticConfirmation   $1.
   @577   typeOfReportingSource   $1.
   @578   casefindingSource   $2.
   @580   ambiguousTerminologyDx   $1.
   @581   dateConclusiveDx   $8.
   @589   dateConclusiveDxFlag   $2.
   @591   multTumRptAsOnePrim   $2.
   @593   dateOfMultTumors   $8.
   @601   dateOfMultTumorsFlag   $2.
   @603   multiplicityCounter   $2.
/*   @605   reserved03   $100.*/
   @705   npiReportingFacility   $10.
   @715   reportingFacility   $10.
   @725   npiArchiveFin   $10.
   @735   archiveFin   $10.
   @745   accessionNumberHosp   $9.
   @754   sequenceNumberHospital   $2.
   @756   abstractedBy   $3.
   @759   dateOf1stContact   $8.
   @767   dateOf1stContactFlag   $2.
   @769   dateOfInptAdm   $8.
   @777   dateOfInptAdmFlag   $2.
   @779   dateOfInptDisch   $8.
   @787   dateOfInptDischFlag   $2.
   @789   inpatientStatus   $1.
   @790   classOfCase   $2.
   @792   primaryPayerAtDx   $2.
   @794   rxHospSurgApp2010   $1.
   @795   rxHospSurgPrimSite   $2.
   @797   rxHospScopeRegLnSur   $1.
   @798   rxHospSurgOthRegDis   $1.
   @799   rxHospRegLnRemoved   $2.
   @801   rxHospRadiation   $1.
   @802   rxHospChemo   $2.
   @804   rxHospHormone   $2.
   @806   rxHospBrm   $2.
   @808   rxHospOther   $1.
   @809   rxHospDxStgProc   $2.
   @811   rxHospPalliativeProc   $1.
   @812   rxHospSurgSite9802   $2.
   @814   rxHospScopeReg9802   $1.
   @815   rxHospSurgOth9802   $1.
/*   @816   reserved04   $50.*/
   @866   tnmPathStagedBy   $2.
   @868   tnmClinStagedBy   $2.
   @870   metsAtDxBone   $1.
   @871   metsAtDxBrain   $1.
   @872   metsAtDxDistantLn   $1.
   @873   metsAtDxLiver   $1.
   @874   metsAtDxLung   $1.
   @875   metsAtDxOther   $1.
   @876   tumorSizeClinical   $3.
   @879   tumorSizePathologic   $3.
   @882   tumorSizeSummary   $3.
   @885   derivedSeerPathStgGrp   $5.
   @890   derivedSeerClinStgGrp   $5.
   @895   derivedSeerCmbStgGrp   $5.
   @900   derivedSeerCombinedT   $5.
   @905   derivedSeerCombinedN   $5.
   @910   derivedSeerCombinedM   $5.
   @915   derivedSeerCmbTSrc   $1.
   @916   derivedSeerCmbNSrc   $1.
   @917   derivedSeerCmbMSrc   $1.
   @918   eodPrimaryTumor   $3.
   @921   eodRegionalNodes   $3.
   @924   eodMets   $2.
   @926   derivedEod2018T   $15.
   @941   derivedEod2018N   $15.
   @956   derivedEod2018M   $15.
   @971   derivedEod2018StageGroup   $15.
   @986   derivedSummaryStage2018   $1.
   @987   summaryStage2018   $1.
   @988   seerSummaryStage2000   $1.
   @989   seerSummaryStage1977   $1.
   @990   eodTumorSize   $3.
   @990   extentOfDisease10Dig   $12.
   @993   eodExtension   $2.
   @995   eodExtensionProstPath   $2.
   @997   eodLymphNodeInvolv   $1.
   @998    regionalNodesPositive   $2.
   @1000   regionalNodesExamined   $2.
   @1002   dateRegionalLNDissection   $8.
   @1010   dateRegionalLNDissectionFlag   $2.
   @1012   sentinelLymphNodesPositive   $2.
   @1014   sentinelLymphNodesExamined   $2.
   @1016   dateSentinelLymphNodeBiopsy   $8.
   @1024   dateSentinelLymphNodeBiopsyFlag   $2.
   @1026   eodOld13Digit   $13.
   @1039   eodOld2Digit   $2.
   @1041   eodOld4Digit   $4.
   @1045   codingSystemForEod   $1.
   @1046   tnmEditionNumber   $2.
   @1048   tnmPathT   $4.
   @1052   tnmPathN   $4.
   @1056   tnmPathM   $4.
   @1060   tnmPathStageGroup   $4.
   @1064   tnmPathDescriptor   $1.
   @1065   tnmClinT   $4.
   @1069   tnmClinN   $4.
   @1073   tnmClinM   $4.
   @1077   tnmClinStageGroup   $4.
   @1081   tnmClinDescriptor   $1.
   @1082   ajccTnmClinT   $15.
   @1097   ajccTnmClinTSuffix   $4.
   @1101   ajccTnmClinN   $15.
   @1116   ajccTnmClinNSuffix   $4.
   @1120   ajccTnmClinM   $15.
   @1135   ajccTnmClinStageGroup   $15.
   @1150   ajccTnmPathT   $15.
   @1165   ajccTnmPathTSuffix   $4.
   @1169   ajccTnmPathN   $15.
   @1184   ajccTnmPathNSuffix   $4.
   @1188   ajccTnmPathM   $15.
   @1203   ajccTnmPathStageGroup   $15.
   @1218   ajccTnmPostTherapyT   $15.
   @1233   ajccTnmPostTherapyTSuffix   $4.
   @1237   ajccTnmPostTherapyN   $15.
   @1252   ajccTnmPostTherapyNSuffix   $4.
   @1256   ajccTnmPostTherapyM   $15.
   @1271   ajccTnmPostTherapyStageGroup   $15.
   @1286   gradeClinical   $1.
   @1287   gradePathological   $1.
   @1288   gradePostTherapy   $1.
   @1289   pediatricStage   $2.
   @1291   pediatricStagingSystem   $2.
   @1293   pediatricStagedBy   $1.
   @1294   tumorMarker1   $1.
   @1295   tumorMarker2   $1.
   @1296   tumorMarker3   $1.
   @1297   lymphVascularInvasion   $1.
   @1298   csTumorSize   $3.
   @1301   csExtension   $3.
   @1304   csTumorSizeExtEval   $1.
   @1305   csLymphNodes   $3.
   @1308   csLymphNodesEval   $1.
   @1309   csMetsAtDx   $2.
   @1311   csMetsEval   $1.
   @1312   csMetsAtDxBone   $1.
   @1313   csMetsAtDxBrain   $1.
   @1314   csMetsAtDxLiver   $1.
   @1315   csMetsAtDxLung   $1.
   @1316   csSiteSpecificFactor1   $3.
   @1319   csSiteSpecificFactor2   $3.
   @1322   csSiteSpecificFactor3   $3.
   @1325   csSiteSpecificFactor4   $3.
   @1328   csSiteSpecificFactor5   $3.
   @1331   csSiteSpecificFactor6   $3.
   @1334   csSiteSpecificFactor7   $3.
   @1337   csSiteSpecificFactor8   $3.
   @1340   csSiteSpecificFactor9   $3.
   @1343   csSiteSpecificFactor10   $3.
   @1346   csSiteSpecificFactor11   $3.
   @1349   csSiteSpecificFactor12   $3.
   @1352   csSiteSpecificFactor13   $3.
   @1355   csSiteSpecificFactor14   $3.
   @1358   csSiteSpecificFactor15   $3.
   @1361   csSiteSpecificFactor16   $3.
   @1364   csSiteSpecificFactor17   $3.
   @1367   csSiteSpecificFactor18   $3.
   @1370   csSiteSpecificFactor19   $3.
   @1373   csSiteSpecificFactor20   $3.
   @1376   csSiteSpecificFactor21   $3.
   @1379   csSiteSpecificFactor22   $3.
   @1382   csSiteSpecificFactor23   $3.
   @1385   csSiteSpecificFactor24   $3.
   @1388   csSiteSpecificFactor25   $3.
   @1391   derivedAjcc6T   $2.
   @1393   derivedAjcc6TDescript   $1.
   @1394   derivedAjcc6N   $2.
   @1396   derivedAjcc6NDescript   $1.
   @1397   derivedAjcc6M   $2.
   @1399   derivedAjcc6MDescript   $1.
   @1400   derivedAjcc6StageGrp   $2.
   @1402   derivedAjcc7T   $3.
   @1405   derivedAjcc7TDescript   $1.
   @1406   derivedAjcc7N   $3.
   @1409   derivedAjcc7NDescript   $1.
   @1410   derivedAjcc7M   $3.
   @1413   derivedAjcc7MDescript   $1.
   @1414   derivedAjcc7StageGrp   $3.
   @1417   derivedPrerx7T   $3.
   @1420   derivedPrerx7TDescrip   $1.
   @1421   derivedPrerx7N   $3.
   @1424   derivedPrerx7NDescrip   $1.
   @1425   derivedPrerx7M   $3.
   @1428   derivedPrerx7MDescrip   $1.
   @1429   derivedPrerx7StageGrp   $3.
   @1432   derivedPostrx7T   $3.
   @1435   derivedPostrx7N   $3.
   @1438   derivedPostrx7M   $2.
   @1440   derivedPostrx7StgeGrp   $3.
   @1443   derivedSs1977   $1.
   @1444   derivedSs2000   $1.
   @1445   derivedNeoadjuvRxFlag   $1.
   @1446   derivedAjccFlag   $1.
   @1447   derivedSs1977Flag   $1.
   @1448   derivedSs2000Flag   $1.
   @1449   npcrDerivedClinStgGrp   $4.
   @1453   npcrDerivedPathStgGrp   $4.
   @1457   npcrDerivedAjcc8TnmClinStgGrp   $15.
   @1472   npcrDerivedAjcc8TnmPathStgGrp   $15.
   @1487   npcrDerivedAjcc8TnmPostStgGrp   $15.
   @1502   csVersionInputCurrent   $6.
   @1508   csVersionInputOriginal   $6.
   @1514   csVersionDerived   $6.
   @1520   seerSiteSpecificFact1   $1.
   @1521   seerSiteSpecificFact2   $1.
   @1522   seerSiteSpecificFact3   $1.
   @1523   seerSiteSpecificFact4   $1.
   @1524   seerSiteSpecificFact5   $1.
   @1525   seerSiteSpecificFact6   $1.
   @1526   icdRevisionComorbid   $1.
   @1527   comorbidComplication1   $5.
   @1532   comorbidComplication2   $5.
   @1537   comorbidComplication3   $5.
   @1542   comorbidComplication4   $5.
   @1547   comorbidComplication5   $5.
   @1552   comorbidComplication6   $5.
   @1557   comorbidComplication7   $5.
   @1562   comorbidComplication8   $5.
   @1567   comorbidComplication9   $5.
   @1572   comorbidComplication10   $5.
   @1577   secondaryDiagnosis1   $7.
   @1584   secondaryDiagnosis2   $7.
   @1591   secondaryDiagnosis3   $7.
   @1598   secondaryDiagnosis4   $7.
   @1605   secondaryDiagnosis5   $7.
   @1612   secondaryDiagnosis6   $7.
   @1619   secondaryDiagnosis7   $7.
   @1626   secondaryDiagnosis8   $7.
   @1633   secondaryDiagnosis9   $7.
   @1640   secondaryDiagnosis10   $7.
   @1647   npcrSpecificField   $75.
   @1722   ajccId   $4.
   @1726   schemaId   $5.
   @1731   schemaDiscriminator1   $1.
   @1732   schemaDiscriminator2   $1.
   @1733   schemaDiscriminator3   $1.
   @1734   percentNecrosisPostNeoadjuvant   $5.
/*   @1739   reserved15   $1.*/
   @1740   chromosome1pLossHeterozygosity   $1.
   @1741   chromosome19qLossHeterozygosity   $1.
   @1742   methylationOfO6MGMT   $1.
   @1743   estrogenReceptorSummary   $1.
   @1744   her2OverallSummary   $1.
   @1745   lnPositiveAxillaryLevel1To2   $2.
   @1747   multigeneSignatureMethod   $1.
   @1748   multigeneSignatureResults   $2.
   @1750   progesteroneRecepSummary   $1.
   @1751   responseToNeoadjuvantTherapy   $1.
   @1752   estrogenReceptorPercntPosOrRange   $3.
   @1755   estrogenReceptorTotalAllredScore   $2.
   @1757   her2IhcSummary   $1.
   @1758   her2IshDualProbeCopyNumber   $4.
   @1762   her2IshDualProbeRatio   $4.
   @1766   her2IshSingleProbeCopyNumber   $4.
   @1770   her2IshSummary   $1.
   @1771   ki67   $5.
   @1776   oncotypeDxRecurrenceScoreDcis   $3.
   @1779   oncotypeDxRecurrenceScoreInvasiv   $3.
   @1782   oncotypeDxRiskLevelDcis   $1.
   @1783   oncotypeDxRiskLevelInvasive   $1.
   @1784   progesteroneRecepPrcntPosOrRange   $3.
   @1787   progesteroneRecepTotalAllredScor   $2.
   @1789   ceaPretreatmentInterpretation   $1.
   @1790   ceaPretreatmentLabValue   $6.
   @1796   circumferentialResectionMargin   $4.
   @1800   kras   $1.
   @1801   microsatelliteInstability   $1.
   @1802   perineuralInvasion   $1.
   @1803   tumorDeposits   $2.
   @1805   numberOfPositiveParaAorticNodes   $2.
   @1807   numberOfExaminedParaAorticNodes   $2.
   @1809   numberOfPositivePelvicNodes   $2.
   @1811   numberOfExaminedPelvicNodes   $2.
   @1813   peritonealCytology   $1.
   @1814   esophagusAndEgjTumorEpicenter   $1.
   @1815   kitGeneImmunohistochemistry   $1.
   @1816   figoStage   $2.
   @1818   extranodalExtensionHeadNeckClin   $1.
   @1819   extranodalExtensionHeadNeckPath   $3.
   @1822   lnHeadAndNeckLevels1To3   $1.
   @1823   lnHeadAndNeckLevels4To5   $1.
   @1824   lnHeadAndNeckLevels6To7   $1.
   @1825   lnHeadAndNeckOther   $1.
   @1826   lnSize   $4.
   @1830   jak2   $1.
   @1831   primarySclerosingCholangitis   $1.
   @1832   tumorGrowthPattern   $1.
   @1833   ipsilateralAdrenalGlandInvolve   $1.
   @1834   invasionBeyondCapsule   $1.
   @1835   majorVeinInvolvement   $1.
   @1836   sarcomatoidFeatures   $3.
   @1839   adenoidCysticBasaloidPattern   $5.
   @1844   afpPretreatmentInterpretation   $1.
   @1845   afpPretreatmentLabValue   $6.
   @1851   bilirubinPretxTotalLabValue   $5.
   @1856   bilirubinPretxUnitOfMeasure   $1.
   @1857   creatininePretreatmentLabValue   $4.
   @1861   creatininePretxUnitOfMeasure   $1.
   @1862   fibrosisScore   $1.
   @1863   iNRProthrombinTime   $3.
   @1866   separateTumorNodules   $1.
   @1867   visceralParietalPleuralInvasion   $1.
   @1868   bSymptoms   $1.
   @1869   hivStatus   $1.
   @1870   nccnInternationalPrognosticIndex   $2.
   @1872   mitoticRateMelanoma   $2.
   @1874   chromosome3Status   $1.
   @1875   chromosome8qStatus   $1.
   @1876   extravascularMatrixPatterns   $1.
   @1877   measuredBasalDiameter   $4.
   @1881   measuredThickness   $4.
   @1885   microvascularDensity   $2.
   @1887   mitoticCountUvealMelanoma   $4.
   @1891   breslowTumorThickness   $4.
   @1895   ldhUpperLimitsOfNormal   $3.
   @1898   ldhPretreatmentLabValue   $7.
   @1905   ulceration   $1.
   @1906   lnIsolatedTumorCells   $1.
   @1907   profoundImmuneSuppression   $1.
   @1908   peripheralBloodInvolvement   $1.
   @1909   heritableTrait   $1.
   @1910   adenopathy   $1.
   @1911   anemia   $1.
   @1912   lymphocytosis   $1.
   @1913   organomegaly   $1.
   @1914   thrombocytopenia   $1.
   @1915   highRiskCytogenetics   $1.
   @1916   ldhPretreatmentLevel   $1.
   @1917   serumAlbuminPretreatmentLevel   $1.
   @1918   serumBeta2MicroglobulinPretxLvl   $1.
   @1919   ca125PretreatmentInterpretation   $1.
   @1920   residualTumVolPostCytoreduction   $2.
   @1922   extranodalExtensionClin   $1.
   @1923   extranodalExtensionPath   $1.
   @1924   gestationalTrophoblasticPxIndex   $2.
   @1926   pleuralEffusion   $1.
   @1927   gleasonPatternsClinical   $2.
   @1929   gleasonPatternsPathological   $2.
   @1931   gleasonScoreClinical   $2.
   @1933   gleasonScorePathological   $2.
   @1935   gleasonTertiaryPattern   $2.
   @1937   numberOfCoresExamined   $2.
   @1939   numberOfCoresPositive   $2.
   @1941   prostatePathologicalExtension   $3.
   @1944   psaLabValue   $5.
   @1949   highRiskHistologicFeatures   $1.
   @1950   boneInvasion   $1.
   @1951   afpPreOrchiectomyLabValue   $7.
   @1958   afpPreOrchiectomyRange   $1.
   @1959   afpPostOrchiectomyLabValue   $7.
   @1966   afpPostOrchiectomyRange   $1.
   @1967   hcgPreOrchiectomyLabValue   $7.
   @1974   hcgPreOrchiectomyRange   $1.
   @1975   hcgPostOrchiectomyLabValue   $7.
   @1982   hcgPostOrchiectomyRange   $1.
   @1983   ldhPreOrchiectomyRange   $1.
   @1984   ldhPostOrchiectomyRange   $1.
   @1985   sCategoryClinical   $1.
   @1986   sCategoryPathological   $1.
   @1987   lnAssessMethodParaaortic   $1.
   @1988   lnAssessMethodPelvic   $1.
   @1989   lnStatusFemorInguinParaaortPelv   $1.
   @1990   lnDistantMediastinalScalene   $1.
   @1991   lnStatusFemorInguinParaaortPelv   $1.
   @1992   lnAssessMethodFemoralInguinal   $1.
   @1993   lnLaterality   $1.
   @1994   brainMolecularMarkers   $2.
/*   @1996   reserved05   $98.*/
   @2094   dateInitialRxSeer   $8.
   @2102   dateInitialRxSeerFlag   $2.
   @2104   date1stCrsRxCoc   $8.
   @2112   date1stCrsRxCocFlag   $2.
   @2114   rxDateSurgery   $8.
   @2122   rxDateSurgeryFlag   $2.
   @2124   rxDateMostDefinSurg   $8.
   @2132   rxDateMostDefinSurgFlag   $2.
   @2134   rxDateSurgicalDisch   $8.
   @2142   rxDateSurgicalDischFlag   $2.
   @2144   rxDateRadiation   $8.
   @2152   rxDateRadiationFlag   $2.
   @2154   rxDateRadiationEnded   $8.
   @2162   rxDateRadiationEndedFlag   $2.
   @2164   rxDateSystemic   $8.
   @2172   rxDateSystemicFlag   $2.
   @2174   rxDateChemo   $8.
   @2182   rxDateChemoFlag   $2.
   @2184   rxDateHormone   $8.
   @2192   rxDateHormoneFlag   $2.
   @2194   rxDateBrm   $8.
   @2202   rxDateBrmFlag   $2.
   @2204   rxDateOther   $8.
   @2212   rxDateOtherFlag   $2.
   @2214   rxDateDxStgProc   $8.
   @2222   rxDateDxStgProcFlag   $2.
   @2224   rxSummTreatmentStatus   $1.
   @2225   rxSummSurgPrimSite   $2.
   @2227   rxSummScopeRegLnSur   $1.
   @2228   rxSummSurgOthRegDis   $1.
   @2229   rxSummRegLnExamined   $2.
   @2231   rxSummSurgicalApproch   $1.
   @2232   rxSummSurgicalMargins   $1.
   @2233   rxSummReconstruct1st   $1.
   @2234   reasonForNoSurgery   $1.
   @2235   rxSummDxStgProc   $2.
   @2237   rxSummPalliativeProc   $1.
   @2238   rxSummRadiation   $1.
   @2239   rxSummRadToCns   $1.
   @2240   rxSummSurgRadSeq   $1.
   @2241   rxSummTransplntEndocr   $2.
   @2243   rxSummChemo   $2.
   @2245   rxSummHormone   $2.
   @2247   rxSummBrm   $2.
   @2249   rxSummOther   $1.
   @2250   reasonForNoRadiation   $1.
   @2251   rxCodingSystemCurrent   $2.
   @2253   radRegionalDoseCgy   $5.
   @2258   radNoOfTreatmentVol   $3.
   @2261   radTreatmentVolume   $2.
   @2263   radLocationOfRx   $1.
   @2264   radRegionalRxModality   $2.
   @2266   radBoostRxModality   $2.
   @2268   radBoostDoseCgy   $5.
   @2273   rxSummSystemicSurSeq   $1.
   @2274   rxSummSurgeryType   $2.
   @2276   readmSameHosp30Days   $1.
   @2277   rxSummSurgSite9802   $2.
   @2279   rxSummScopeReg9802   $1.
   @2280   rxSummSurgOth9802   $1.
   @2281   phase1RadiationToDrainingLN   $2.
   @2283   phase1RadiationToDrainingLN   $2.
   @2285   phase1RadiationTreatmentModality   $2.
   @2287   phase1RadiationExternalBeamTech   $2.
   @2289   phase1DosePerFraction   $5.
   @2294   phase1NumberOfFractions   $3.
   @2297   phase1TotalDose   $6.
   @2303   phase2RadiationPrimaryTxVolume   $2.
   @2305   phase2RadiationToDrainingLN   $2.
   @2307   phase2RadiationTreatmentModality   $2.
   @2309   phase2RadiationExternalBeamTech   $2.
   @2311   phase2DosePerFraction   $5.
   @2316   phase2NumberOfFractions   $3.
   @2319   phase2TotalDose   $6.
   @2325   phase3RadiationPrimaryTxVolume   $2.
   @2327   phase3RadiationToDrainingLN   $2.
   @2329   phase3RadiationTreatmentModality   $2.
   @2331   phase3RadiationExternalBeamTech   $2.
   @2333   phase3DosePerFraction   $5.
   @2338   phase3NumberOfFractions   $3.
   @2341   phase3TotalDose   $6.
   @2347   numberPhasesOfRadTxToVolume   $2.
   @2349   radiationTxDiscontinuedEarly   $2.
   @2351   totalDose   $6.
/*   @2357   reserved06   $100.*/
   @2457   subsqRx2ndCourseDate   $8.
   @2465   subsqRx2ndcrsDateFlag   $2.
   @2467   subsqRx2ndCourseSurg   $2.
   @2467   subsqRx2ndCourseCodes   $11.
   @2469   subsqRx2ndScopeLnSu   $1.
   @2470   subsqRx2ndSurgOth   $1.
   @2471   subsqRx2ndRegLnRem   $2.
   @2473   subsqRx2ndCourseRad   $1.
   @2474   subsqRx2ndCourseChemo   $1.
   @2475   subsqRx2ndCourseHorm   $1.
   @2476   subsqRx2ndCourseBrm   $1.
   @2477   subsqRx2ndCourseOth   $1.
   @2478   subsqRx3rdCourseDate   $8.
   @2486   subsqRx3rdcrsDateFlag   $2.
   @2488   subsqRx3rdCourseCodes   $11.
   @2488   subsqRx3rdCourseSurg   $2.
   @2490   subsqRx3rdScopeLnSu   $1.
   @2491   subsqRx3rdSurgOth   $1.
   @2492   subsqRx3rdRegLnRem   $2.
   @2494   subsqRx3rdCourseRad   $1.
   @2495   subsqRx3rdCourseChemo   $1.
   @2496   subsqRx3rdCourseHorm   $1.
   @2497   subsqRx3rdCourseBrm   $1.
   @2498   subsqRx3rdCourseOth   $1.
   @2499   subsqRx4thCourseDate   $8.
   @2507   subsqRx4thcrsDateFlag   $2.
   @2509   subsqRx4thCourseSurg   $2.
   @2509   subsqRx4thCourseCodes   $11.
   @2511   subsqRx4thScopeLnSu   $1.
   @2512   subsqRx4thSurgOth   $1.
   @2513   subsqRx4thRegLnRem   $2.
   @2515   subsqRx4thCourseRad   $1.
   @2516   subsqRx4thCourseChemo   $1.
   @2517   subsqRx4thCourseHorm   $1.
   @2518   subsqRx4thCourseBrm   $1.
   @2519   subsqRx4thCourseOth   $1.
   @2520   subsqRxReconstructDel   $1.
/*   @2521   reserved07   $50.*/
   @2571   overRideSsNodespos   $1.
   @2572   overRideSsTnmN   $1.
   @2573   overRideSsTnmM   $1.
   @2574   overRideAcsnClassSeq   $1.
   @2575   overRideHospseqDxconf   $1.
   @2576   overRideCocSiteType   $1.
   @2577   overRideHospseqSite   $1.
   @2578   overRideSiteTnmStggrp   $1.
   @2579   overRideAgeSiteMorph   $1.
   @2580   overRideTnmStage   $1.
   @2581   overRideTnmTis   $1.
   @2582   overRideTnm3   $1.
   @2583   overRideSeqnoDxconf   $1.
   @2584   overRideSiteLatSeqno   $1.
   @2585   overRideSurgDxconf   $1.
   @2586   overRideSiteType   $1.
   @2587   overRideHistology   $1.
   @2588   overRideReportSource   $1.
   @2589   overRideIllDefineSite   $1.
   @2590   overRideLeukLymphoma   $1.
   @2591   overRideSiteBehavior   $1.
   @2592   overRideSiteEodDxDt   $1.
   @2593   overRideSiteLatEod   $1.
   @2594   overRideSiteLatMorph   $1.
   @2595   overRideNameSex   $1.
   @2596   siteIcdO1   $4.
   @2600   histologyIcdO1   $4.
   @2600   morphIcdO1   $6.
   @2604   behaviorIcdO1   $1.
   @2605   gradeIcdO1   $1.
   @2606   icdO2ConversionFlag   $1.
   @2607   crcChecksum   $10.
   @2617   seerCodingSysCurrent   $1.
   @2618   seerCodingSysOriginal   $1.
   @2619   cocCodingSysCurrent   $2.
   @2621   cocCodingSysOriginal   $2.
   @2623   rqrsNcdbSubmissionFlag   $1.
   @2624   cocAccreditedFlag   $1.
   @2625   vendorName   $10.
   @2635   seerTypeOfFollowUp   $1.
   @2636   seerRecordNumber   $2.
   @2638   diagnosticProc7387   $2.
   @2640   dateCaseInitiated   $8.
   @2648   dateCaseCompleted   $8.
   @2656   dateCaseCompletedCoc   $8.
   @2664   dateCaseLastChanged   $8.
   @2672   dateCaseReportExported   $8.
   @2680   dateCaseReportReceived   $8.
   @2688   dateCaseReportLoaded   $8.
   @2696   dateTumorRecordAvailbl   $8.
   @2704   icdO3ConversionFlag   $1.
   @2705   overRideCs1   $1.
   @2706   overRideCs2   $1.
   @2707   overRideCs3   $1.
   @2708   overRideCs4   $1.
   @2709   overRideCs5   $1.
   @2710   overRideCs6   $1.
   @2711   overRideCs7   $1.
   @2712   overRideCs8   $1.
   @2713   overRideCs9   $1.
   @2714   overRideCs10   $1.
   @2715   overRideCs11   $1.
   @2716   overRideCs12   $1.
   @2717   overRideCs13   $1.
   @2718   overRideCs14   $1.
   @2719   overRideCs15   $1.
   @2720   overRideCs16   $1.
   @2721   overRideCs17   $1.
   @2722   overRideCs18   $1.
   @2723   overRideCs19   $1.
   @2724   overRideCs20   $1.
/*   @2725   reserved08   $50.*/
   @2775   dateOfLastContact   $8.
   @2783   dateOfLastContactFlag   $2.
   @2785   vitalStatus   $1.
   @2786   vitalStatusRecode   $1.
   @2787   cancerStatus   $1.
   @2788   dateOfLastCancerStatus   $8.
   @2796   dateOfLastCancerStatusFlag   $2.
   @2798   recordNumberRecode   $2.
   @2800   qualityOfSurvival   $1.
   @2801   followUpSource   $1.
   @2802   nextFollowUpSource   $1.
   @2803   addrCurrentCity   $50.
   @2853   addrCurrentState   $2.
   @2855   addrCurrentPostalCode   $9.
   @2864   countyCurrent   $3.
   @2867   recurrenceDate1st   $8.
   @2875   recurrenceDate1stFlag   $2.
   @2877   recurrenceType1st   $2.
   @2879   followUpContactCity   $50.
   @2929   followUpContactState   $2.
   @2931   followUpContactPostal   $9.
   @2940   causeOfDeath   $4.
   @2944   seerCauseSpecificCod   $1.
   @2945   seerOtherCod   $1.
   @2946   icdRevisionNumber   $1.
   @2947   autopsy   $1.
   @2948   placeOfDeath   $3.
   @2951   followUpSourceCentral   $2.
   @2953   dateOfDeathCanada   $8.
   @2961   dateOfDeathCanadaFlag   $2.
   @2963   unusualFollowUpMethod   $2.
   @2965   survDateActiveFollowup   $8.
   @2973   survFlagActiveFollowup   $1.
   @2974   survMosActiveFollowup   $4.
   @2978   survDatePresumedAlive   $8.
   @2986   survFlagPresumedAlive   $1.
   @2987   survMosPresumedAlive   $4.
   @2991   survDateDxRecode   $8.
/*   @2999   reserved09   $50.*/
/*   @3049   stateRequestorItems   $1000.*/

/* NPCR-SPECIFIC FIELDS FOR NBCCEDP LINKAGE */                          
   @1647 N18_9980 $1.  
   @1648 N18_9981 $8.  

/* NPCR-SPECIFIC FIELDS FOR FOREVER 6 CER VARIABLES */
   @1656 N18_9960 $2.  
   @1658 N18_9961 $3.  
   @1661 N18_9965 $1.  
   @1662 N18_9966 $1.  
   @1663 N18_9967 $1. 
   @1664 N18_9968 $1.   

/* NPCR-SPECIFIC FIELDS FOR EARLY CASE CAPTURE FLAG */
   @1665 N18_12010 $1.  

/* NPCR-SPECIFIC FIELDS FOR c AND p MODIFIERS */
   @1666 N18_12000 $2. 
   @1668 N18_12001 $2. 
   @1670 N18_12002 $2.  
   @1672 N18_12003 $2.  
   @1674 N18_12004 $2.  
   @1676 N18_12005 $2.  

/* NPCR-SPECIFIC FIELDS FOR INDIAN HEALTH SERVICE LINKAGE FIELDS */
   @1678 N18_9990 $1.  
   @1679 N18_9991 $1.  
   @1680 N18_9992 $2. 

               
/* Confidential record */              
   @4049   nameLast   $40.
   @4089   nameFirst   $40.
   @4129   nameMiddle   $40.
   @4169   namePrefix   $3.
   @4172   nameSuffix   $3.
   @4175   nameAlias   $40.
   @4215   nameMaiden   $40.
   @4255   nameSpouseParent   $60.
   @4315   medicalRecordNumber   $11.
   @4326   militaryRecordNoSuffix   $2.
   @4328   socialSecurityNumber   $9.
   @4337   medicareBeneficiaryIdentifier   $11.
   @4348   addrAtDxNoStreet   $60.
   @4408   addrAtDxSupplementl   $60.
   @4468   addrCurrentNoStreet   $60.
   @4528   addrCurrentSupplementl   $60.
   @4588   telephone   $10.
   @4598   dcStateFileNumber   $6.
   @4604   followUpContactName   $60.
   @4664   followUpContactNost   $60.
   @4724   followUpContactSuppl   $60.
   @4784   latitude   $10.
   @4794   longitude   $11.
/*   @4805   reserved10   $100.*/
   @4905   npiFollowingRegistry   $10.
   @4915   followingRegistry   $10.
   @4925   npiInstReferredFrom   $10.
   @4935   institutionReferredFrom   $10.
   @4945   npiInstReferredTo   $10.
   @4955   institutionReferredTo   $10.
/*   @4965   reserved11   $50.*/
   @5015   npiPhysicianManaging   $10.
   @5025   physicianManaging   $8.
   @5033   npiPhysicianFollowUp   $10.
   @5043   physicianFollowUp   $8.
   @5051   npiPhysicianPrimarySurg   $10.
   @5061   physicianPrimarySurg   $8.
   @5069   npiPhysician3   $10.
   @5079   physician3   $8.
   @5087   npiPhysician4   $10.
   @5097   physician4   $8.
   @5105   ehrReporting   $1000.
/*   @6105   reserved12   $50.*/
   @6155   pathReportingFacId1   $25.
   @6180   pathReportNumber1   $20.
   @6200   pathDateSpecCollect1   $14.
   @6214   pathReportType1   $2.
   @6216   pathOrderingFacNo1   $25.
   @6241   pathOrderPhysLicNo1   $20.
   @6261   pathReportingFacId2   $25.
   @6286   pathReportNumber2   $20.
   @6306   pathDateSpecCollect2   $14.
   @6320   pathReportType2   $2.
   @6322   pathOrderingFacNo2   $25.
   @6347   pathOrderPhysLicNo2   $20.
   @6367   pathReportingFacId3   $25.
   @6392   pathReportNumber3   $20.
   @6412   pathDateSpecCollect3   $14.
   @6426   pathReportType3   $2.
   @6428   pathOrderingFacNo3   $25.
   @6453   pathOrderPhysLicNo3   $20.
   @6473   pathReportingFacId4   $25.
   @6498   pathReportNumber4   $20.
   @6518   pathDateSpecCollect4   $14.
   @6532   pathReportType4   $2.
   @6534   pathOrderingFacNo4   $25.
   @6559   pathOrderPhysLicNo4   $20.
   @6579   pathReportingFacId5   $25.
   @6604   pathReportNumber5   $20.
   @6624   pathDateSpecCollect5   $14.
   @6638   pathReportType5   $2.
   @6640   pathOrderingFacNo5   $25.
   @6665   pathOrderPhysLicNo5   $20.
/*   @6685   reserved13   $250.*/

               
/* Text record */ 
   @6935   textDxProcPe   $1000.
   @7935   textDxProcXRayScan   $1000.
   @8935   textDxProcScopes   $1000.
   @9935    textDxProcLabTests   $1000.
   @10935   textDxProcOp   $1000.
   @11935   textDxProcPath   $1000.
   @12935   textPrimarySiteTitle   $100.
   @13035   textHistologyTitle   $100.
   @13135   textStaging   $1000.
   @14135   rxTextSurgery   $1000.
   @15135   rxTextRadiation   $1000.
   @16135   rxTextRadiationOther   $1000.
   @17135   rxTextChemo   $1000.
   @18135   rxTextHormone   $1000.
   @19135   rxTextBrm   $1000.
   @20135   rxTextOther   $1000.
   @21135   textRemarks   $1000.
   @22135   textPlaceOfDiagnosis   $60.
/*   @22195   reserved14   $2000.*/
;
run;
