library(rattle)
library(handypandy)

source("00_C.R")

# Read data ----
fit <- readRDS(file_model)
model <- fit$finalModel

# Visualize ----
fancyRpartPlot(model)
fig.save(png, in_results_folder("model.png"))
