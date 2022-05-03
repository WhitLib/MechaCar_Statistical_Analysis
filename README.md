# MechaCar_Statistical_Analysis
Statistics and R

## Overview

## 2 Linear Regression to Predict MPG

The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Using R, a linear model was created that predicts the mpg of MechaCar prototypes using variables from the `MechaCar_mpg.csv` dataset.

### 2.1 Results 

**MPG = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.068)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD**

<img width="508" alt="Screen Shot 2022-05-02 at 7 57 39 PM" src="https://user-images.githubusercontent.com/95978097/166399719-224bf87b-c5ee-4a3b-9315-22bb9df6677c.png">

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Based on the results, variables **vehicle_length** and **ground_clearance** with coefficients equal to **6.267** and **3.546** are likely to produce a non-random amount of variance to the mpg values in the `MechaCar_mpg.csv` dataset. Therefore, a vehicle's length and its ground clearance have an apparent effect on a MechaCar prototype's mpg. 

**Is the slope of the linear model considered to be zero? Why or why not?**

Given the linear model's p-value is equal to **5.35e-11**, this value greatly differs from the 0.05% assumed significance level. Therefore, the null hypothesis can be **rejected**, indicating that the slope for this linear model is **not** equal to zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The R-squared value derived from the linear model was equal to **0.7149**. Therefore, about **71.5%** of mpg predictions can be found using this model, a relatively effective way to measure miles per gallon for MechaCar prototypes. 

## 3 Summary Statistics on Suspension Coils

The MechaCar `Suspension_Coil.csv` dataset contained the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process was consistent across production lots. Using R, a summary statistics table was creared to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Results

total_summary

<img width="332" alt="Screen Shot 2022-05-02 at 8 26 08 PM" src="https://user-images.githubusercontent.com/95978097/166401220-833fb098-54c5-48ef-8f20-d23c60c91a80.png">

manufacturingLot_summary

<img width="488" alt="Screen Shot 2022-05-02 at 8 27 05 PM" src="https://user-images.githubusercontent.com/95978097/166401271-077e66e2-d99e-460d-b9e2-acfe70c58aa7.png">

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

Based on the entire population of the production lot, suspension coil variance was equal to **62.29 PSI**, which remains within the 100 PSI requirement.

When looking at each lot individually, Lot 1 and Lot 2 both remain within the 100 PSI variance requirement - equal to **0.98** and **7.47** respectively. However, Lot 3 is disproportionate in performance and consistency, with a variance equal to **170.29**. 

## 4 T-Tests on Suspension Coils

Using R, t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### 4.1  Results

All Manufacturing Lots
<img width="691" alt="Screen Shot 2022-05-02 at 9 02 36 PM" src="https://user-images.githubusercontent.com/95978097/166403205-fd471588-8645-432f-a893-778f67975bf0.png">

Individual Manufacturing Lots
<img width="451" alt="Screen Shot 2022-05-02 at 9 01 40 PM" src="https://user-images.githubusercontent.com/95978097/166403147-7d33c1c4-728f-49a3-ac13-e25a99962b97.png">

The true mean of the sample was equal to **1498.78**, shown in the _All Manufacturing Lots_ R script. Based on the calculated p-value of **0.06**, the assumed significance level of 0.05% is surpassed _and_ there was NOT enough evidence to support the rejection of  the null hypothesis. Overall, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

For each individual lot, Lot 1's sample mimicked the mean for the true sample mean of 1500. With a p-value equal 1, the null hypothesis could not be rejected. Lot 2 nearly derived the same sample mean as Lot 1 equal to **1500.02**. Lot 2's p-value was equal to **0.61** and therefore, the null hypothesis cannot be rejected and the sample mean and the population mean of 1500 were statistically similar.

Lot 3, conversely, portrayed a different scenario. The sammple mean was equal to  **1496.14** and the p-Value was **0.04**; a value less than the assumed 0.05% significance level. Based on this, the null hypothesis was rejected indicating that the sample mean and the presumed population mean were ultimately not statistically different.

