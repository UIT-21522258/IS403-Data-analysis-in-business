library(MASS)
drink <- read.csv(file.choose(), header = TRUE)
drink
attach(drink)
tb = table(Gender, Brand.Preference)
tb
chisq.test(tb)