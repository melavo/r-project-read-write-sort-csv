# Read CSV into R
MyData <- read.csv(file="pm25_sample_data.csv", header=TRUE, sep=",")
sortdata <- MyData[order(MyData$date_time, decreasing=TRUE),]
print(sortdata, useSource = TRUE)

write.csv(sortdata, file = "MyData.csv",row.names=FALSE)