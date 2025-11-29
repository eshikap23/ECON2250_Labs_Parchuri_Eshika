#set working directory 
setwd("C:/Users/admin/ECON2250_Labs_Parchuri_Eshika")

#read in data
library(readr)
countries <- read_csv("StatsforEconFinalData2.csv")

#Linear Regression of GHG emissions per capita against GINI index
ghg_reg <- lm(countries$GHG_Emission_Per_Capita ~ countries$GINI_Index)
summary(ghg_reg)

#Right-tailed t-test using correlation test 
#countries$GINI_Index <- gsub("\u00A0", "", countries$GINI_Index)
countries$GINI_Index <- as.numeric(countries$GINI_Index)


ghg_test <- cor.test(countries$GINI_Index, countries$GHG_Emission_Per_Capita,
                 alternative = "less",
                 method = "pearson")
ghg_test
