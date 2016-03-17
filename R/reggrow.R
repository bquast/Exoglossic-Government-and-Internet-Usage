# reggrow.R
# 
# Bastiaan Quast
# bquast@gmail.com

# load libraries
library(ggplot2)
library(reshape2)
library(dplyr)

# load data
load(file = 'data/reggrow.RData')


# reshape data
names(reggrow)[1] <- 'region'
reggrow <- gather(reggrow, key = 'region')
names(reggrow)[2] <- 'year'
reggrow$year <- sub('X', '', reggrow$year)
reggrow$value <- sub('%', '', reggrow$value)
reggrow$value <- as.numeric(reggrow$value) /100


# plot
ggplot(data = reggrow, aes(x = year, y = value, group=region, colour=region)) + geom_line()
