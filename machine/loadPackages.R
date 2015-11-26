# Loading in the manifest
library(switchr)
libMan <- loadManifest("/tmp/packages.rman")
#install_packages(libMan)

# switchr not behaving as expected so just extract the manifest
pkgs <- libMan@pkg_versions$name

# Because we have a locked MRAN the versions will work here
install.packages(pkgs)
