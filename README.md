
**## Linear Regression to Predict MPG**

![](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_1_lm.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

\- In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model.

According to our results, vehicle lenghth and ground clearance and (as well as intercept) are statistically provided non-random amounts of variance to the linear model. Because their p-value is less than 0.05.

**Is the slope of the linear model considered to be zero? Why or why not?**

` `- The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

` `- To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value. The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points.

R-squared:  0.7149 which means this linear model predict mpg of MechaCar prototypes effectively

**## Summary Statistics on Suspension Coils**


Total Summary:
![Total Summary](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

Lot Summary:
![Lot Summary](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)


In this analysis, the data is normally distributed because mean and median are identical. 

Also, A standard deviation (or σ) is a measure of how dispersed the data is in relation to the mean. Low standard deviation means data are clustered around the mean, and high standard deviation indicates data are more spread out. A standard deviation close to zero indicates that data points are close to the mean, whereas a high or low standard deviation indicates data points are respectively above or below the mean. In this scenario, the curve on top is more spread out and therefore has a higher standard deviation, while the curve below is more clustered around the mean and therefore has a lower standard deviation.

![bell_curve](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/bell_curve.png)

**Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

\- All Manufacturing Lots, the variance is 62.29 which is under the limit of variance 100 PSI, so the current data meet this design specification for all manufacturing lots

\- Individual Lots: Lot 1 and Lot 2 has variance 0.979 and 7.469 respectively. So both the lots meet the design specifications. But the variance for Lot 3 is (170.28) which is more than 100 PSI due to which that lot does not meet the design specifications.

**## T-Tests on Suspension Coils**

**SUMMARY**

*- t.test() function to determine if the PSI across all manufacturing lots*


![t.test_all_Manufacturing_Lots](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/t_test_all_lots.png)

There are a number of metrics produced from the t.test()function, but for now we will only concern ourselves with the calculated p-value. Assuming our significance level was the common 0.05 percent, our p-value (0.06028) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. We failed to reject the Null hypothesis.

*- t.test() to determine if the PSI across LOT1 manufacturing lot*


![t.test_Lot_1](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/t_test_Lot1.png)

Assuming our significance level was the common 0.05 percent, our p-value (1) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. We failed to reject the Null hypothesis.

*- t.test() to determine if the PSI across LOT2 manufacturing lot*


![t.test_Lot_2](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/t_test_Lot2.png)

Assuming our significance level was the common 0.05 percent, our p-value (0.6072) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. We failed to reject the Null hypothesis.

*- t.test() to determine if the PSI across LOT3 manufacturing lot*


![t.test_Lot_3](https://github.com/AditiOracle/MechaCar_Statistical_Analysis/blob/main/Resources/t_test_Lot3.png)

Assuming our significance level was the common 0.05 percent, our p-value (0.04168) is below our significance level. Therefore, our Null Hypothesis is not true, and we would state that the two means are statistically different. We can reject Null hypothesis

**## Study Design: MechaCar vs Competition**

**What metric or metrics are you going to test?**

\- City or highway fuel efficiency

\- Safety rating

\- Maintenance cost

\- Horse Power

\- Comfort & convenience

\- Fuel costs (premium, regular, diesel)

\- Cost of the vehicle

**What is the null hypothesis or alternative hypothesis?**

**Hypothesis:** 

If we use high quality fuel in the car then the efficiency of the car will increase and there will be low maintenance cost for the engine.

**Null Hypothesis**: If high quality fuel will not increase the efficiency of the car then it will not show any reduction in the maintenance of the engine.

**Alternate Hypothesis**: If we use high quality fuel in the car then it will show increase in the efficiency of the car and also show low maintenance cost for the engine.

**What statistical test would you use to test the hypothesis? And why?**

We will use one way-Anova test which is used to compare the means of a continuous numerical variable across a number of groups and in this case we are going to compare the Mechacar with 2+ competitors. (Fuel Efficiency of different cars based on Fuel Type used).

**What data is needed to run the statistical test?**

In this case, we will use the "mpg" and "fuel\_type" columns from our dataset:

- Fuel Efficiency (the "mpg" column) will be our dependent, measured variable
- Fuel Type (the "fuel\_type" column) will be our independent, categorical variable.

However, in the dataset, the fuel\_type is considered a numerical interval vector, not a categorical vector. Therefore, we must clean our data before we begin.

` `aov(mpg ~ fuel\_type,data=<dataset\_name>)

The statistical hypotheses of an ANOVA test will be:

H0 : The means of all groups are equal, or  µ1 = µ2 = … = µn.

Ha : At least one of the means is different from all other groups.


