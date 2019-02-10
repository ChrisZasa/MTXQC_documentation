

library(kableExtra)
library(dplyr)


#' Import csv-files for appendix
#' 
#' 
#' 
appendix_print <- function(path_def, top_n = NULL, ...) {
  
  temp1 = read.csv(path_def, header = TRUE)
  
  if (ncol(temp1) == 1) {
    temp1 = read.csv(path_def, header = TRUE, sep = ";")
  }
  
  if (!is.null(top_n)) {
    temp_return = temp1[1:top_n,]
    #str(temp1)
    
    # temp1 %>%
    # kable(escape = TRUE, booktabs = TRUE ) %>%
    #   kable_styling(c("striped", "condensed"), 
    #                 latex_options = "striped", 
    #                 full_width = TRUE)
  } else {
    # str(temp1)
    temp_return = temp1
  }
  
  return(temp_return)
}


options(kableExtra.html.bsTable = T)

