# load foreign package
library(foreign)

# read in data to R
BRFSS_a <- read.xport("./data/LLCP2018.xpt")
colnames(BRFSS_a)
