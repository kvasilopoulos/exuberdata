
library(exuber)
options("exuber.parallel" = TRUE)
options("exuber.ncores" = parallel::detectCores() - 1)
options("exuber.show_progress" = FALSE)


# Simulation -------------------------------------------------------------

nn <- 2000
radf_crit <- list()
for (i in 6:nn) {
  radf_crit[[i]] <-  exuber::mc_cv(i, seed = 123)
  print(i)
}
names(radf_crit) <- c(paste0("_nan", 1:5), paste0("n", 6:nn))
class(radf_crit) <- c("list", "crit")


# Store -------------------------------------------------------------------

usethis::use_data(radf_crit, overwrite = TRUE , compress = "xz")
  
