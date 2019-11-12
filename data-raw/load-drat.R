library(drat)
library(git2r)

# Build the package -------------------------------------------------------

x <- build()

# Add the newest version to kvasilopoulos ---------------------------------

addRepo("kvasilopoulos")
insertPackage(x)

# commit and push the new version -----------------------------------------

drat_repo <- repository("~/git/drat")
add(drat_repo, ".")
commit(drat_repo, "Update Data")
# cred <- cred_user_pass("kvasilopoulos", "kostas218050")
push(drat_repo, name = "origin", refspec = "refs/heads/gh-pages", 
     credentials = cred_token(), set_upstream = TRUE)

# install with the following command --------------------------------------

# install.packages(pkgs = "exuberdata", 
#                  repos = "https://kvasilopoulos.github.io/drat/", 
#                  type = "source")