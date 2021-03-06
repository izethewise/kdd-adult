21.04.2017 15:30:13 Results of ResultWriter 'Write as Text' [1]: 
21.04.2017 15:30:13 Model Metrics Type: BinomialGLM
 Description: N/A
 model id: rm-h2o-model-logistic_regression-11273
 frame id: rm-h2o-frame-logistic_regression-325517
 MSE: 0.10209831
 R^2: 0.44153738
 AUC: 0.9068419
 logloss: 0.3189243
 CM: Confusion Matrix (vertical: actual; across: predicted):
        <=50K   >50K   Error              Rate
 <=50K  20777   3943  0.1595  = 3,943 / 24,720
  >50K   1601   6240  0.2042  =  1,601 / 7,841
Totals  22378  10183  0.1703  = 5,544 / 32,561
Gains/Lift Table (Avg response rate: 24.08 %):
  Group  Cumulative Data Fraction  Lower Threshold      Lift  Cumulative Lift  Response Rate  Cumulative Response Rate  Capture Rate  Cumulative Capture Rate        Gain  Cumulative Gain
      1                0.01001198         0.997514  4.114444         4.114444       0.990798                  0.990798      0.041194                 0.041194  311.444445       311.444445
      2                0.02002396         0.979029  4.088968         4.101706       0.984663                  0.987730      0.040939                 0.082132  308.896801       310.170623
      3                0.03000522         0.942226  3.973775         4.059150       0.956923                  0.977482      0.039663                 0.121796  297.377532       305.914989
      4                0.04001720         0.904450  3.757774         3.983748       0.904908                  0.959325      0.037623                 0.159418  275.777434       298.374818
      5                0.05002918         0.864731  3.579439         3.902837       0.861963                  0.939840      0.035837                 0.195256  257.943929       290.283676
      6                0.10002764         0.724658  3.257338         3.580186       0.784398                  0.862143      0.162862                 0.358118  225.733764       258.018629
      7                0.15002610         0.605305  2.696167         3.285574       0.649263                  0.791198      0.134804                 0.492922  169.616749       228.557368
      8                0.20002457         0.495326  2.303348         3.040055       0.554668                  0.732074      0.115164                 0.608086  130.334838       204.005506
      9                0.30002150         0.317348  1.680960         2.587070       0.404791                  0.622991      0.168091                 0.776177   68.095967       158.706964
     10                0.40011056         0.195675  1.120033         2.220085       0.269715                  0.534618      0.112103                 0.888280   12.003294       122.008525
     11                0.50001536         0.102903  0.639558         1.904290       0.154012                  0.458571      0.063895                 0.952174  -36.044199        90.429045
     12                0.60001228         0.049082  0.292064         1.635600       0.070332                  0.393868      0.029205                 0.981380  -70.793645        63.559972
     13                0.70000921         0.023794  0.113509         1.418168       0.027334                  0.341508      0.011351                 0.992731  -88.649058        41.816779
     14                0.80009828         0.010183  0.049694         1.246977       0.011967                  0.300284      0.004974                 0.997704  -95.030571        24.697728
     15                0.90000307         0.003561  0.019148         1.110682       0.004611                  0.267463      0.001913                 0.999617  -98.085156        11.068221
     16                1.00000000         0.000000  0.003826         1.000000       0.000921                  0.240810      0.000383                 1.000000  -99.617384         0.000000
 null DOF: 32560.0
 residual DOF: 32479.0
 null deviance: 35948.08
 residual deviance: 20768.988
GLM Model (summary):
   Family  Link Regularization Number of Predictors Total Number of Active Predictors Number of Iterations                          Training Frame
 binomial logit           None                         81                          81                    8 rm-h2o-frame-logistic_regression-325517
Scoring History:
           timestamp   duration iteration negative_log_likelihood objective
 2017-04-21 15:30:13  0.000 sec         0             11963.93139   0.36743
 2017-04-21 15:30:13  0.031 sec         1             10773.93632   0.33088
 2017-04-21 15:30:13  0.047 sec         2             10434.18111   0.32045
 2017-04-21 15:30:13  0.078 sec         3             10387.11371   0.31900
 2017-04-21 15:30:13  0.094 sec         4             10384.64223   0.31893
 2017-04-21 15:30:13  0.110 sec         5             10384.51739   0.31893
 2017-04-21 15:30:13  0.141 sec         6             10384.50046   0.31892
 2017-04-21 15:30:13  0.156 sec         7             10384.49453   0.31892

H2O version: 3.8.2.6.RAPIDMINER.2
