library(dplyr)

#Deliverable 1: Linear Regression to Predict MPG

MechaCar<-read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)
head(MechaCar)

reg<-lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #linear model that predicts the mpg of MechaCar prototypes using several variables

summary(reg) #determine the p-value and the r-squared value for the linear regression model

#Deliverable 2: Create Visualizations for the Trip Analysis

Suspension_Coil<-read.csv("Suspension_Coil.csv",check.names=F,stringsAsFactors = F)
head(Suspension_Coil)

total_summary<-Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by (Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups="keep")

#Deliverable 3: T-Tests on Suspension Coils

t.test(Suspension_Coil$PSI,mu=1500)

Lot_1<-subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
t.test(Lot_1$PSI,mu=1500)

Lot_2<-subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
t.test(Lot_2$PSI,mu=1500)

Lot_3<-subset(Suspension_Coil, Manufacturing_Lot=="Lot3")
t.test(Lot_3$PSI,mu=1500)