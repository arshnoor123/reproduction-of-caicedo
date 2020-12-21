#### Preamble ####
# Purpose: Prepare data from https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ML1155 and create summary output of relevant OLS models.
# Author: Arshnoor Gill
# Date: December 22, 2020
# Contact: arshnoorgill@utoronto.ca
# Pre-requisites: 
# - Need to have downloaded the data from https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ML1155 and save the folder Inputs (with Data as the subfolder)
# - Don't forget to gitignore it!

#### Workspace setup ####
library(haven)
library(tidyverse)

# Read in the raw data.
literacy <- read_dta("./Inputs/Data/Tables/Literacy Argentina Brazil Paraguay.dta")
income <- read_dta("./Inputs/Data/Tables/Income Brazil Paraguay Spatial.dta")

# Create linear models
model <- lm(literacy ~ distmiss + country + coast + river + preci + alti, data = literacy)
model2 <- lm(lnincome ~ distmiss + country + coast + river + preci + alti, data = income)

# Create summary outpouts of the linear models and save them to outputs.
beta <- coef(summary(model))
write.csv(beta, "./Outputs/modelcoef.csv")

alpha <- coef(summary(model2))
write.csv(alpha, "./Outputs/model2coefs.csv")