df <- read.csv(file.choose(), header = TRUE)
df
attach(df)
logistic <- glm(rain ~ humidi, family = binomial , data=df)
summary(logistic)