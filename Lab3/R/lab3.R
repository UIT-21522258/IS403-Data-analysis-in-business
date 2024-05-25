df <- read.csv(file.choose(), header = TRUE)
df
attach(df)
logistic <- glm(rain ~ wind + cloud, family = binomial , data=df)
summary(logistic)