
# DELIVERABLE 1: 

# Import dplyr library
library(dplyr)

# Read in the MechaCar_mpg.csv file and create an R data frame
mechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_table)

# Using the summary() function, determine the p-value and the r-squared value for 
# the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_table))

# DELIVERABLE 2: 

# Import and read in the Suspension_Coil.csv file as a table
suspensionCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation 
# of the suspension coil’s PSI column
total_summary <- suspensionCoil_table %>% summarize(Mean = mean(PSI), 
                                                    Median = median(PSI), 
                                                    Variance = var(PSI), 
                                                    SD = sd(PSI), 
                                                    .groups = 'keep')

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
manufacturingLot_summary <- suspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), 
                                                                                               Median = median(PSI), 
                                                                                               Variance = var(PSI), 
                                                                                               SD = sd(PSI), 
                                                                                               .groups = 'keep') 

# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch
t.test((suspensionCoil_table$PSI),mu=1500)

# Write three more RScripts  using the t.test() function and its subset() argument to determine 
# if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
manufacturing_lot1 <- subset(suspensionCoil_table, Manufacturing_Lot=="Lot1")
manufacturing_lot2 <- subset(suspensionCoil_table, Manufacturing_Lot=="Lot2")
manufacturing_lot3 <- subset(suspensionCoil_table, Manufacturing_Lot=="Lot3")

t.test((manufacturing_lot1$PSI), mu=1500)
t.test((manufacturing_lot2$PSI), mu=1500)
t.test((manufacturing_lot3$PSI), mu=1500)