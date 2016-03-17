# import.R
# 
# Bastiaan Quast
# bquast@gmail.com

# libraries
library(googlesheets)
library(dplyr)


# download data
gsloc <- gs_url(x = 'https://docs.google.com/spreadsheets/d/1e1hy_-3Ndvz-AK69DvroTJgnGQnFEY34IYs_QOO2DiI/edit?usp=sharing')
uselang <- gs_read(ss = gsloc, range = 'A1:AF215')


# save data
save(uselang, file = 'data/uselang')
