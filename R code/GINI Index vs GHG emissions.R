#set working directory 
setwd("C:/Users/admin/ECON2250_Labs_Parchuri_Eshika")

#read in data
library(readr)
countries <- read_csv("StatsforEconFinalData2.csv")

#Linear Regression of GHG emissions per capita against GINI index
ghg_reg <- lm(countries$GHG_Emission_Per_Capita ~ countries$GINI_Index)
summary(ghg_reg)

#scatter plot for linear regression
plot(countries$GINI_Index, countries$GHG_Emission_Per_Capita, col = "black",pch=21, bg = "lightblue",
     main = "Greenhouse Gas Emissions Per Capita vs. GINI index",
     xlab = "GINI Index", ylab = "Greenhouse Gas Emissions Per Capita")
#trendline for scatter plot
abline(ghg_reg, col = "red",lwd=2)

#Right-tailed t-test using correlation test 

countries$GINI_Index <- as.numeric(countries$GINI_Index) #made sure all values were numbers


ghg_test <- cor.test(countries$GINI_Index, countries$GHG_Emission_Per_Capita,
                 alternative = "greater",
                 method = "pearson")
ghg_test
