# Loading in the manifest
libMan <- switchr::loadManifest("packages.rman")
switchr::install_packages(libMan)