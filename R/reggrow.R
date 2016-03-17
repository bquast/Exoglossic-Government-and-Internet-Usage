# reggrow.R
# 
# Bastiaan Quast
# bquast@gmail.com

# load libraries
library(ggplot2)


# load data
load(file = 'data/reggrow.RData')


# plot
ggplot(data = reggrow, aes(x = year, y = value, group=region, colour=region)) + geom_line()
