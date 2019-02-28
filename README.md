# Self-Driving-Car-DevBranch


Every folder in the repo, except for the ip-repo itself, should be a Petalinux 2017.4 Project by itself, containing the Vivado+SDK project folder that it is based on (the .hdf and .bit files it needs). The C source files petalinux uses to build the userspace apps (project-spec/meta-user/recipes-apps/app/files) are symlinks to the coresponding source files in the SDK/app/src directory

Folder structure is as follows:
* Repo/
  - Folder/ = petalinux project
    - VivadoProject/ = the vivado project folder (contains an .xpr)
      - VivadoProject.sdk/ = the SDK project file, contains all the device drivers and applications running on that build
    - project-spec/ = the petalinux configuration files and such
    - Makefile = makefile with a set of most used commands to build the project and interact with it
  - Tools/ = common tools used to automate the project builds
  - ip_repo/ = shared IPs we've worked on + vivado default ones
  
For now, the Makefile files in the petalinux projects need to be slightly adjusted based on your own configuration to mount/unmount
the SD card, configure ssh, build the project and so on.
