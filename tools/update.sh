#!/bin/bash
dev_branch_path='/home/catabit/Zybo'
opengl_path='/home/catabit/OpenGLRepo'
origin_dir='/home/catabit/ContestRepo'

opengl_proj='cvthread'

proj_name='SDCar'
vivado_proj_name='SDCarVivado'



hardware_definition=$dev_branch_path/$proj_name/$vivado_proj_name/$vivado_proj_name.sdk/design_1_wrapper.hdf

block_design_tcl=$dev_branch_path/$proj_name/$vivado_proj_name/design_1.tcl

proj_ip=$dev_branch_path/$proj_name/$vivado_proj_name/$vivado_proj_name.srcs/sources_1/bd/design_1/ip

constraints=$dev_branch_path/$proj_name/$vivado_proj_name/$vivado_proj_name.srcs/constrs_1/imports/new/zyboZ20_master.xdc

sdk=$dev_branch_path/$proj_name/$vivado_proj_name/$vivado_proj_name.sdk/*

camera_files=$opengl_path/$opengl_proj/


#1.Export Hardware Definition to Default
#Move hardware definition to hw_handoff
cp $hardware_definition $origin_dir/hw_handoff

#2.Export Block Design to default
#Move Block design tcl to src/bd/
cp $block_design_tcl $origin_dir/src/bd/

#Copy IP folder from srcs folder
cp -R $proj_ip $origin_dir/src/

#Copy constraints file
cp $constraints $origin_dir/src/constraints/

#Copy Hardware Platform in SDK folder
cp $origin_dir/hw_handoff/design_1_wrapper.hdf $origin_dir/sdk/

#Copy SDK folder
cp -R $sdk $origin_dir/sdk/

#Copy Opengl SDK files
cp -R $camera_files $origin_dir/sdk/
