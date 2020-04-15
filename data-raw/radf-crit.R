
# install_github("kvasilopoulos/exuber@dev")
library(exuber)
options("exuber.parallel" = TRUE)
options("exuber.ncores" = parallel::detectCores())
options("exuber.show_progress" = TRUE)


# Simulation -------------------------------------------------------------
nn <- 2000
radf_crit <- list()
for (i in 6:nn) {
  radf_crit[[i]] <-  exuber::mc_cv(i, seed = 123, nrep = 2000)
  print(i)
}
names(radf_crit2) <- c(paste0("_nan", 1:5), paste0("n", 6:nn))
class(radf_crit2) <- c("list", "crit")

# test -------------------------------------------------------------------

testthat::test_that("same results n = 100",{
  all.equal( radf_crit2[[100]], mc_cv(701, nrep = 2000L, seed = 123))
})

testthat::test_that("same results n = 701",{
  all.equal( radf_crit2[[701]], mc_cv(701, nrep = 2000L, seed = 123))
})

# store -------------------------------------------------------------------

usethis::use_data(radf_crit2, overwrite = TRUE , compress = "xz")
