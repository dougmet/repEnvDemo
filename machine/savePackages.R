# Saving the manifest
library(switchr)
libMan <- libManifest(record_versions = TRUE)
publishManifest(libMan, dest="machine/packages.rman")
