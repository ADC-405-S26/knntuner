# check available packages names (chapter 4.1.2)
install.packages(c("available", "pak"))
pak::pkg_name_check("knntuner")

# install some packages which are required for padkage development
install.packages(c("devtools", "checkmate", "tidyverse", "remotes"))
# devtools - meta package for package development in R
# checkmate - to build assertions (make sure that our functions are working fine)
# tidyverse - to build one of our functions
# remotes is a package that is required to intall a package

library(devtools)

# create the package files (basic)

usethis::create_package("/cloud/project")

library(devtools)

# make sure the directory is okay
getwd() # should see /cloud/project

