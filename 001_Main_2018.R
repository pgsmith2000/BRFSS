# Data preperation and documentation
source("100_read in BRFSS XPT_2018.R", echo = TRUE)
source("105_Keep vars_2018.R", echo = TRUE)
source("110_Apply exclusions.R", echo = TRUE)
source("115_Make alcohol variables.R", echo = TRUE)
source("120_Make outcome variables.R", echo = TRUE)
source("125_Make categorical variables_2018.R", echo = TRUE)
source("190_Write out analytic.R", echo = TRUE)

# Check main variables
source("200_Check asthma.R", echo = TRUE)
source("205_Check sleep duration.R", echo = TRUE)

# Produce data to fill in blank Table 1
source("210_Table 1 overall frequencies.R", echo = TRUE)
source("215_Table 1 Asthma frequencies.R", echo = TRUE)
source("220_Table 1 No asthma frequencies.R", echo = TRUE)
source("225_Table 1 means and sds.R", echo = TRUE)

# Significance Testing for All Table 1 Variables
source("230_Table 1 chisq.R", echo = TRUE)
source("235_Table 1 ANOVAS_2018.R", echo = TRUE)
source("240_Table 1 ttests_2018.R", echo = TRUE)
