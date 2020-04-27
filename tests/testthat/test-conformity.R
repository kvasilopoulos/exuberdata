
test_that("radf_cv identical for n = 100", {
  expect_equal(radf_crit2[[100]], radf_mc_cv(100, nrep = 2000L, seed = 123))
})

test_that("radf_cv identical for n = 601", {
  expect_equal(radf_crit2[[601]], radf_mc_cv(601, nrep = 2000L, seed = 123))
})