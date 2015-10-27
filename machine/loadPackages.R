# Saving the manifest

#libMan <- switchr::libManifest(record_versions = TRUE,)
#publishManifest(libMan, dest="machine/packages.rman")

# Loading in the manifest
libMan <- loadManifest("packages.rman")
install_packages(libMan)