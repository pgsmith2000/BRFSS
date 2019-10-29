# read in analytic table
analytic <- read.csv(file="./data/analytic.csv", header=TRUE, sep=",")

# read in analytic table
# Model 3 is everything significant in Model2
LogModel3 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE, data=analytic, family = "binomial") 
summary(LogModel3)

# add smoker
LogModel4 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER, data=analytic, family = "binomial") 
summary(LogModel4)

# Keep smoker
# add Hispanic
LogModel5 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC, data=analytic, family = "binomial") 
summary(LogModel5)

# add races
LogModel6 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
	+ BLACK + ASIAN + OTHRACE, data=analytic, family = "binomial") 
summary(LogModel6)

# Remove ASIAN
# add marital
LogModel7 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                 + BLACK + OTHRACE + NEVERMAR + FORMERMAR, 
                 data=analytic, family = "binomial") 
summary(LogModel7)

# keep marital
# add generalhealth

LogModel8 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                 + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                 + FAIRHLTH + POORHLTH, 
                 data=analytic, family = "binomial") 
summary(LogModel8)

# add health plan
LogModel9 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                 + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                 + FAIRHLTH + POORHLTH + NOPLAN, 
                 data=analytic, family = "binomial") 
summary(LogModel9)

# take out health plan
# add education
LogModel10 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                 + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                 + FAIRHLTH + POORHLTH + LOWED + SOMECOLL, 
                 data=analytic, family = "binomial") 
summary(LogModel10)

# take out SOMECOLL
# add income
LogModel11 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC1 + INC2 
                  + INC3 + INC4 + INC5 + INC6 + INC7, 
                  data=analytic, family = "binomial") 
summary(LogModel11)

#take out income variables except INC3
LogModel12 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3, 
                  data=analytic, family = "binomial") 
summary(LogModel12)

# add obesity
LogModel14 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE, data=analytic, family = "binomial") 
summary(LogModel14)

# add exercise
LogModel15 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + NOEXER, data=analytic, family = "binomial") 
summary(LogModel15)

# remove exercise and add back DRKMONTHLY
LogModel16 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + DRKMONTHLY, data=analytic, family = "binomial") 
summary(LogModel16)

# MODEL15 is CANDIDATE FINAL MODEL

# take out DRKMONTHLY and try to add back ASIAN
LogModel17 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + ASIAN, data=analytic, family = "binomial") 
summary(LogModel17)

# take out ASIAN
# add back SOMECOLL
LogModel18 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + SOMECOLL, data=analytic, family = "binomial") 
summary(LogModel18)

# remove SOMECOLL
# add back INC1
LogModel18 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1, data=analytic, family = "binomial") 
summary(LogModel18)

# Add back INC2
LogModel19 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + INC2, data=analytic, family = "binomial") 
summary(LogModel19)

# remove INC2
# add back INC4
LogModel19 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + INC4, data=analytic, family = "binomial") 
summary(LogModel19)

# remove INC4
# add back INC5
LogModel20 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + INC5, data=analytic, family = "binomial") 
summary(LogModel20)

# remove INC5
# add back INC6
LogModel21 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + INC6, data=analytic, family = "binomial") 
summary(LogModel21)

# remove INC6
# add back INC7
LogModel22 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + INC7, data=analytic, family = "binomial") 
summary(LogModel22)

# add back INC7
# add back NOPLAN
LogModel23 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + NOPLAN, data=analytic, family = "binomial") 
summary(LogModel23)

# remove NOPLAN
# add back OVWT
LogModel24 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + OVWT, data=analytic, family = "binomial") 
summary(LogModel24)

# remove OVWT
# add back AGE2
LogModel25 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + AGE2, data=analytic, family = "binomial") 
summary(LogModel25)

# remove AGE2
# add back AGE3
LogModel26 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + AGE3, data=analytic, family = "binomial") 
summary(LogModel26)

# remove AGE3
# add back AGE4
LogModel27 <- glm(ASTHMA4 ~ DRKWEEKLY + MALE + SMOKER + HISPANIC 
                  + BLACK + OTHRACE + NEVERMAR + FORMERMAR 
                  + FAIRHLTH + POORHLTH + LOWED + INC3 + UNDWT 
                  + OBESE + INC1 + AGE4, data=analytic, family = "binomial") 
summary(LogModel27)

# FINAL MODEL is LogModel27

# FINAL MODEL
# arrange covariates in order of table 1
FinalLogisticRegressionModel <- glm(ASTHMA4 ~ DRKWEEKLY + DRKMONTHLY + MALE + SMOKER 
                  + HISPANIC + BLACK + OTHRACE + NEVERMAR + AGE4 
                  + FORMERMAR + FAIRHLTH + POORHLTH + LOWED + INC3 
                  + UNDWT + OBESE + INC1, data=analytic, family = "binomial") 
summary(FinalLogisticRegressionModel)

# write out CSV of final model
library (devtools)
library (broom)

Tidy_LogModel_a <- tidy(FinalLogisticRegressionModel)
Tidy_LogModel3 <- subset(Tidy_LogModel_a, term != "(Intercept)")

# Add calculations
Tidy_LogModel3$OR <- exp(Tidy_LogModel3$estimate)
Tidy_LogModel3$LL <- exp(Tidy_LogModel3$estimate - (1.96 * Tidy_LogModel3$std.error))
Tidy_LogModel3$UL <- exp(Tidy_LogModel3$estimate + (1.96 * Tidy_LogModel3$std.error))

write.csv(Tidy_LogModel3, file = "./data/models/LogisticRegressionModel3.csv")

# visualize to help interpretation
library(ggplot2)

ggplot(Tidy_LogModel3, 
	aes(x = term, y = OR, ymin = LL, ymax = UL)) + 
	geom_pointrange(aes(col = factor(term)), 
	position=position_dodge(width=0.30)) + 
 	ylab("Odds ratio & 95% CI") + 
	geom_hline(aes(yintercept = 1)) + 
	scale_color_discrete(name = "Term") + 
	xlab("") + 
	theme(axis.text.x = element_text(angle = 90, hjust = 1))


