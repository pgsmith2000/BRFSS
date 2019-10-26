# read in analytic table
analytic <- read.csv(file="./data/analytic.csv", header=TRUE, sep=",")

# Look at distribution of categorical outcome asthma
AsthmaFreq <- table(analytic$ASTHMA4)
AsthmaFreq
write.csv(AsthmaFreq, file = "./data/AsthmaFreq.csv")

# what proportion of our dataset has ashtma?
PropAsthma <- sum(analytic$ASTHMA4)/(length(analytic$ASTHMA4))
PropAsthma

# Look at categorical outcome asthma by exposure, ALCGRP
AsthmaAlcFreq <- table(analytic$ASTHMA4, analytic$ALCGRP)
AsthmaAlcFreq
write.csv(AsthmaAlcFreq, file = "./data/AsthmaAlcFreq.csv")


