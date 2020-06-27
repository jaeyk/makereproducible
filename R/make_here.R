#' make_here saves typing time to parse a relative or absolute file path into here function arguments
#'
#' @param filepath A relative or absolute file path
#'
#' @return A specified here function
#' @importFrom here here
#' @export

make_here <- function(filepath){

  # Split the filepath
  parsed_path <- strsplit(filepath, split = "[/]")

  # Extract the filename
  filename <- parsed_path[[1]][length(parsed_path[[1]])]
  
  print("File name:", filename)
  
  # Extract the directory name
  dirname <- parsed_path[[1]][length(parsed_path[[1]]) - 1]

  print("Subdirectory name:", dirname)
  
  # Output
  here(dirname, filename)

}
