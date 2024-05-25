home_market = read.csv(file.choose(), header=TRUE)
home_market
View(home_market)
View(home_market)
attach(home_market)
Q1_squareFeet <- quantile(SquareFeet, 0.25)
Q1_squareFeet
Q1_squareFeet <- quantile(SquareFeet, 0.75)
Q1_squareFeet <- quantile(SquareFeet, 0.25)
Q3_squareFeet <- quantile(SquareFeet, 0.75)
Q3_squareFeet
IQR_SquareFeet <- Q3_squareFeet - Q1_squareFeet
IQR_SquareFeet
lower_bound_SF <- Q1_squareFeet - 1.5*IQR_SquareFeet
lower_bound_SF
upper_bound_SF <- Q3_squareFeet + 1.5*IQR_SquareFeet
upper_bound_SF
outliers_SF <- SquareFeet[SquareFeet < lower_bound_SF | SquareFeet > upper_bound_SF]
outliers_SF
save.image("D:/KIET's Folder/CODE/UIT/Third_year/Semester 2/IS403_Data_analysis_in_business/Practice/Lab1/Lab1.RData")
Q1_Market <- quantile(MarketValue, 0.25)
Q1_Market
Q3_Market <- quantile(MarketValue, 0.75)
Q3_Market
IQR_Market <- Q3_Market - Q1_Market
IQR_Market
lower_bound_market <- Q1_Market - 1.5* IQR_Market
upper_bound_market <- Q3_Market + 1.5* IQR_Market
upper_bound_market
lower_bound_market
outliers_Market <- MarketValue[MarketValue < lower_bound_market | MarketValue > upper_bound_market]
outliers_Market
SF <- home_market(SquareFeet)
mean_SF <- mean(SquareFeet)
sd_SF <- sd(SquareFeet)
mean_SF
sd_SF
z_score <- scale(SquareFeet)
z_score
z_score_SF <- (SquareFeet - mean_SF) / sd_SF
z_score_SF
mean_SF <- mean(SquareFeet)
sd_SF <- sd(SquareFeet)
mean_SF
sd_SF
z_score_SF <- (SquareFeet - mean_SF) / sd_SF
z_score_SF
View(z_score)
View(z_score)
View(z_score)
View(z_score)
View(z_score)
outliers_SF_zscore <- z_score_SF[z_score_SF < -3 | z_score_SF > 3]
outliers_SF_zscore
outliers_SquareFeet <- SquareFeet[outliers_SF_zscore]
outliers_SquareFeet
outliers_SF_zscore <- which(z_score_SF < -3 | z_score_SF > 3)
outliers_SquareFeet <- SquareFeet[outliers_SF_zscore]
outliers_SquareFeet
outliers_SF_zscore
outliers_SF_zscore <- z_score_SF[z_score_SF < -3 | z_score_SF > 3]
outliers_SF_position <- which(z_score_SF < -3 | z_score_SF > 3)
outliers_SquareFeet <- SquareFeet[outliers_SF_position]
outliers_SF_zscore
outliers_SF_position
outliers_SquareFeet
save.image("D:/KIET's Folder/CODE/UIT/Third_year/Semester 2/IS403_Data_analysis_in_business/Practice/Lab1/Lab1.RData")
mean_MV <- mean(MarketValue)
sd_MV <- sd(MarketValue)
mean_MV
sd_MV
z_score_MV <- (MarketValue - mean_MV) / sd_MV
z_score_MV
outliers_MV_zscore <- z_score_MV[z_score_MV < -3 | z_score_MV > 3]
outliers_MV_position <- which(z_score_MV < -3 | z_score_MV > 3)
outliers_MarketValue <- MarketValue[outliers_MV_position]
outliers_MV_zscore
outliers_MV_position
outliers_MarketValue