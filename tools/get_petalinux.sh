#!/bin/bash

dev_branch_path='/home/catabit/Zybo'
proj_name='SDCar'
origin_dir='/home/catabit/ContestRepo'

petalinux=$dev_branch_path/$proj_name

#Copy Petalinux files
cp -R $petalinux/project-spec/ $origin_dir/petalinux/
cp -R $petalinux/.petalinux/ $origin_dir/petalinux/
cp -R $petalinux/Makefile $origin_dir/petalinux/
cp -R $petalinux/config.project $origin_dir/petalinux/

