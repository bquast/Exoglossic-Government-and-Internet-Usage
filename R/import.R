# import.R
# 
# Bastiaan Quast
# bquast@gmail.com

# libraries
library(googlesheets)
library(dplyr)


# download data
gsloc <- gs_url(x = 'https://docs.google.com/spreadsheets/d/1DWUP8PGtayRN5FwtVPlVa0HSsaMIx_3ETHXGObcB8qo/edit?usp=sharing')
reggrow <- gs_read(ss = gsloc, range = 'A1:J9')

gsloc <- gs_url(x = 'https://docs.google.com/spreadsheets/d/1e1hy_-3Ndvz-AK69DvroTJgnGQnFEY34IYs_QOO2DiI/edit?usp=sharing')
uselang <- gs_read(ss = gsloc, range = 'A1:AF215')


# subset relevant data
uselang <- uselang[, c(1, 26:32)]

# save data
save(reggrow, file = 'data/reggrow.RData')
save(uselang, file = 'data/uselang.RData')
