#' make_here saves typing time to parse a relative or absolute file path into here function arguments 
#'
#' @param filepath A relative or absolute file path
#' 
#' @return A specified here function 
#' @importFrom here here 
#' @export

make_here <- function(filepath){
  
  # Split the filepath 
  parsed_filepath <- strsplit(filepath, split = "[/]")
  
  # Extract the filename 
  filename <- test[[1]][length(test[[1]])]
  
  # Extract the directory name 
  dirname <- test[[1]][length(test[[1]]) - 1]
  
  here(dirname, filename)
  
}
