Module 6: Summarizing data (plyr)
========================================================
author: Yuwen Yang
date: Feb 8, 2015

How to summarize the whole data?
========================================================





```r
require(plyr)
FemPreg <- read.fwf("data/2006_2010_FemPreg.dat",
         widths = pregcolwidths,
         col.names = pregcolnames)
summary(FemPreg)
```

```
     CASEID         pregordr        HOWPREG_N       HOWPREG_P    
 Min.   :26141   Min.   : 1.000   Min.   : 0.00   Min.   :1.00   
 1st Qu.:29210   1st Qu.: 1.000   1st Qu.: 6.00   1st Qu.:1.00   
 Median :32328   Median : 2.000   Median :10.00   Median :1.00   
 Mean   :33153   Mean   : 2.379   Mean   :14.93   Mean   :1.31   
 3rd Qu.:36966   3rd Qu.: 3.000   3rd Qu.:23.00   3rd Qu.:2.00   
 Max.   :42680   Max.   :19.000   Max.   :99.00   Max.   :2.00   
                                  NA's   :19075   NA's   :19084  
    moscurrp         NOWPRGDK        PREGEND1        PREGEND2    
 Min.   : 0.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.: 2.309   1st Qu.:1.000   1st Qu.:3.000   1st Qu.:5.000  
 Median : 4.388   Median :1.000   Median :6.000   Median :6.000  
 Mean   : 4.606   Mean   :1.889   Mean   :4.684   Mean   :5.233  
 3rd Qu.: 6.697   3rd Qu.:1.000   3rd Qu.:6.000   3rd Qu.:6.000  
 Max.   :99.000   Max.   :9.000   Max.   :9.000   Max.   :6.000  
 NA's   :19075    NA's   :20483   NA's   :524     NA's   :20462  
    PREGEND3        HOWENDDK        NBRNALIV        MULTBRTH    
 Min.   :4       Min.   :5.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:4       1st Qu.:5.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :4       Median :5.000   Median :1.000   Median :1.000  
 Mean   :4       Mean   :6.714   Mean   :1.019   Mean   :1.603  
 3rd Qu.:4       3rd Qu.:9.000   3rd Qu.:1.000   3rd Qu.:1.000  
 Max.   :4       Max.   :9.000   Max.   :5.000   Max.   :5.000  
 NA's   :20491   NA's   :20485   NA's   :6206    NA's   :20253  
    bornaliv       DATPRGEN_M      DATPRGEN_Y       cmotpreg    
 Min.   :1.000   Min.   : 1.00   Min.   :1973    Min.   : 882   
 1st Qu.:1.000   1st Qu.: 4.00   1st Qu.:1994    1st Qu.:1133   
 Median :1.000   Median : 7.00   Median :2000    Median :1206   
 Mean   :1.015   Mean   :12.34   Mean   :2097    Mean   :1298   
 3rd Qu.:1.000   3rd Qu.:11.00   3rd Qu.:2005    3rd Qu.:1261   
 Max.   :3.000   Max.   :99.00   Max.   :9999    Max.   :9999   
 NA's   :6206    NA's   :14813   NA's   :14813   NA's   :14813  
    AGEATEND       GESTASUN_M       GESTASUN_W       wksgest     
 Min.   :11.00   Min.   : 0.000   Min.   : 0.00   Min.   : 0.00  
 1st Qu.:19.00   1st Qu.: 0.000   1st Qu.: 0.00   1st Qu.:15.00  
 Median :22.00   Median : 0.000   Median : 4.00   Median :39.00  
 Mean   :24.77   Mean   : 4.192   Mean   :15.45   Mean   :30.37  
 3rd Qu.:26.00   3rd Qu.: 9.000   3rd Qu.:38.00   3rd Qu.:39.00  
 Max.   :99.00   Max.   :99.000   Max.   :99.00   Max.   :99.00  
 NA's   :19503   NA's   :527      NA's   :527     NA's   :527    
    mosgest          DK1GEST         DK2GEST         DK3GEST     
 Min.   : 0.000   Min.   :2       Min.   :1.0     Min.   :1.000  
 1st Qu.: 3.000   1st Qu.:2       1st Qu.:4.0     1st Qu.:1.000  
 Median : 9.000   Median :2       Median :5.0     Median :1.000  
 Mean   : 7.021   Mean   :2       Mean   :4.2     Mean   :1.814  
 3rd Qu.: 9.000   3rd Qu.:2       3rd Qu.:5.0     3rd Qu.:1.000  
 Max.   :99.000   Max.   :2       Max.   :9.0     Max.   :9.000  
 NA's   :527      NA's   :20490   NA's   :20472   NA's   :20363  
 bpa_bdscheck1   bpa_bdscheck2  bpa_bdscheck3     BABYSEX1    
 Min.   :0.000   Min.   :0      Min.   :0      Min.   :1.000  
 1st Qu.:0.000   1st Qu.:0      1st Qu.:0      1st Qu.:1.000  
 Median :0.000   Median :0      Median :0      Median :1.000  
 Mean   :0.001   Mean   :0      Mean   :0      Mean   :1.497  
 3rd Qu.:0.000   3rd Qu.:0      3rd Qu.:0      3rd Qu.:2.000  
 Max.   :2.000   Max.   :2      Max.   :0      Max.   :9.000  
 NA's   :6206    NA's   :6206   NA's   :6206   NA's   :6206   
  BIRTHWGT_LB1     BIRTHWGT_OZ1      LOBTHWGT1        BABYSEX2    
 Min.   : 0.000   Min.   : 0.000   Min.   :1.000   Min.   :1.00   
 1st Qu.: 6.000   1st Qu.: 3.000   1st Qu.:1.000   1st Qu.:1.00   
 Median : 7.000   Median : 7.000   Median :1.000   Median :2.00   
 Mean   : 7.815   Mean   : 7.796   Mean   :2.163   Mean   :1.68   
 3rd Qu.: 8.000   3rd Qu.:11.000   3rd Qu.:2.000   3rd Qu.:2.00   
 Max.   :99.000   Max.   :99.000   Max.   :9.000   Max.   :9.00   
 NA's   :6206     NA's   :6363     NA's   :20320   NA's   :20286  
  BIRTHWGT_LB2     BIRTHWGT_OZ2      LOBTHWGT2        BABYSEX3    
 Min.   : 0.000   Min.   : 0.000   Min.   :1.000   Min.   :1.000  
 1st Qu.: 4.000   1st Qu.: 3.000   1st Qu.:2.000   1st Qu.:1.250  
 Median : 5.000   Median : 7.000   Median :2.000   Median :2.000  
 Mean   : 7.743   Mean   : 7.704   Mean   :2.667   Mean   :1.667  
 3rd Qu.: 6.000   3rd Qu.:10.000   3rd Qu.:2.000   3rd Qu.:2.000  
 Max.   :99.000   Max.   :99.000   Max.   :9.000   Max.   :2.000  
 NA's   :20286    NA's   :20293    NA's   :20483   NA's   :20486  
  BIRTHWGT_LB3    BIRTHWGT_OZ3   LOBTHWGT3        BABYDOB_M     
 Min.   :0.000   Min.   : 0.0    Mode:logical   Min.   : 1.000  
 1st Qu.:2.250   1st Qu.: 2.0    NA's:20492     1st Qu.: 4.000  
 Median :3.000   Median : 5.5                   Median : 7.000  
 Mean   :2.667   Mean   : 5.0                   Mean   : 6.647  
 3rd Qu.:3.750   3rd Qu.: 6.0                   3rd Qu.: 9.000  
 Max.   :4.000   Max.   :12.0                   Max.   :99.000  
 NA's   :20486   NA's   :20486                  NA's   :6206    
   BABYDOB_Y       cmbabdob        kidage         HPAGELB     
 Min.   :1974   Min.   : 900   Min.   :  0.0   Min.   : 6.00  
 1st Qu.:1995   1st Qu.:1148   1st Qu.: 47.0   1st Qu.:23.00  
 Median :2000   Median :1208   Median : 96.0   Median :27.00  
 Mean   :2008   Mean   :1205   Mean   :107.8   Mean   :28.62  
 3rd Qu.:2004   3rd Qu.:1256   3rd Qu.:154.0   3rd Qu.:32.00  
 Max.   :9999   Max.   :9999   Max.   :386.0   Max.   :99.00  
 NA's   :6206   NA's   :6206   NA's   :6222    NA's   :6206   
    BIRTHPLC       PAYBIRTH1       PAYBIRTH2       PAYBIRTH3    
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.00   
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:2.000   1st Qu.:2.00   
 Median :1.000   Median :3.000   Median :2.000   Median :3.00   
 Mean   :1.031   Mean   :2.136   Mean   :2.107   Mean   :3.04   
 3rd Qu.:1.000   3rd Qu.:3.000   3rd Qu.:2.000   3rd Qu.:3.00   
 Max.   :9.000   Max.   :9.000   Max.   :5.000   Max.   :5.00   
 NA's   :15502   NA's   :15502   NA's   :19234   NA's   :20467  
   PAYBIRTH4        CSECPRIM        CSECMED1        CSECMED2    
 Min.   :5       Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:5       1st Qu.:1.000   1st Qu.:2.000   1st Qu.:3.000  
 Median :5       Median :1.000   Median :3.000   Median :5.000  
 Mean   :5       Mean   :2.665   Mean   :3.499   Mean   :4.119  
 3rd Qu.:5       3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000  
 Max.   :5       Max.   :5.000   Max.   :9.000   Max.   :6.000  
 NA's   :20489   NA's   :19514   NA's   :19921   NA's   :20307  
    CSECMED3        CSECMED4        CSECMED5        CSECPLAN    
 Min.   :2.000   Min.   :3.00    Min.   :5       Min.   :1.000  
 1st Qu.:4.000   1st Qu.:5.00    1st Qu.:5       1st Qu.:1.000  
 Median :5.000   Median :5.00    Median :5       Median :5.000  
 Mean   :4.815   Mean   :5.00    Mean   :5       Mean   :3.769  
 3rd Qu.:5.000   3rd Qu.:5.75    3rd Qu.:5       3rd Qu.:5.000  
 Max.   :6.000   Max.   :6.00    Max.   :5       Max.   :5.000  
 NA's   :20438   NA's   :20482   NA's   :20491   NA's   :20479  
    KNEWPREG         TRIMESTR        LTRIMEST        PRIORSMK    
 Min.   : 0.000   Min.   :1.000   Min.   :1.00    Min.   :0.000  
 1st Qu.: 4.000   1st Qu.:1.000   1st Qu.:1.75    1st Qu.:0.000  
 Median : 5.000   Median :2.000   Median :2.00    Median :0.000  
 Mean   : 6.818   Mean   :4.091   Mean   :3.50    Mean   :0.823  
 3rd Qu.: 7.000   3rd Qu.:9.000   3rd Qu.:3.75    3rd Qu.:2.000  
 Max.   :99.000   Max.   :9.000   Max.   :9.00    Max.   :8.000  
 NA's   :14126    NA's   :20459   NA's   :20488   NA's   :14126  
    POSTSMKS        NPOSTSMK        GETPRENA        BGNPRENA    
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   : 1.00  
 1st Qu.:5.000   1st Qu.:2.000   1st Qu.:1.000   1st Qu.: 5.00  
 Median :5.000   Median :3.000   Median :1.000   Median : 8.00  
 Mean   :4.434   Mean   :2.604   Mean   :1.432   Mean   : 8.75  
 3rd Qu.:5.000   3rd Qu.:3.000   3rd Qu.:1.000   3rd Qu.:10.00  
 Max.   :9.000   Max.   :9.000   Max.   :9.000   Max.   :99.00  
 NA's   :14126   NA's   :19587   NA's   :14126   NA's   :14806  
    PNCTRIM         LPNCTRI         WORKPREG        WORKBORN    
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :1.000   Median :1.000   Median :1.000   Median :1.000  
 Mean   :2.481   Mean   :3.286   Mean   :2.526   Mean   :2.448  
 3rd Qu.:2.000   3rd Qu.:7.000   3rd Qu.:5.000   3rd Qu.:5.000  
 Max.   :9.000   Max.   :9.000   Max.   :9.000   Max.   :9.000  
 NA's   :20465   NA's   :20478   NA's   :15507   NA's   :17404  
    DIDWORK         MATWEEKS        WEEKSDK         MATLEAVE     
 Min.   :1.000   Min.   : 0.00   Min.   :1.000   Min.   : 0.000  
 1st Qu.:2.000   1st Qu.: 6.00   1st Qu.:1.750   1st Qu.: 0.000  
 Median :3.000   Median : 8.00   Median :2.000   Median : 4.000  
 Mean   :2.441   Mean   :10.96   Mean   :2.333   Mean   : 5.007  
 3rd Qu.:3.000   3rd Qu.:12.00   3rd Qu.:2.000   3rd Qu.: 8.000  
 Max.   :3.000   Max.   :99.00   Max.   :9.000   Max.   :99.000  
 NA's   :19375   NA's   :18521   NA's   :20480   NA's   :18521   
   LIVEHERE1       ALIVENOW1      WHENDIED_M1      WHENDIED_Y1   
 Min.   :1.000   Min.   :1.000   Min.   : 1.000   Min.   :1988   
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.: 4.000   1st Qu.:1996   
 Median :1.000   Median :1.000   Median : 8.000   Median :2001   
 Mean   :2.085   Mean   :1.527   Mean   : 8.463   Mean   :2000   
 3rd Qu.:5.000   3rd Qu.:1.000   3rd Qu.:10.000   3rd Qu.:2004   
 Max.   :5.000   Max.   :9.000   Max.   :99.000   Max.   :2010   
 NA's   :16352   NA's   :19369   NA's   :20358    NA's   :20358  
   cmkidied1      WHENLEFT_M1     WHENLEFT_Y1      cmkidlft1    
 Min.   :1059    Min.   : 1.00   Min.   :1988    Min.   :1067   
 1st Qu.:1156    1st Qu.: 4.00   1st Qu.:2000    1st Qu.:1208   
 Median :1218    Median : 7.00   Median :2005    Median :1263   
 Mean   :1204    Mean   :12.44   Mean   :2205    Mean   :1464   
 3rd Qu.:1252    3rd Qu.:10.00   3rd Qu.:2007    3rd Qu.:1286   
 Max.   :1324    Max.   :99.00   Max.   :9999    Max.   :9999   
 NA's   :20358   NA's   :19503   NA's   :19503   NA's   :19503  
    lastage1       WHERENOW1       LEGAGREE1       PARENEND1    
 Min.   :  0.0   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.: 15.0   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median : 63.0   Median :2.000   Median :1.000   Median :1.000  
 Mean   : 82.3   Mean   :2.283   Mean   :2.344   Mean   :1.365  
 3rd Qu.:131.0   3rd Qu.:3.000   3rd Qu.:5.000   3rd Qu.:1.000  
 Max.   :997.0   Max.   :9.000   Max.   :9.000   Max.   :9.000  
 NA's   :19394   NA's   :19503   NA's   :20132   NA's   :19628  
   ANYNURSE1       FEDSOLID1      FRSTEATD_N1       FRSTEATD_P1   
 Min.   :1.000   Min.   :1.000   Min.   :  0.000   Min.   :1.00   
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:  2.000   1st Qu.:1.00   
 Median :1.000   Median :1.000   Median :  3.000   Median :1.00   
 Mean   :2.512   Mean   :1.521   Mean   :  4.764   Mean   :1.49   
 3rd Qu.:5.000   3rd Qu.:1.000   3rd Qu.:  6.000   3rd Qu.:2.00   
 Max.   :8.000   Max.   :5.000   Max.   :999.000   Max.   :3.00   
 NA's   :7695    NA's   :19909   NA's   :12607     NA's   :12614  
   FRSTEATD1        QUITNURS1      AGEQTNUR_N1       AGEQTNUR_P1   
 Min.   : 0.000   Min.   :1.000   Min.   :  0.000   Min.   :1.000  
 1st Qu.: 1.000   1st Qu.:1.000   1st Qu.:  3.000   1st Qu.:1.000  
 Median : 3.000   Median :1.000   Median :  6.000   Median :1.000  
 Mean   : 3.034   Mean   :1.869   Mean   :  9.341   Mean   :1.215  
 3rd Qu.: 5.000   3rd Qu.:1.000   3rd Qu.: 11.000   3rd Qu.:1.000  
 Max.   :36.000   Max.   :5.000   Max.   :999.000   Max.   :3.000  
 NA's   :12614    NA's   :19268   NA's   :12873     NA's   :12884  
   AGEQTNUR1        LIVEHERE2       ALIVENOW2      WHENDIED_M2   
 Min.   : 0.000   Min.   :1.000   Min.   :1.000   Min.   : 1.0   
 1st Qu.: 2.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.: 2.5   
 Median : 5.000   Median :1.000   Median :1.000   Median : 6.0   
 Mean   : 6.916   Mean   :2.353   Mean   :2.913   Mean   : 6.0   
 3rd Qu.:10.000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.: 9.0   
 Max.   :50.000   Max.   :5.000   Max.   :5.000   Max.   :12.0   
 NA's   :12884    NA's   :20424   NA's   :20469   NA's   :20481  
  WHENDIED_Y2      cmkidied2      WHENLEFT_M2     WHENLEFT_Y2   
 Min.   :1991    Min.   :1101    Min.   : 2.00   Min.   :1994   
 1st Qu.:1996    1st Qu.:1152    1st Qu.: 3.75   1st Qu.:2000   
 Median :2000    Median :1209    Median : 6.50   Median :2002   
 Mean   :2000    Mean   :1207    Mean   : 6.75   Mean   :2002   
 3rd Qu.:2005    3rd Qu.:1262    3rd Qu.: 8.50   3rd Qu.:2006   
 Max.   :2007    Max.   :1286    Max.   :15.00   Max.   :2007   
 NA's   :20481   NA's   :20481   NA's   :20480   NA's   :20480  
   cmkidlft2        lastage2        WHERENOW2       LEGAGREE2    
 Min.   :1130    Min.   :  0.00   Min.   :1.000   Min.   :5      
 1st Qu.:1203    1st Qu.:  0.00   1st Qu.:2.000   1st Qu.:6      
 Median :1232    Median :  1.00   Median :2.000   Median :7      
 Mean   :1229    Mean   :118.27   Mean   :2.417   Mean   :7      
 3rd Qu.:1272    3rd Qu.: 70.75   3rd Qu.:3.000   3rd Qu.:8      
 Max.   :1294    Max.   :997.00   Max.   :6.000   Max.   :9      
 NA's   :20480   NA's   :20470    NA's   :20480   NA's   :20490  
   PARENEND2       ANYNURSE2       FEDSOLID2      FRSTEATD_N2   
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :0.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :1.000   Median :1.000   Median :1.000   Median :2.000  
 Mean   :2.333   Mean   :2.604   Mean   :1.615   Mean   :2.953  
 3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:1.000   3rd Qu.:4.000  
 Max.   :5.000   Max.   :5.000   Max.   :5.000   Max.   :8.000  
 NA's   :20483   NA's   :20310   NA's   :20479   NA's   :20385  
  FRSTEATD_P2      FRSTEATD2       QUITNURS2      AGEQTNUR_N2    
 Min.   :1.000   Min.   :0.000   Min.   :1.0     Min.   : 0.000  
 1st Qu.:1.000   1st Qu.:0.000   1st Qu.:1.0     1st Qu.: 2.000  
 Median :1.000   Median :1.000   Median :1.0     Median : 5.000  
 Mean   :1.738   Mean   :2.019   Mean   :1.4     Mean   : 5.654  
 3rd Qu.:3.000   3rd Qu.:3.500   3rd Qu.:1.0     3rd Qu.: 8.000  
 Max.   :3.000   Max.   :8.000   Max.   :5.0     Max.   :36.000  
 NA's   :20385   NA's   :20385   NA's   :20462   NA's   :20388   
  AGEQTNUR_P2      AGEQTNUR2        LIVEHERE3       ALIVENOW3    
 Min.   :1.000   Min.   : 0.000   Min.   :1.000   Min.   :5      
 1st Qu.:1.000   1st Qu.: 1.000   1st Qu.:1.000   1st Qu.:5      
 Median :1.000   Median : 3.000   Median :1.000   Median :5      
 Mean   :1.279   Mean   : 4.644   Mean   :2.333   Mean   :5      
 3rd Qu.:2.000   3rd Qu.: 6.000   3rd Qu.:3.000   3rd Qu.:5      
 Max.   :3.000   Max.   :36.000   Max.   :5.000   Max.   :5      
 NA's   :20388   NA's   :20388    NA's   :20489   NA's   :20491  
  WHENDIED_M3     WHENDIED_Y3      cmkidied3     WHENLEFT_M3   
 Min.   :1       Min.   :2007    Min.   :1285    Mode:logical  
 1st Qu.:1       1st Qu.:2007    1st Qu.:1285    NA's:20492    
 Median :1       Median :2007    Median :1285                  
 Mean   :1       Mean   :2007    Mean   :1285                  
 3rd Qu.:1       3rd Qu.:2007    3rd Qu.:1285                  
 Max.   :1       Max.   :2007    Max.   :1285                  
 NA's   :20491   NA's   :20491   NA's   :20491                 
 WHENLEFT_Y3    cmkidlft3         lastage3     WHERENOW3     
 Mode:logical   Mode:logical   Min.   :0       Mode:logical  
 NA's:20492     NA's:20492     1st Qu.:0       NA's:20492    
                               Median :0                     
                               Mean   :0                     
                               3rd Qu.:0                     
                               Max.   :0                     
                               NA's   :20491                 
 LEGAGREE3      PARENEND3        ANYNURSE3     FEDSOLID3     
 Mode:logical   Mode:logical   Min.   :1.0     Mode:logical  
 NA's:20492     NA's:20492     1st Qu.:1.0     NA's:20492    
                               Median :1.0                   
                               Mean   :1.8                   
                               3rd Qu.:1.0                   
                               Max.   :5.0                   
                               NA's   :20487                 
  FRSTEATD_N3     FRSTEATD_P3      FRSTEATD3       QUITNURS3    
 Min.   :1.00    Min.   :2.00    Min.   :0.00    Min.   :1      
 1st Qu.:1.00    1st Qu.:2.75    1st Qu.:0.00    1st Qu.:1      
 Median :2.00    Median :3.00    Median :0.00    Median :1      
 Mean   :2.25    Mean   :2.75    Mean   :0.25    Mean   :1      
 3rd Qu.:3.25    3rd Qu.:3.00    3rd Qu.:0.25    3rd Qu.:1      
 Max.   :4.00    Max.   :3.00    Max.   :1.00    Max.   :1      
 NA's   :20488   NA's   :20488   NA's   :20488   NA's   :20491  
  AGEQTNUR_N3     AGEQTNUR_P3      AGEQTNUR3       prgoutcome   
 Min.   : 3.0    Min.   :1.0     Min.   : 1.00   Min.   :1.000  
 1st Qu.: 4.5    1st Qu.:1.0     1st Qu.: 1.75   1st Qu.:1.000  
 Median : 6.5    Median :1.5     Median : 2.50   Median :1.000  
 Mean   : 7.0    Mean   :1.5     Mean   : 4.50   Mean   :1.328  
 3rd Qu.: 9.0    3rd Qu.:2.0     3rd Qu.: 5.25   3rd Qu.:2.000  
 Max.   :12.0    Max.   :2.0     Max.   :12.00   Max.   :3.000  
 NA's   :20488   NA's   :20488   NA's   :20488   NA's   :12     
    outcom_s        nbrnlv_s        cmprgend       cmendp_s   
 Min.   :1.000   Min.   :1.000   Min.   : 882   Min.   : 882  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1144   1st Qu.:1144  
 Median :1.000   Median :1.000   Median :1207   Median :1207  
 Mean   :1.328   Mean   :1.015   Mean   :1231   Mean   :1231  
 3rd Qu.:2.000   3rd Qu.:1.000   3rd Qu.:1257   3rd Qu.:1257  
 Max.   :7.000   Max.   :3.000   Max.   :9999   Max.   :9999  
                 NA's   :6199    NA's   :529    NA's   :519   
    cmprgbeg       cmpbeg_s       cmlastlb       cmlstprg   
 Min.   : 873   Min.   : 873   Min.   : 947   Min.   : 935  
 1st Qu.:1139   1st Qu.:1139   1st Qu.:1196   1st Qu.:1210  
 Median :1203   Median :1203   Median :1247   Median :1257  
 Mean   :1230   Mean   :1233   Mean   :1246   Mean   :1325  
 3rd Qu.:1254   3rd Qu.:1254   3rd Qu.:1278   3rd Qu.:1285  
 Max.   :9999   Max.   :9999   Max.   :9999   Max.   :9999  
 NA's   :13                    NA's   :1254   NA's   :172   
    cmfstprg       cmpg1beg      X.cmintstr      cmintfin   
 Min.   : 882   Min.   : 873   Min.   : 786   Min.   : 882  
 1st Qu.:1095   1st Qu.:1087   1st Qu.:1093   1st Qu.:1144  
 Median :1160   Median :1151   Median :1162   Median :1207  
 Mean   :1160   Mean   :1188   Mean   :1221   Mean   :1231  
 3rd Qu.:1216   3rd Qu.:1209   3rd Qu.:1217   3rd Qu.:1257  
 Max.   :9999   Max.   :9999   Max.   :9999   Max.   :9999  
 NA's   :172                   NA's   :541    NA's   :553   
   cmintstrop     cmintfinop     cmintstrcr      cmintfincr   
 Min.   : 935   Min.   :1278   Min.   :1051    Min.   :1278   
 1st Qu.:1209   1st Qu.:1290   1st Qu.:1249    1st Qu.:1289   
 Median :1256   Median :1303   Median :1273    Median :1303   
 Mean   :1267   Mean   :1303   Mean   :1281    Mean   :1302   
 3rd Qu.:1284   3rd Qu.:1316   3rd Qu.:1290    3rd Qu.:1313   
 Max.   :9999   Max.   :1326   Max.   :9999    Max.   :1326   
 NA's   :194    NA's   :139    NA's   :19072   NA's   :19068  
    anyusint        EVUSEINT        STOPDUSE        WHYSTOPD    
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :5.000   Median :1.000   Median :1.000   Median :1.000  
 Mean   :3.818   Mean   :2.085   Mean   :2.659   Mean   :2.629  
 3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000  
 Max.   :5.000   Max.   :9.000   Max.   :9.000   Max.   :9.000  
                 NA's   :4456    NA's   :8195    NA's   :13277  
   WHATMETH01       WHATMETH02       WHATMETH03      WHATMETH04   
 Min.   : 1.000   Min.   : 1.000   Min.   : 3.00   Min.   : 3.00  
 1st Qu.: 3.000   1st Qu.: 4.000   1st Qu.: 7.00   1st Qu.: 6.25  
 Median : 4.000   Median : 7.000   Median :10.00   Median :11.00  
 Mean   : 5.147   Mean   : 7.196   Mean   :10.85   Mean   :11.17  
 3rd Qu.: 6.000   3rd Qu.: 7.000   3rd Qu.:14.75   3rd Qu.:17.00  
 Max.   :99.000   Max.   :25.000   Max.   :25.00   Max.   :18.00  
 NA's   :14418    NA's   :19546    NA's   :20386   NA's   :20480  
    RESNOUSE        WANTBOLD        PROBBABE        CNFRMNO     
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :5.000   Median :1.000   Median :1.000   Median :1.000  
 Mean   :3.095   Mean   :2.366   Mean   :3.273   Mean   :1.099  
 3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:1.000  
 Max.   :9.000   Max.   :9.000   Max.   :9.000   Max.   :2.000  
 NA's   :13421   NA's   :7703    NA's   :20111   NA's   :20421  
    WANTBLD2        TIMINGOK       TOOSOON_N        TOOSOON_P    
 Min.   :1.000   Min.   :1.000   Min.   :  1.00   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:  2.00   1st Qu.:2.000  
 Median :1.000   Median :2.000   Median :  3.00   Median :2.000  
 Mean   :1.714   Mean   :1.715   Mean   : 28.07   Mean   :2.037  
 3rd Qu.:1.000   3rd Qu.:2.000   3rd Qu.:  5.00   3rd Qu.:2.000  
 Max.   :6.000   Max.   :9.000   Max.   :999.00   Max.   :9.000  
 NA's   :20485   NA's   :4038    NA's   :14090    NA's   :14090  
    WTHPART1        WTHPART2        FEELINPG         HPWNOLD     
 Min.   :1.000   Min.   :1.000   Min.   : 1.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.: 5.000   1st Qu.:1.000  
 Median :1.000   Median :2.000   Median : 9.000   Median :1.000  
 Mean   :1.255   Mean   :2.474   Mean   : 7.687   Mean   :2.178  
 3rd Qu.:1.000   3rd Qu.:4.000   3rd Qu.:10.000   3rd Qu.:5.000  
 Max.   :9.000   Max.   :9.000   Max.   :99.000   Max.   :9.000  
 NA's   :10589   NA's   :9903    NA's   :15363                   
    TIMOKHP         COHPBEG         COHPEND         TELLFATH    
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :2.000   Median :1.000   Median :1.000   Median :1.000  
 Mean   :1.878   Mean   :2.783   Mean   :2.736   Mean   :1.328  
 3rd Qu.:2.000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:1.000  
 Max.   :9.000   Max.   :9.000   Max.   :9.000   Max.   :9.000  
 NA's   :5679    NA's   :5849    NA's   :6137    NA's   :12250  
    WHENTELL        TRYSCALE         WANTSCAL         WHYPRG1     
 Min.   :1.000   Min.   : 0.000   Min.   : 0.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.: 2.000   1st Qu.: 1.000   1st Qu.:1.000  
 Median :1.000   Median : 5.000   Median : 5.000   Median :2.000  
 Mean   :1.055   Mean   : 5.572   Mean   : 5.725   Mean   :1.725  
 3rd Qu.:1.000   3rd Qu.: 9.000   3rd Qu.:10.000   3rd Qu.:2.000  
 Max.   :9.000   Max.   :99.000   Max.   :99.000   Max.   :9.000  
 NA's   :12898   NA's   :15363    NA's   :15363    NA's   :19447  
    WHYPRG2        WHYNOUSE1        WHYNOUSE2       WHYNOUSE3    
 Min.   :2.0     Min.   : 1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:2.0     1st Qu.: 2.000   1st Qu.:3.000   1st Qu.:3.000  
 Median :2.0     Median : 3.000   Median :4.000   Median :5.000  
 Mean   :2.1     Mean   : 5.268   Mean   :4.678   Mean   :5.018  
 3rd Qu.:2.0     3rd Qu.: 6.000   3rd Qu.:6.000   3rd Qu.:6.000  
 Max.   :3.0     Max.   :99.000   Max.   :9.000   Max.   :9.000  
 NA's   :20472   NA's   :19065    NA's   :20287   NA's   :20436  
   WHYNOUSE4       WHYNOUSE5        MAINOUSE         PRGLNGTH    
 Min.   :2.000   Min.   :6.00    Min.   : 1.000   Min.   : 0.00  
 1st Qu.:4.000   1st Qu.:6.75    1st Qu.: 2.000   1st Qu.:15.00  
 Median :6.000   Median :7.50    Median : 4.000   Median :39.00  
 Mean   :6.083   Mean   :7.50    Mean   : 5.095   Mean   :30.05  
 3rd Qu.:9.000   3rd Qu.:8.25    3rd Qu.: 8.000   3rd Qu.:39.00  
 Max.   :9.000   Max.   :9.00    Max.   :99.000   Max.   :57.00  
 NA's   :20480   NA's   :20490   NA's   :20355                   
    OUTCOME        BIRTHORD          DATEND        AGEPREG    
 Min.   :1.00   Min.   : 1.000   Min.   : 882   Min.   : 516  
 1st Qu.:1.00   1st Qu.: 1.000   1st Qu.:1144   1st Qu.:2016  
 Median :1.00   Median : 2.000   Median :1207   Median :2375  
 Mean   :1.74   Mean   : 1.885   Mean   :1193   Mean   :2464  
 3rd Qu.:2.00   3rd Qu.: 2.000   3rd Qu.:1257   3rd Qu.:2866  
 Max.   :6.00   Max.   :11.000   Max.   :1325   Max.   :4441  
                NA's   :6200     NA's   :516    NA's   :516   
    DATECON         AGECON        FMAROUT5        PMARPREG    
 Min.   : 873   Min.   : 441   Min.   :1.000   Min.   :1.000  
 1st Qu.:1139   1st Qu.:1966   1st Qu.:1.000   1st Qu.:1.000  
 Median :1203   Median :2333   Median :5.000   Median :1.000  
 Mean   :1189   Mean   :2415   Mean   :3.115   Mean   :1.493  
 3rd Qu.:1253   3rd Qu.:2816   3rd Qu.:5.000   3rd Qu.:2.000  
 Max.   :1325   Max.   :4408   Max.   :5.000   Max.   :2.000  
                               NA's   :516     NA's   :516    
    RMAROUT6        FMARCON5        RMARCON6        LEARNPRG     
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   : 0.000  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.: 4.000  
 Median :5.000   Median :5.000   Median :5.000   Median : 5.000  
 Mean   :3.467   Mean   :3.277   Mean   :3.671   Mean   : 5.769  
 3rd Qu.:6.000   3rd Qu.:5.000   3rd Qu.:6.000   3rd Qu.: 7.000  
 Max.   :6.000   Max.   :5.000   Max.   :6.000   Max.   :38.000  
 NA's   :516                                     NA's   :14141   
    PNCAREWK        PAYDELIV          LBW1          LIVCHILD    
 Min.   : 0.00   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.: 5.00   1st Qu.:3.000   1st Qu.:2.000   1st Qu.:1.000  
 Median : 8.00   Median :4.000   Median :2.000   Median :1.000  
 Mean   :17.44   Mean   :3.337   Mean   :1.908   Mean   :1.259  
 3rd Qu.:12.00   3rd Qu.:4.000   3rd Qu.:2.000   3rd Qu.:1.000  
 Max.   :95.00   Max.   :5.000   Max.   :2.000   Max.   :6.000  
 NA's   :14142   NA's   :15507   NA's   :6200    NA's   :6200   
    BFEEDWKS        MATERNLV        OLDWANTR        OLDWANTP    
 Min.   :  0.0   Min.   :0.000   Min.   :1.000   Min.   :1.000  
 1st Qu.: 17.0   1st Qu.:0.000   1st Qu.:2.000   1st Qu.:2.000  
 Median : 52.0   Median :1.000   Median :3.000   Median :2.000  
 Mean   :419.8   Mean   :1.168   Mean   :2.866   Mean   :3.059  
 3rd Qu.:995.0   3rd Qu.:1.000   3rd Qu.:3.000   3rd Qu.:5.000  
 Max.   :995.0   Max.   :4.000   Max.   :6.000   Max.   :6.000  
 NA's   :7877    NA's   :15515                                  
    WANTRESP        WANTPART        cmbirth            AGER      
 Min.   :1.000   Min.   :1.000   Min.   : 740.0   Min.   :15.00  
 1st Qu.:2.000   1st Qu.:2.000   1st Qu.: 832.0   1st Qu.:28.00  
 Median :3.000   Median :2.000   Median : 897.0   Median :33.00  
 Mean   :2.865   Mean   :3.054   Mean   : 899.6   Mean   :33.09  
 3rd Qu.:3.000   3rd Qu.:5.000   3rd Qu.: 961.0   3rd Qu.:39.00  
 Max.   :6.000   Max.   :6.000   Max.   :1143.0   Max.   :45.00  
                                                                 
    agescrn         FMARITAL        RMARITAL        EDUCAT     
 Min.   :15.00   Min.   :1.000   Min.   :1.00   Min.   : 9.00  
 1st Qu.:28.00   1st Qu.:1.000   1st Qu.:1.00   1st Qu.:11.00  
 Median :33.00   Median :3.000   Median :2.00   Median :12.00  
 Mean   :33.05   Mean   :2.812   Mean   :2.85   Mean   :12.61  
 3rd Qu.:39.00   3rd Qu.:5.000   3rd Qu.:5.00   3rd Qu.:14.00  
 Max.   :44.00   Max.   :5.000   Max.   :6.00   Max.   :19.00  
                                                               
     HIEDUC            RACE          HISPANIC        HISPRACE    
 Min.   : 5.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.: 7.000   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
 Median : 9.000   Median :2.000   Median :2.000   Median :2.000  
 Mean   : 9.005   Mean   :1.847   Mean   :1.741   Mean   :2.097  
 3rd Qu.:10.000   3rd Qu.:2.000   3rd Qu.:2.000   3rd Qu.:3.000  
 Max.   :15.000   Max.   :3.000   Max.   :2.000   Max.   :4.000  
                                                                 
   HISPRACE2       RCURPREG        PREGNUM           PARITY      
 Min.   :1.00   Min.   :1.000   Min.   : 1.000   Min.   : 0.000  
 1st Qu.:1.00   1st Qu.:2.000   1st Qu.: 2.000   1st Qu.: 2.000  
 Median :2.00   Median :2.000   Median : 3.000   Median : 2.000  
 Mean   :2.13   Mean   :1.931   Mean   : 3.758   Mean   : 2.522  
 3rd Qu.:3.00   3rd Qu.:2.000   3rd Qu.: 5.000   3rd Qu.: 3.000  
 Max.   :4.00   Max.   :2.000   Max.   :19.000   Max.   :15.000  
                                                                 
    CURR_INS       PUBASSIS        POVERTY         LABORFOR    
 Min.   :1.00   Min.   :1.000   Min.   :  6.0   Min.   :1.000  
 1st Qu.:1.00   1st Qu.:1.000   1st Qu.: 67.0   1st Qu.:1.000  
 Median :2.00   Median :1.000   Median :144.0   Median :2.000  
 Mean   :2.07   Mean   :1.488   Mean   :178.7   Mean   :3.498  
 3rd Qu.:3.00   3rd Qu.:2.000   3rd Qu.:269.0   3rd Qu.:7.000  
 Max.   :4.00   Max.   :2.000   Max.   :500.0   Max.   :9.000  
                                                               
    RELIGION         METRO           BRNOUT        yrstrus     
 Min.   :1.000   Min.   :1.000   Min.   :1.00   Min.   :1965   
 1st Qu.:2.000   1st Qu.:1.000   1st Qu.:5.00   1st Qu.:1989   
 Median :3.000   Median :2.000   Median :5.00   Median :1995   
 Mean   :2.473   Mean   :1.729   Mean   :4.18   Mean   :2035   
 3rd Qu.:3.000   3rd Qu.:2.000   3rd Qu.:5.00   3rd Qu.:2000   
 Max.   :4.000   Max.   :3.000   Max.   :9.00   Max.   :9999   
                                                NA's   :16285  
   PRGLNGTH_I         OUTCOME_I           BIRTHORD_I      
 Min.   :0.000000   Min.   :0.0000000   Min.   :0.000000  
 1st Qu.:0.000000   1st Qu.:0.0000000   1st Qu.:0.000000  
 Median :0.000000   Median :0.0000000   Median :0.000000  
 Mean   :0.001269   Mean   :0.0005856   Mean   :0.001171  
 3rd Qu.:0.000000   3rd Qu.:0.0000000   3rd Qu.:0.000000  
 Max.   :2.000000   Max.   :1.0000000   Max.   :2.000000  
                                                          
    DATEND_I          AGEPREG_I          DATECON_I       
 Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
 1st Qu.:0.000000   1st Qu.:0.000000   1st Qu.:0.000000  
 Median :0.000000   Median :0.000000   Median :0.000000  
 Mean   :0.008491   Mean   :0.004587   Mean   :0.005807  
 3rd Qu.:0.000000   3rd Qu.:0.000000   3rd Qu.:0.000000  
 Max.   :2.000000   Max.   :2.000000   Max.   :2.000000  
                                                         
    AGECON_I         FMAROUT5_I         PMARPREG_I      
 Min.   :0.00000   Min.   :0.000000   Min.   :0.000000  
 1st Qu.:0.00000   1st Qu.:0.000000   1st Qu.:0.000000  
 Median :0.00000   Median :0.000000   Median :0.000000  
 Mean   :0.00571   Mean   :0.006783   Mean   :0.004782  
 3rd Qu.:0.00000   3rd Qu.:0.000000   3rd Qu.:0.000000  
 Max.   :2.00000   Max.   :2.000000   Max.   :1.000000  
                                                        
   RMAROUT6_I         FMARCON5_I         RMARCON6_I      
 Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
 1st Qu.:0.000000   1st Qu.:0.000000   1st Qu.:0.000000  
 Median :0.000000   Median :0.000000   Median :0.000000  
 Mean   :0.006442   Mean   :0.006832   Mean   :0.006539  
 3rd Qu.:0.000000   3rd Qu.:0.000000   3rd Qu.:0.000000  
 Max.   :2.000000   Max.   :2.000000   Max.   :2.000000  
                                                         
   LEARNPRG_I        PNCAREWK_I        PAYDELIV_I           LBW1_I        
 Min.   :0.00000   Min.   :0.00000   Min.   :0.000000   Min.   :0.000000  
 1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.000000   1st Qu.:0.000000  
 Median :0.00000   Median :0.00000   Median :0.000000   Median :0.000000  
 Mean   :0.01698   Mean   :0.01508   Mean   :0.002294   Mean   :0.002586  
 3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.000000   3rd Qu.:0.000000  
 Max.   :2.00000   Max.   :2.00000   Max.   :2.000000   Max.   :2.000000  
                                                                          
   LIVCHILD_I          BFEEDWKS_I         MATERNLV_I      
 Min.   :0.0000000   Min.   :0.000000   Min.   :0.000000  
 1st Qu.:0.0000000   1st Qu.:0.000000   1st Qu.:0.000000  
 Median :0.0000000   Median :0.000000   Median :0.000000  
 Mean   :0.0001952   Mean   :0.007174   Mean   :0.002782  
 3rd Qu.:0.0000000   3rd Qu.:0.000000   3rd Qu.:0.000000  
 Max.   :2.0000000   Max.   :2.000000   Max.   :2.000000  
                                                          
   OLDWANTR_I        OLDWANTP_I         WANTRESP_I        WANTPART_I      
 Min.   :0.00000   Min.   :0.000000   Min.   :0.00000   Min.   :0.000000  
 1st Qu.:0.00000   1st Qu.:0.000000   1st Qu.:0.00000   1st Qu.:0.000000  
 Median :0.00000   Median :0.000000   Median :0.00000   Median :0.000000  
 Mean   :0.00161   Mean   :0.002977   Mean   :0.00161   Mean   :0.004587  
 3rd Qu.:0.00000   3rd Qu.:0.000000   3rd Qu.:0.00000   3rd Qu.:0.000000  
 Max.   :2.00000   Max.   :2.000000   Max.   :2.00000   Max.   :2.000000  
                                                                          
     AGER_I    FMARITAL_I   RMARITAL_I    EDUCAT_I        
 Min.   :0   Min.   :0    Min.   :0    Min.   :0.0000000  
 1st Qu.:0   1st Qu.:0    1st Qu.:0    1st Qu.:0.0000000  
 Median :0   Median :0    Median :0    Median :0.0000000  
 Mean   :0   Mean   :0    Mean   :0    Mean   :0.0002928  
 3rd Qu.:0   3rd Qu.:0    3rd Qu.:0    3rd Qu.:0.0000000  
 Max.   :0   Max.   :0    Max.   :0    Max.   :1.0000000  
                                                          
    HIEDUC_I             RACE_I    HISPANIC_I          HISPRACE_I       
 Min.   :0.0000000   Min.   :0   Min.   :0.0000000   Min.   :0.0000000  
 1st Qu.:0.0000000   1st Qu.:0   1st Qu.:0.0000000   1st Qu.:0.0000000  
 Median :0.0000000   Median :0   Median :0.0000000   Median :0.0000000  
 Mean   :0.0005856   Mean   :0   Mean   :0.0001464   Mean   :0.0001464  
 3rd Qu.:0.0000000   3rd Qu.:0   3rd Qu.:0.0000000   3rd Qu.:0.0000000  
 Max.   :2.0000000   Max.   :0   Max.   :1.0000000   Max.   :1.0000000  
                                                                        
  HISPRACE2_I          RCURPREG_I          PREGNUM_I    PARITY_I        
 Min.   :0.0000000   Min.   :0.0000000   Min.   :0   Min.   :0.0000000  
 1st Qu.:0.0000000   1st Qu.:0.0000000   1st Qu.:0   1st Qu.:0.0000000  
 Median :0.0000000   Median :0.0000000   Median :0   Median :0.0000000  
 Mean   :0.0001464   Mean   :0.0001952   Mean   :0   Mean   :0.0003904  
 3rd Qu.:0.0000000   3rd Qu.:0.0000000   3rd Qu.:0   3rd Qu.:0.0000000  
 Max.   :1.0000000   Max.   :2.0000000   Max.   :0   Max.   :2.0000000  
                                                                        
   CURR_INS_I         PUBASSIS_I       POVERTY_I         LABORFOR_I       
 Min.   :0.000000   Min.   :0.0000   Min.   :0.00000   Min.   :0.0000000  
 1st Qu.:0.000000   1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.0000000  
 Median :0.000000   Median :0.0000   Median :0.00000   Median :0.0000000  
 Mean   :0.001464   Mean   :0.0184   Mean   :0.05963   Mean   :0.0005368  
 3rd Qu.:0.000000   3rd Qu.:0.0000   3rd Qu.:0.00000   3rd Qu.:0.0000000  
 Max.   :1.000000   Max.   :1.0000   Max.   :1.00000   Max.   :1.0000000  
                                                                          
   RELIGION_I          METRO_I    FINALWGT30           WGTQ1Q16       
 Min.   :0.000000   Min.   :0   Min.   :    63.42   Min.   :   44.02  
 1st Qu.:0.000000   1st Qu.:0   1st Qu.:  2431.87   1st Qu.: 1480.50  
 Median :0.000000   Median :0   Median :  4912.33   Median : 2976.61  
 Mean   :0.002342   Mean   :0   Mean   :  8838.81   Mean   : 5195.42  
 3rd Qu.:0.000000   3rd Qu.:0   3rd Qu.:  9828.21   3rd Qu.: 6351.22  
 Max.   :1.000000   Max.   :0   Max.   :169679.74   Max.   :30226.35  
                                NA's   :8271                          
    WGTQ9Q16          WGTQ5Q16           WGTQ1Q8           SECU      
 Min.   :  103.4   Min.   :   12.99   Min.   :  119   Min.   :1.000  
 1st Qu.: 2873.7   1st Qu.: 1992.99   1st Qu.: 3224   1st Qu.:1.000  
 Median : 5810.9   Median : 4013.89   Median : 6624   Median :2.000  
 Mean   : 9844.9   Mean   : 6846.05   Mean   :10982   Mean   :1.995  
 3rd Qu.:12651.1   3rd Qu.: 8653.31   3rd Qu.:13109   3rd Qu.:3.000  
 Max.   :55339.2   Max.   :37359.05   Max.   :56552   Max.   :4.000  
 NA's   :9815      NA's   :5124       NA's   :10677                  
      SEST          cmintvw        cmlstyr        cmjan3yr   
 Min.   :101.0   Min.   :1278   Min.   :1266   Min.   :1237  
 1st Qu.:126.0   1st Qu.:1290   1st Qu.:1278   1st Qu.:1249  
 Median :140.0   Median :1303   Median :1291   Median :1261  
 Mean   :136.3   Mean   :1303   Mean   :1291   Mean   :1262  
 3rd Qu.:148.0   3rd Qu.:1315   3rd Qu.:1303   3rd Qu.:1273  
 Max.   :156.0   Max.   :1326   Max.   :1314   Max.   :1285  
                                                             
    cmjan5yr      questyear        Quarter           Phase      
 Min.   :1213   Min.   :1.000   Min.   : 1.000   Min.   :1.000  
 1st Qu.:1225   1st Qu.:1.000   1st Qu.: 4.000   1st Qu.:1.000  
 Median :1237   Median :3.000   Median : 9.000   Median :1.000  
 Mean   :1238   Mean   :2.538   Mean   : 8.674   Mean   :1.085  
 3rd Qu.:1249   3rd Qu.:4.000   3rd Qu.:13.000   3rd Qu.:1.000  
 Max.   :1261   Max.   :4.000   Max.   :16.000   Max.   :2.000  
                                                                
```

What if we only want to summarize the weight of the first baby?
========================================================

```r
summary(FemPreg$BIRTHWGT_OZ1)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  0.000   3.000   7.000   7.796  11.000  99.000    6363 
```

```r
hist(FemPreg$BIRTHWGT_OZ1)
```

![plot of chunk unnamed-chunk-3](Lab6SummerizingData_Answer-figure/unnamed-chunk-3-1.png) 

How about the pregnant length and the sex of the first baby?
========================================================

```r
summary(FemPreg$PRGLNGTH)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00   15.00   39.00   30.05   39.00   57.00 
```

```r
hist(FemPreg$PRGLNGTH)
```

![plot of chunk unnamed-chunk-4](Lab6SummerizingData_Answer-figure/unnamed-chunk-4-1.png) 

```r
summary(FemPreg$BABYSEX1)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  1.000   1.000   1.000   1.497   2.000   9.000    6206 
```

```r
hist(FemPreg$BABYSEX1)
```

![plot of chunk unnamed-chunk-4](Lab6SummerizingData_Answer-figure/unnamed-chunk-4-2.png) 

How to summarize the weight by the variables, say, sex and pregnant length?
========================================================

```r
WEIGHT_SUMMARY<-ddply(FemPreg, .(BABYSEX1, PRGLNGTH), summarize,
 mean = round(mean(BIRTHWGT_OZ1), 2),
 sd = round(sd(BIRTHWGT_OZ1), 2))
```


Show the plot of the mean of the weight with regard to different pregnant length?
========================================================
![plot of chunk unnamed-chunk-6](Lab6SummerizingData_Answer-figure/unnamed-chunk-6-1.png) 

Show the box plot of the mean of the weight with regard to different sex?
========================================================
![plot of chunk unnamed-chunk-7](Lab6SummerizingData_Answer-figure/unnamed-chunk-7-1.png) 

What do you find with the second plot?
========================================================
The weight of baby in sex 2 is greater than that of sex 1.


