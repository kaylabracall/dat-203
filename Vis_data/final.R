# Kayla Bracall
### DAT 203 Final

# Pull in dataframes 

activity_df <- read.csv("exercise.csv", stringsAsFactors=FALSE)
head(activity_df)

exercise_tracker_df <- read.csv("visualizeyourself_data.csv", stringsAsFactors = FALSE)
head(exercise_tracker_df)

stress_and_hr <- read.csv("stress2.csv", stringsAsFactors=FALSE)
head(stress_and_hr)


library('ggplot2')
library('stringr')

# pull out resting heart rate 
rhr <- stress_and_hr$RHR

# calculate basic statistics about resting heart rate
mean(rhr) 
max(rhr)

# plot heart rate by number of occurrences 

ggplot(data = stress_and_hr, aes(x=RHR))+
  geom_histogram(color="black", fill="mediumorchid2")+
  ggtitle(" Resting Heart Rate")+
  ylab("Number of Occurences")+
  xlab("Heart Rate")

# pull out stress level into vector 
stress_level <- stress_and_hr$Stress.Level

#calculate average stress 
mean(stress_level)
max(stress_level)

# plot stress vs  rhr
ggplot(data = stress_and_hr, aes(x=RHR, y=Stress.Level))+
  geom_point()

# plot active minutes
ggplot(data = activity_df, aes(x = MinutesVeryActive))+
  geom_histogram()

