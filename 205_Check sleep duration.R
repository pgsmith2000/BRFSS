library(ggplot2)
library(gridExtra)

# read in analytic table
analytic <- read.csv(file="./data/analytic.csv", header=TRUE, sep=",")

# Look at distribution of sleep duration 

# summary statistics
summary(analytic$SLEPTIM2)

# Basic histogram
hist1 <- ggplot(analytic, aes(x=SLEPTIM2))
hist1 <- hist1 + geom_histogram(binwidth=1, color="black", fill="lightblue") +
  labs(title="Histogram of SLEPTIM2", x="Reported Hours Slept", y="Count") + 
  geom_vline(aes(xintercept=mean(SLEPTIM2)), color="blue", 
             linetype="dashed", size=1) + theme_test()

# Boxplots of groups next to each other
analytic_b <- analytic
analytic_b$ALCGRP <- as.factor(analytic_b$ALCGRP)
boxplot1 <- ggplot(analytic_b, aes(x=ALCGRP, y=SLEPTIM2))
boxplot1 <- boxplot1 + geom_boxplot(aes(color=ALCGRP)) +
  labs(title="Boxplot of SLEPTIM2 by ALCGRP", 
       y="Reported Hours Slept", x="ALCGRP") + theme_test()

# Now print them side by side
grid.arrange(hist1, boxplot1, ncol=2)




