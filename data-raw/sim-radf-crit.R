
# install_github("kvasilopoulos/exuber@dev") #or through local build
library(exuber)
options("exuber.parallel" = TRUE)
options("exuber.ncores" = parallel::detectCores())
options("exuber.show_progress" = TRUE)

# Simulation -------------------------------------------------------------
nn <- 2000
radf_crit2 <- vector("list", length = nn)
for (i in 6:nn) {
  radf_crit2[[i]] <-  exuber::mc_cv(i, nrep = 2000, seed = 123)
}
names(radf_crit2) <- c(paste0("_nan", 1:5), paste0("n", 6:nn))
class(radf_crit2) <- c("crit", "list")

# store -------------------------------------------------------------------

usethis::use_data(radf_crit2, overwrite = TRUE , compress = "xz")

