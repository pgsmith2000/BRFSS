# read in analytic table
analytic <- read.csv(file="./data/analytic.csv", header=TRUE, sep=",")

# Start with Model 2 with the not significant covariates removed
Model3 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 +AGE5 + AGE6, data=analytic) 
summary(Model3) 

# add smoker
Model4 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
              SMOKER, data=analytic) 
summary(Model4) 

# smoker is significant
# add Hispanic
Model5 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
              SMOKER + HISPANIC, data=analytic)  
summary(Model5) 

# Hispanic significant
# add race vars
Model6 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
              SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE, data=analytic)
summary(Model6) 

# Race vars significant
# marital status
Model7 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
              SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
              NEVERMAR + FORMERMAR, data=analytic) 
summary(Model7)

# Formerly Married significant
# drop NEVERMAR; add Health
Model8 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
              SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
              FORMERMAR + FAIRHLTH + POORHLTH, data=analytic) 
summary(Model8)

# Gen Hlth significant
# health plan
Model9 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
              SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
              NEVERMAR + FORMERMAR + FAIRHLTH + POORHLTH + NOPLAN, data=analytic) 
summary(Model9)

# take out NOPLAN
# try education
Model10 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               NEVERMAR + FORMERMAR + FAIRHLTH + POORHLTH + 
               LOWED + SOMECOLL, data=analytic) 
summary(Model10)

#take out NEVERMAR
Model11 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               FORMERMAR + FAIRHLTH + POORHLTH + 
               LOWED + SOMECOLL, data=analytic) 
summary(Model11)

#add income
Model12 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC2 + INC3 + INC4 + INC5 + INC6 + INC7, data=analytic) 
summary(Model12)

#add income
Model13 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC5, data=analytic) 
summary(Model13)

#add BMI
Model14 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE, data=analytic) 
summary(Model14)

# add exercise
Model15 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic) 
summary(Model15)

# take out LOWED
Model16 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + 
               FORMERMAR + FAIRHLTH + POORHLTH + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)  
summary(Model16)

# add MALE back
Model17 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)   
summary(Model17)

# add NEVERMAR back
Model18 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               NEVERMAR + FORMERMAR + FAIRHLTH + POORHLTH + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)  
summary(Model18)

# remove NEVERMAR and add back NOPLAN
Model19 = lm(SLEPTIM2 ~ DRKWEEKLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + NOPLAN + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model19)

# take out NOPLAN; try to add DRKMONTHLY back
Model20 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model20)

# add back LOWED
Model21 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model21)

# add back INC2
Model22 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC2 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model22)


### drop INC2; try INC3
Model23 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC3 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model23)

### drop INC3; add INC4
Model24 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC4 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model24)

### drop INC4; add INC6
Model25 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC5 + INC6 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model25)

# drop INC6
Model26 = lm(SLEPTIM2 ~ DRKWEEKLY + DRKMONTHLY + AGE2 + AGE3 + AGE5 + AGE6 + 
               SMOKER + HISPANIC + BLACK + ASIAN + OTHRACE + MALE +
               FORMERMAR + FAIRHLTH + POORHLTH + LOWED + SOMECOLL + 
               INC1 + INC5 + OVWT + OBESE + NOEXER, data=analytic)
summary(Model26)

FinalLinearRegressionModel = Model26
summary(FinalLinearRegressionModel)

# output as CSV
library (devtools)
library (broom)

Tidy_FinalModel <- tidy(FinalLinearRegressionModel)
write.csv(Tidy_FinalModel, file = "./data/models/FinalLinearRegressionModel.csv")

# coefficient plot
library(arm)
coefplot(FinalLinearRegressionModel)

# Final model diagnostics
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(FinalLinearRegressionModel, 
	main = "Final Linear Regression Model")

# Model fit diagnostics
library(gvlma)
gvmodel <- gvlma(FinalLinearRegressionModel) 
summary(gvmodel)


# model2 coefficient plot
coefplot(Model2)

# Model2 diagnostics
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(Model2, main = "Regression Model2")

# Model fit for Model2
gvmodel <- gvlma(Model2) 
summary(gvmodel)





