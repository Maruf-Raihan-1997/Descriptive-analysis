# Descriptive statistics using psych package

#install.packages("psych")
library(psych)

data()
AirPassengers
BOD

#Using the New York airport flight data

#install.packages("nycflights13")
attach(nycflights13::flights)

#lets look at the first 6 records using the head function

head(nycflights13::flights)

summary(distance)

describe(distance)

demo = cbind(arr_delay, dep_delay, distance)

describe(demo)


#introducing colnames() function

colnames(demo)= c('Arrival delay','Departure Delay', 'Distance Travelled')

describe(demo)

#hist() function

dep_delay

#we can see a lot of values for departure delay

hist(dep_delay)

# grouping statistics


head(nycflights13::flights)

summary(carrier)

carrier_fact= factor(carrier)
summary(carrier_fact)

describeBy(distance, group = carrier)


#two levels of aggrgation

aggregate(distance, by = list(carrier, month) , FUN = mean, na.rm = TRUE)

aggregate(distance, by = list(carrier, month) , FUN = sd, na.rm = TRUE)