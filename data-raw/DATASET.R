
options("exuber.parallel" = TRUE)
options("ncores" = parallel::detectCores())
options("exuber.show_progress" = FALSE)


# Simulation -------------------------------------------------------------

nn <- 1000
crit2 <- list()
for (i in 6:nn) {
  crit[[i]] <-  exuber::mc_cv(i, seed = 123)
  print(i)
}
names(crit2) <- c(paste0("_nan", 1:5), paste0("n", 6:nn))
class(crit2) <- c("list", "crit")

# ... ---------------------------------------------------------------------

usethis::use_data(crit2, overwrite = TRUE , compress = "xz")
