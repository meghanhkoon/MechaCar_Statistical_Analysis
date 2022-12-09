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

#1 t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 PSI
t.test(SuspensionCoil_table$PSI,mu=1500)

#2. Three more t.test() functions using subset() to determine if each PSI for each lot is statistically different from the pop of 1500

# use subset for each lot variable
lot1 <- subset(SuspensionCoil_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(SuspensionCoil_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(SuspensionCoil_table, Manufacturing_Lot=="Lot3")

# t-test for Lot 1
t.test(lot1$PSI, mu=1500)

# t-test for Lot 2
t.test(lot2$PSI, mu=1500)

# t-test for Lot 3
t.test(lot3$PSI, mu=1500)
