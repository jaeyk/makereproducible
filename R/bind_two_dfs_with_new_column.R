#' Bind two dataframes with a new column
#'
#' @param df1 Data.frame 1
#' @param df2 Data.frame 2
#' @param new_column A new column name.
#' @param value1 A value that indicates data.frame1 in the new column.
#' @param value2 A value that indicates data.frame2 in the new column.
#' @return A combined dataframe which has a new column.
#'
#' @export

bind_two_dfs_with_new_column <- function(df1, df2, new_column, value1, value2){

  # Assuming x and y share the identical columns

  bind_rows(
    mutate(df1, new_column = value1),
    mutate(df2, new_column = value2))
}
