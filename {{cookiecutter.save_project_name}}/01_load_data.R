source("00_C.R")

# Loading data ----
df <- read.csv(file_raw)

# Saving data ----
saveRDS(df, file_load)
