# read in analytic table
analytic <- read.csv(file="./data/analytic.csv", header=TRUE, sep=",")

# t-tests for Table 1
t.test(analytic$SLEPTIM2~analytic$ASTHMA4)
