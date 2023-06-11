# Homework 4
############

# Complete the 2300 expansion survey: https://orban.wufoo.com/forms/q1npgx7x1d69b27/


# Find the URL for the PSYC 2300 data from the 2023 summer : data folder

https://raw.githubusercontent.com/orban-classroom/Statistics-with-R/master/2023-summer/Data/2300data.csv
# Use the hrs.screentime.weekly variable for this homework. 


# Create a variable/object containing the imported data
psych.data <-read.csv("https://raw.githubusercontent.com/orban-classroom/Statistics-with-R/master/2023-summer/Data/2300data.csv")

# Create a variable filtering for all rows containing 201910 (2019 Spring) semester
Twenty_nineteen_spring <- psych.data("Semester"==201910,"hrs.screentime.weekly")
Twenty_nineteen_spring <- psych.data.class(Semester==201910,"hrs.screentime.weekly")
Twenty_nineteen_spring <-psych.data[psych.data$Semester==201910,"hrs.screentime.weekly"]
Twenty_nineteen_spring.class
unique( psych.data$Semester )
# Create a variable filtering for all rows containing 202310 (2023 Spring) semester

Twenty_three_spring <-psych.data[psych.data$Semester==202310,"hrs.screentime.weekly"]
# Compute the mean, median and mode for each 201910 and 202310 data separately, below, using the manual method
#201910
sum_of_score2019 <-sum (Twenty_nineteen_spring)
sample_size2019 <-length(Twenty_nineteen_spring)
mean_2019 <-sum_of_score2019/sample_size2019
N <-length(Twenty_nineteen_spring)


median_value <- median(Twenty_nineteen_spring)
print(median_value)

table_2019 <-table(Twenty_nineteen_spring)
mode2019 <-names(table(Twenty_nineteen_spring))[table(Twenty_nineteen_spring)==max(table(Twenty_nineteen_spring))]
print(mode2019)
#202310
sum_of_score2023 <-sum(Twenty_three_spring)
sample_size2023 <-length(Twenty_three_spring)
N <-length(Twenty_three_spring)
mean_2023 <-sum_of_score2023/sample_size2023

median_value <-median(Twenty_three_spring)
print(median_value)

table_2023 <-table(Twenty_three_spring)
mode2023 <-names(table(Twenty_three_spring))[table(Twenty_three_spring)==max(table(Twenty_three_spring))]
print(mode2023)
# Comment on your observations of the central tendency measures. Comments both in terms of differences between mean, median and mode numbers and what they reveal about the data, and differences between the two semesters. 
I find that i should create a vector for psych.data in order to properly calculate central tendency measures. Every time I tried to find all measures,
it gives similar results. Median and mean values are same and there is a only small difference in mean from both.
# Both the means have only difference of 1 from each other and this shows that the students have less screentime in 2019 as compared to 2023.

# Create a histogram of each semester's data. Make it look fancy: include labels, colour it nicely, dress it up.
hist(Twenty_nineteen_spring, main = "Twenty_nineteen_spring", xlab ="values", ylab ="frequency", col ="blue", border ="green", breaks =10)
hist(Twenty_three_spring, main = "Twenty_three_spring", xlab ="values", ylab ="frequency", col="orange", border ="red", breaks =10)
# Comment on the shape of the histogram. Use expressions such as skew and kurtosis (based on your visual inspection). 
# 
the histogram for the 2019 dataset has a positive skew, on the other hand 2023 dataset has like zero skew, meaning the data
is a lot more centred around 30.

install.packages("moments")
installed.packages("psych")

library(moments)
library(psych)


skew1 <- skewness(Twenty_nineteen_spring)
skew2 <- skewness(Twenty_three_spring)

print(skew1)
print(skew2)
##The histogram for the 2019 data set has a significantly positive kurtosis, meaning that it is leptokurtic.
## The histogram for the 2023 data set has a significantly negative kurtosis, meaning that it is platykurtic.
kurt <- kurtosis(Twenty_nineteen_spring)
kurt <- kurtosis(Twenty_three_spring)


# Create two boxplots side by side containing each semester's data. Make it look fancy: include labels, colour it nicely, dress it up.
boxplot(Twenty_nineteen_spring, Twenty_three_spring, names = c("Twenty_nineteen_spring", "Twenty_three_spring"), col =c("red", "blue"), main = "side by side Boxplots", ylab ="value")

# Comment on the appearance and differences between the boxplots. What do these box plots reveal about the data?

#The first difference i noticed between the boxplots is that the median for semester 2023 is more centred than the median of 2019.
#The IQR is also a lot more even for 2023 than 2019, which makes sense that when reflecting back on the skewness of each semester.
# Compute the variance and standard deviation of each semester's data. 

#variance
#2019
variance <- var(Twenty_nineteen_spring)
standard_deviation2019<- sd(Twenty_nineteen_spring)

#2023
variance <- var(Twenty_three_spring)
standard_deviation2023 <- sd(Twenty_three_spring)
# Comment on the standard deviation values. 

# The standard deviation of 2019 is very high as compared to 2023 which means that the data in 2019 is more spread out or have more variability.