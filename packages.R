packages = list("ggplot2", "glmnet", "lme4", "RCurl", "lubridate", "igraph", "arm", "tm", "RJSONIO", "reshape", "XML");

cat("Installation is now beginning.\n\n");

for (package in packages) {
    requireSuccess = suppressWarnings(require(package, quietly=TRUE, character.only=TRUE));
    if (!requireSuccess) {
        cat(paste("Package \"", package, "\" is missing, installing it.\n"));
        install.packages(package, dependencies=TRUE);
    } else {
        cat(paste("Package \"", package, "\" already installed, skipping.\n"));
    }
}

cat("\n\nInstallation finished.\n");