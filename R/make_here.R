#' make_here saves typing time to turn a relative or absolute file path into tnto the arguments in the here function 
#'
#' @param filepath A relative or absolute file path
#'
#' @return A specified here function
#' @importFrom here here
#' @export

make_here <- function(filepath){

  # Split the file path
  listed <- strsplit(x = filepath, 
                          split = "[/]")

  # Extract the file name
  filename <- listed[[1]][length(listed[[1]])]
  
  message(paste("File name:", filename))
  
  # Extract the subdirectory name
  dirname <- listed[[1]][length(listed[[1]]) - 1]

  message(paste("Subdirectory name:", dirname))
  
  # Output
  return(here(paste(dirname), paste(filename)))

}
