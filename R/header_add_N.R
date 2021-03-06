
#' Add N=xx to header
#' 
#' Helper function used to add the population total (N) in the 
#' column header of \code{\link{rtable}} object.
#' 
#' @param x \code{rtable}
#' @param N vector with counts to be displayed in the header. The
#'   length must match the number of columns in \code{x}
#'   
#' @export
#' 
#' @examples 
#' 
#' tbl <- rtable(
#'  header = letters[1:3],
#'  rrow("X", 1, 2, 3),
#'  rrow("Y", 4, 5, 6)
#' )
#' tbl
#' header_add_N(tbl, 1:3)
#' 
#' # multiline header
#' tbl <- rtable(
#'   header = rheader(rrowl(NULL, letters[1:3]), rrowl(NULL, letters[4:6])),
#'   rrow("X", 1, 2, 3),
#'   rrow("Y", 4, 5, 6)
#' )
#' tbl
#' header_add_N(tbl, 1:3)
header_add_N <- function(x, N) {
  stopifnot(is(x, "rtable"))
  stopifnot(length(N) == ncol(x))
  
  header(x) <- do.call(rheader, c(
    header(x),
    list(rrowl("", N, format = "(N=xx)"))
  ))
  x
}
