
#Set working directory 

setwd("~/Desktop")

#Uploading a CSV file to R 

read.csv("name of file.csv")

#Uploading another type of file in R

read.delim(....)

# If you want to set the header, write:

read.csv("name of file.csv", header=TRUE)

# Make an object

x<-read.csv("name of file.csv")

#View object

View(x)

#Read column names

names(x)

#Saving a Zoomed image: control click + save image (bc exporting doesn't always do justice to your graph)

