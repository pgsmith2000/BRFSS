# read in analytic table
analytic <- read.csv(file="./data/analytic.csv", header=TRUE, sep=",")

# subset dataset with only asthma people
asthmaonly <- subset(analytic, ASTHMA4 == 1)
table(asthmaonly$ASTHMA4)
nrow(asthmaonly)

AsthmaFreq <- table(asthmaonly$ASTHMA4)
AsthmaFreq
write.csv(AsthmaFreq, file = "./data/asthma/Asthma.csv")

# USING MACROS

# install package gtools
# then call up library
library(gtools)

# use defmacro to define the macro
FreqTbl <-defmacro(OutputTable, InputVar, CSVTable, 
expr={
OutputTable <- table(InputVar);
write.csv(OutputTable, file = paste0("./data/asthma/", CSVTable, ".csv"))
})

FreqTbl (AlcGrpFreq, asthmaonly$ALCGRP, "Alc")
FreqTbl (AgeGrpFreq, asthmaonly$X_AGE_G, "Age")
FreqTbl (SexFreq, asthmaonly$SEX, "Sex")
FreqTbl (HispFreq, asthmaonly$X_HISPANC, "Hisp")
FreqTbl (RaceFreq, asthmaonly$RACEGRP, "Race")
FreqTbl (MaritalFreq, asthmaonly$MARGRP, "Mar")
FreqTbl (EdFreq, asthmaonly$EDGROUP, "Ed")
FreqTbl (IncFreq, asthmaonly$INCOME3, "Inc")
FreqTbl (BMIFreq, asthmaonly$BMICAT, "BMI")
FreqTbl (SmokeFreq, asthmaonly$SMOKGRP, "Smok")
FreqTbl (ExerFreq, asthmaonly$EXERANY3, "Exer")
FreqTbl (HlthPlanFreq, asthmaonly$HLTHPLN2, "HlthPln")
FreqTbl (GenHlthFreq, asthmaonly$GENHLTH2, "GenHlth")
