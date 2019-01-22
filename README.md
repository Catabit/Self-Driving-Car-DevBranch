# Self-Driving-Car-DevBranch


Every folder in the repo, except for the ip-repo itself, should be a Petalinux 2017.4 Project by itself, containing the Vivado+SDK project folder that it is based on (the .hdf and .bit files it needs). The C source files petalinux uses to build the userspace apps (project-spec/meta-user/recipes-apps/app/files) are symlinks to the coresponding source files in the SDK/app/src directory

For now, the Makefile files in the petalinux projects need to be slightly adjusted based on your own configuration to mount/unmount
the SD card and so on.
