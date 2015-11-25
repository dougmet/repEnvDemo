library(copula)

# Data Wrangle ------------------------------------------------------------

# Retrieve the processed daily data from csv
allClose <- read.zoo("data/allClose.csv",
                     format="%Y-%m-%d",header=TRUE)

# Get log daily returns
allLog <- diff(log(allClose))

# Sum to log weekly returns
allLogWk <- apply.weekly(allLog, colSums)


# Plot of the time series -------------------------------------------------
pdf("results/ts.pdf")
plot(allLogWk, main="Weekly Log Returns")
dev.off()


# Make a plot of empirical copulas ----------------------------------------
pdf("results/pairsCop.pdf")
pairs(pobs(allLogWk), main="Empirical Copulas")
dev.off()


# Correlation matrix ------------------------------------------------------
corMat <- cor(allLogWk, use="pairwise.complete.obs")

# Write out the correlation matrix
write.csv(corMat, "results/correlation.csv")
