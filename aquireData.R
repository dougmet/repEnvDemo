library(quantmod)

# Grab these symbols from Yahoo
syms <- c("^FTSE", "^GSPC", "^GDAXI", "^NDX")

# Get the data
rawInd <- lapply(syms, getSymbols, auto.assign=FALSE)

# Just the close
rawClose <- lapply(rawInd, '[', i=, j=4)

# Merge together to one time series
allClose <- do.call("merge", rawClose)

write.zoo(allClose, file="data/allClose.csv")

