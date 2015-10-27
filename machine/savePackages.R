# Saving the manifest
libMan <- switchr::libManifest(record_versions = TRUE)
switchr::publishManifest(libMan, dest="machine/packages.rman")
