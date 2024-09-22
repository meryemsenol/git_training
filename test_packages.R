# Define the packages you want to install
packages <- c("ggplot2", "dplyr", "tidyr", "data.table", "shiny")

# Function to check if a package is installed
install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
    library(pkg, character.only = TRUE)
  }
}

# Apply the function to each package in the list
lapply(packages, install_if_missing)

