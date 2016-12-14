
# versioning ----
version <- "v0"
run_hash <- paste(sample(letters, 10), collapse = "")

project_name   <- "{{cookiecutter.save_project_name}}"
folder_data    <- "{{cookiecutter.input_data_folder}}"
folder_output  <- sprintf("{{cookiecutter.output_data_folder}}/%s", version)
folder_results <- sprintf("05_results/%s", version)

in_folder         <- function(x) function(y) file.path(x, y)
in_data_folder    <- in_folder(folder_data)
in_output_folder  <- in_folder(folder_output)
in_results_folder <- in_folder(folder_results)

file_raw      <- in_data_folder("")
file_load     <- in_output_folder("load.rds")
file_prepare  <- in_output_folder("prepare.rds")
file_model    <- in_output_folder("model.rds")
