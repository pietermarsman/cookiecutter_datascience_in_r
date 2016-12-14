library(caret)

source("00_C.R")

# Load data ----
df <- readRDS(file_prepare)

# Options ----
target_col <- ""

# Model data ----
x <- df
y <- df[[target_col]]
x[[target_col]] <- NULL

# tuneGrid <- expand.grid(
#   
# )

# control <- rpart.control(
#   maxdepth = 1
# )

fit <- train(
  x = x,
  y = y,
  method = "rpart"
  # tuneGrid = tuneGrid
  # control = control
)

# Save data ----
saveRDS(fit, file_model)
