#' Stored Monte Carlo Critical Values
#'
#' A dataset containing Monte Carlo critical values for up to 600 observations
#' generated using the deault minimum window. The critical values have been simulated and
#' stored as data to save computation time for the user. The stored critical values
#' can be obtained with the \code{\link[=radf_mc_cv]{radf_mc_cv()}} function, using
#' nrep = `2000` and the `seed = 123`.
#'
#'
#' @format A list with lower level lists that contain
#' \describe{
#'   \item{adf_cv:}{Augmented Dickey-Fuller}
#'   \item{badf_cv:}{Backward Augmented Dickey-Fuller}
#'   \item{sadf_cv:}{Supremum Augmented Dickey-Fuller}
#'   \item{bsadf_cv:}{Backward Supremum Augmented Dickey-Fuller}
#'   \item{gsadf_cv:}{Generalized Supremum Augmented Dickey Fuller}
#'
#' }
#' @source simulated from exuber package function \code{\link[=radf_mc_cv]{radf_mc_cv()}}
#' 
#' @name radf_crit
#'
#' @examples
#' \dontrun{
#' library(exuber)
#' all.equal(radf_crit2[[50]], exuber::radf_mc_cv(50, nrep = 2000, seed = 123))
#' }
"radf_crit2"