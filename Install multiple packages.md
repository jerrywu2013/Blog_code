```
options(repos = c(CRAN = "http://cran.csie.ntu.edu.tw"))
library("miniCRAN")
pkgs <- c("ggplot2", "plyr", "reshape2")
dir.create(miniCRAN <- file.path(tempdir()), "miniCRAN")
makeRepo(pkgDep(pkgs), path=miniCRAN, download=TRUE, type = "source")
makeRepo(pkgDep(pkgs), path=miniCRAN, download=TRUE, type = "mac.binary")
makeRepo(pkgDep(pkgs), path=miniCRAN, download=TRUE, type = "win.binary")
```
