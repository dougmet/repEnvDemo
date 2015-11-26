# Loading in the manifest
library(switchr)
libMan <- loadManifest("machine/packages.rman")

switchTo("repenv", seed=libMan)
