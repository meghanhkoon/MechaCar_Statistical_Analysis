## MECHACAR CHALLENGE

## Part 1: Linear Regression to Predict MPG 

# Import Library 
library(dplyr)

# Import and read csv
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

# Perform Linear Regression using the lm() function 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)

# Summary for p-value and r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table))



## Part 2: Create Visualizations for the Trip Analysis 

# Import and read csv
SuspensionCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F, stringsAsFactors = F)

# Find the summary statistics for the PSI column
total_summary <- SuspensionCoil_table %>% summarize(Mean=mean(PSI), 
                                                    Median=median(PSI), 
                                                    Variance=var(PSI), 
                                                    SD=sd(PSI))

# Find the lot summary by using group by and summarize
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                                                                                  Median=median(PSI), 
                                                                                  Variance=var(PSI), 
                                                                                  SD=sd(PSI))




## Part 3: T-Tests on Suspension Coils 



