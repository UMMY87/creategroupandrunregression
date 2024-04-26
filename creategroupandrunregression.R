creategroupandrunregression <- function(file_path, Y_column, X_column, boundaries) {
  # Read CSV file
  pap_data <- read.csv(file_path, header = TRUE)
  Y <- pap_data[[Y_column]]
  X <- pap_data[[X_column]]
  
  # Create empty lists to store Y and X values for each group
  y_list <- list()
  x_list <- list()
  
  # Loop over each group
  for (i in 1:(length(boundaries) - 1)) {
    # Extract Y and X values for the current group
    y_subset <- Y[(boundaries[i] + 1):boundaries[i + 1]]
    x_subset <- X[(boundaries[i] + 1):boundaries[i + 1]]
    
    # Store the subsets in the lists
    y_list[[paste0("y", i, "i")]] <- y_subset
    x_list[[paste0("x", i, "i")]] <- x_subset
  }
  
  # Run Regression on each group
  regression_list <- list()
  summary_list <- list()
  for (i in 1:length(y_list)) {
    regression <- lm(y_list[[i]] ~ x_list[[i]])
    summary_reg <- summary(regression)
    regression_list[[paste0("Regression", i)]] <- regression
    summary_list[[paste0("Summary", i)]] <- summary_reg
  }
  
  # Print regression results
  for (i in 1:length(regression_list)) {
    cat("Regression", i, "\n")
    print(regression_list[[paste0("Regression", i)]])
    cat("Summary", i, "\n")
    print(summary_list[[paste0("Summary", i)]])
  }
}

# Specify the file path and column names
file_path <- "C:/Users/Umama/Downloads/Alam_data.csv"
Y_column <- "P83_Y"
X_column <- "P80_X"
boundaries <- c(0, 28, 45, 55, 88, 103, 120)

# Call the function
creategroupandrunregression(file_path, Y_column, X_column, boundaries)
