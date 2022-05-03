# MechaCar_Statistical_Analysis
Statistics and R

## Overview

## 2 Linear Regression to Predict MPG

The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Using R, a linear model was created that predicts the mpg of MechaCar prototypes using variables from the `MechaCar_mpg.csv` dataset.

### 2.1 Results 

**MPG = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.068)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD**

<img width="508" alt="Screen Shot 2022-05-02 at 7 57 39 PM" src="https://user-images.githubusercontent.com/95978097/166399719-224bf87b-c5ee-4a3b-9315-22bb9df6677c.png">

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Based on the results, variables **vehicle_length** and **ground_clearance** with coefficients equal to **6.267** and **3.546** are likely to produce a non-random amount of variance to the mpg values in the `MechaCar_mpg.csv` dataset. Therefore, a vehicle's length and its ground clearance have an apparent effect on a MechaCar prototype's mpg. 

Is the slope of the linear model considered to be zero? Why or why not?

Given the linear model's p-value is equal to **5.35e-11**, this greatly differs from the 0.05% assumed significance level. Therefore, the null hypothesis can be **rejected**, indicating that the slope for this linear model is **not** equal to zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared value derived from the linear model was equal to **0.7149**. Therefore, about **71.5%** of mpg predictions can be found using this model, a relatively effective way to measure miles per gallon for MechaCar prototypes. 
