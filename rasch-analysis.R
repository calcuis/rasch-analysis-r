# Load the ltm package
library(ltm)

# Define the function for performing a Rasch analysis
perform_rasch_analysis <- function(data) {
  # Fit the Rasch model to the data
  rasch_model <- rasch(data)

  # Extract the item and person parameters
  item_parameters <- rasch_model$items
  person_parameters <- rasch_model$pers

  # Return the item and person parameters
  return(list(items=item_parameters, persons=person_parameters))
}
