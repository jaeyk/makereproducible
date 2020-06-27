#' make_here saves typing time to turn a relative or absolute file path into tnto the arguments in the here function 
#'
#' @param filepath A relative or absolute file path
#'
#' @return A specified here function
#' @importFrom here here
#' @export

make_here <- function(filepath){

  # Split the filepath
  listed <- strsplit(x = filepath, 
                          split = "[/]")

  # Extract the filename
  filename <- listed[[1]][length(listed[[1]])]
  
  paste("File name:", filename)
  
  # Extract the directory name
  dirname <- listed[[1]][length(listed[[1]]) - 1]

  paste("Subdirectory name:", dirname)
  
  # Output
  here(dirname, filename)

}
