library(quantmod)

# List of Yahoo index symbols
syms <- c("^FTSE", "^GSPC", "^NDX", "^N225", "^MERV")

# Grab the data from Yahoo
rawInd <- lapply(syms, getSymbols, auto.assign=FALSE)

# Just the close
rawClose <- lapply(rawInd, '[', i=, j=4)

# Merge together to one time series
allClose <- do.call("merge", rawClose)

# Write out the data
write.zoo(allClose, file="data/allClose.csv")
