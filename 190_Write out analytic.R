# Write out analytic dataset
write.csv(BRFSS_i, file = "./data/analytic.csv")

# Note the number of columns (variables) and rows (records/cases)
dim(BRFSS_i)

# Show the variable names
colnames(BRFSS_i)