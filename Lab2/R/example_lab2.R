df<-read.csv(file.choose())
attach(df)
tb = table(gender, brand)
chisq.test(tb)