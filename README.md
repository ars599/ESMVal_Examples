# A few example of running ESMValTools on Gadi (2023)

```
please try to play the code. if you have any question please leave message at issue.
```

# Introduction and resources

** Before using the scripts: 

* The obs data is download and prepared from ...
% 





# Example Scripts
** How to use it
 
```
#!/bin/bash
# Set up  environment for running esmvaltool
#
#
#PBS -S /bin/bash
#PBS -P p66
#PBS -q copyq
#PBS -l walltime=10:00:00,ncpus=1,mem=50GB
#PBS -l storage=gdata/kj13+scratch/p66+gdata/p66+gdata/fs38+gdata/oi10+gdata/rr3+gdata/hh5+gdata/al33
#PBS -N ESMValTool
#PBS -l wd
#
# Purpose
# -------
# qsub and test esmvaltool
#

module purge
module load pbs

export MODULEPATH=$MODULEPATH:/g/data/kj13/environments
module load conda/esmvaltool_dev

module load ferret
module load netcdf
module load nco
module list

# testing
#esmvaltool run recipes/recipe_perfmetrics_CMIP5.yml
#esmvaltool run recipes/recipe_perfmetrics_ESM15_simple.yml
#esmvaltool run recipes/recipe_flato13ipcc-TaiESM1_simple.yml

# working
# esmvaltool run recipes/recipe_multimodel_products.yml
# esmvaltool run recipes/recipe_ocean_ice_extent.yml
# esmvaltool run recipes/recipe_validation_CMIP6.yml
# esmvaltool run recipes/recipe_perfmetrics_CMIP56_simple.yml
# esmvaltool run recipes/recipe_flato13ipcc-CMIP5_simple.yml
# esmvaltool run recipes/recipe_thermodyn_diagtool.yml
esmvaltool run recipes/recipe_perfmetrics_CMIP56_simple_v3.yml

```

** example 1: recipe_eyring13jgr_12_simple
https://htmlpreview.github.io/?https://github.com/ars599/ESMVal_Examples/blob/main/recipe_eyring13jgr_12_simple_working/index.html

** example 2: recipe_meehl20sciadv
https://htmlpreview.github.io/?https://github.com/ars599/ESMVal_Examples/blob/main/recipe_meehl20sciadv_working/index.html

** example 3: recipe_ncl
https://htmlpreview.github.io/?https://github.com/ars599/ESMVal_Examples/blob/main/recipe_ncl_working/index.html

** example 4: recipe_perfmetrics_CMIP56_simple_v3
https://htmlpreview.github.io/?https://github.com/ars599/ESMVal_Examples/blob/main/recipe_perfmetrics_CMIP56_simple_v3_working/index.html

** example 5: recipe_thermodyn_diagtool
https://htmlpreview.github.io/?https://github.com/ars599/ESMVal_Examples/blob/main/recipe_thermodyn_diagtool_working/index.html


** The Metrix Figure

![](https://github.com/ars599/ESMVal_Examples/blob/main/recipe_perfmetrics_CMIP56_simple_v3_working/plots/collect/RMSD/ts-global_to_zg500-global_RMSD.png)




** Setting of the config-user.yml
working directory /g/data/p66/ars599/work_esmvaltool/
```
###############################################################################
# Example user configuration file for ESMValTool
###############################################################################
#
# Note for users:
# --------------
# Site-specific entries for different HPC centers are given at the bottom of
# this file. Comment out/replace as needed. This default version of the file
# can be used in combination with the command line argument ``offline=False``
# If only certain values are allowed for an option, these are listed after
# ``---``. The option in square brackets is the default value, i.e., the one
# that is used if this option is omitted in the file.
#
###############################################################################
#
# Note for developers:
# -------------------
# Two identical copies of this file (``ESMValTool/config-user-example.yml`` and
# ``ESMValCore/esmvalcore/config-user.yml``) exist. If you change one of it,
# make sure to apply the changes to the other.
#
###############################################################################
---

# Destination directory where all output will be written
# Includes log files and performance stats.
output_dir: ./esmvaltool_output

# Directory for storing downloaded climate data
download_dir: ./esmvaltool_climate_data

# Auxiliary data directory
# Used by some recipes to look for additional datasets.
auxiliary_data_dir: ./auxiliary_data

# Run at most this many tasks in parallel --- [null]/1/2/3/4/...
# Set to ``null`` to use the number of available CPUs. If you run out of
# memory, try setting max_parallel_tasks to ``1`` and check the amount of
# memory you need for that by inspecting the file ``run/resource_usage.txt`` in
# the output directory. Using the number there you can increase the number of
# parallel tasks again to a reasonable number for the amount of memory
# available in your system.
max_parallel_tasks: null

# Disable automatic downloads --- [true]/false
# Disable the automatic download of missing CMIP3, CMIP5, CMIP6, CORDEX,
# and obs4MIPs data from ESGF by default. This is useful if you are working
# on a computer without an internet connection.
offline: false

# Log level of the console --- debug/[info]/warning/error
# For much more information printed to screen set log_level to ``debug``.
log_level: debug

# Exit on warning --- true/[false]
# # Only used in NCL diagnostic scripts.
exit_on_warning: false

# Plot file format --- [png]/pdf/ps/eps/epsi
output_file_type: png

# Remove the ``preproc`` directory if the run was successful --- [true]/false
# By default this option is set to ``true``, so all preprocessor output files
# will be removed after a successful run. Set to ``false`` if you need those
# files.
remove_preproc_dir: true

# Use netCDF compression --- true/[false]
compress_netcdf: false

# Save intermediary cubes in the preprocessor --- true/[false]
# Setting this to ``true`` will save the output cube from each preprocessing
# step. These files are numbered according to the preprocessing order.
save_intermediary_cubes: false

# Path to custom ``config-developer.yml`` file
# This can be used to customise project configurations. See
# ``config-developer.yml`` for an example. Set to ``null`` to use the default.
config_developer_file: ~/.esmvaltool/config-developer.yml

# Use a profiling tool for the diagnostic run --- [false]/true
# A profiler tells you which functions in your code take most time to run.
# Only available for Python diagnostics.
profile_diagnostic: false

# Rootpaths to the data from different projects
# This default setting will work if files have been downloaded by the
# ESMValTool via ``offline=False``. Lists are also possible. For site-specific
# entries and more examples, see below. Comment out these when using a
# site-specific path.
rootpath:
  CMIP6: [/g/data/oi10/replicas/CMIP6, /g/data/fs38/publications/CMIP6]
  CMIP5: [/g/data/r87/DRSv3/CMIP5, /g/data/al33/replicas/CMIP5/combined, /g/data/rr3/publications/CMIP5/output1]
  default: /scratch/p66/ars599/work_esmvaltool/cmip6
#0422 new added in
  OBS: /g/data/p66/ars599/work_esmvaltool/obsdata
  OBS6: /g/data/p66/ars599/work_esmvaltool/obsdata
  obs4MIPs: /g/data/p66/ars599/work_esmvaltool/obsdata
  obs4mips: /g/data/p66/ars599/work_esmvaltool/obsdata

# Directory structure for input data --- [default]/ESGF/BADC/DKRZ/ETHZ/etc.
# This default setting will work if files have been downloaded by the
# ESMValTool via ``offline=False``. See ``config-developer.yml`` for
# definitions. Comment out/replace as per needed.
drs:
  CMIP3: ESGF
  CMIP5: BADC
  CMIP6: BADC
  CORDEX: ESGF
  obs4MIPs: default
  ana4mips: default

# Example rootpaths and directory structure that showcases the different
# projects and also the use of lists
# For site-specific entries, see below.
#rootpath:
#  CMIP3: [~/cmip3_inputpath1, ~/cmip3_inputpath2]
#  CMIP5: [~/cmip5_inputpath1, ~/cmip5_inputpath2]
#  CMIP6: [~/cmip6_inputpath1, ~/cmip6_inputpath2]
#  OBS: ~/obs_inputpath
#  OBS6: ~/obs6_inputpath
#  obs4MIPs: ~/obs4mips_inputpath
#  ana4mips: ~/ana4mips_inputpath
#  native6: ~/native6_inputpath
#  RAWOBS: ~/rawobs_inputpath
#  default: ~/default_inputpath
#drs:
#  CMIP3: default
#  CMIP5: default
#  CMIP6: default
#  CORDEX: default
#  obs4MIPs: default

# Directory tree created by automatically downloading from ESGF
# Uncomment the lines below to locate data that has been automatically
# downloaded from ESGF (using ``offline: false``).
#rootpath:
#  CMIP3: ~/climate_data
#  CMIP5: ~/climate_data
#  CMIP6: ~/climate_data
#  CORDEX: ~/climate_data
#  obs4MIPs: ~/climate_data
#drs:
#  CMIP3: ESGF
#  CMIP5: ESGF
#  CMIP6: ESGF
#  CORDEX: ESGF
#  obs4MIPs: ESGF

# Site-specific entries: JASMIN
# Uncomment the lines below to locate data on JASMIN.
#auxiliary_data_dir: /gws/nopw/j04/esmeval/aux_data/AUX
#rootpath:
#  CMIP6: /badc/cmip6/data/CMIP6
#  CMIP5: /badc/cmip5/data/cmip5/output1
#  CMIP3: /badc/cmip3_drs/data/cmip3/output
#  OBS: /gws/nopw/j04/esmeval/obsdata-v2
#  OBS6: /gws/nopw/j04/esmeval/obsdata-v2
#  obs4MIPs: /gws/nopw/j04/esmeval/obsdata-v2
#  ana4mips: /gws/nopw/j04/esmeval/obsdata-v2
#  CORDEX: /badc/cordex/data/CORDEX/output
#drs:
#  CMIP6: BADC
#  CMIP5: BADC
#  CMIP3: BADC
#  CORDEX: BADC
#  OBS: default
#  OBS6: default
#  obs4MIPs: default
#  ana4mips: default

# Site-specific entries: DKRZ
# Uncomment the lines below to locate data on Mistral at DKRZ.
# Note: Use ``offline: false`` only on login and prepost nodes.
#auxiliary_data_dir: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/AUX
#rootpath:
#  CMIP6: /mnt/lustre02/work/ik1017/CMIP6/data/CMIP6
#  CMIP5: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/CMIP5_DKRZ
#  CMIP3: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/CMIP3
#  CORDEX: /mnt/lustre02/work/ik1017/C3SCORDEX/data/c3s-cordex/output
#  OBS: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/OBS
#  OBS6: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/OBS
#  obs4MIPs: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/OBS
#  ana4mips: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/OBS
#  native6: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/RAWOBS
#  RAWOBS: /mnt/lustre02/work/bd0854/DATA/ESMValTool2/RAWOBS
#drs:
#  CMIP6: DKRZ
#  CMIP5: DKRZ
#  CMIP3: DKRZ
#  CORDEX: BADC
#  obs4MIPs: default
#  ana4mips: default
#  OBS: default
#  OBS6: default
#  native6: default

# Site-specific entries: ETHZ
# Uncomment the lines below to locate data at ETHZ.
#rootpath:
#  CMIP6: /net/atmos/data/cmip6
#  CMIP5: /net/atmos/data/cmip5
#  CMIP3: /net/atmos/data/cmip3
#  OBS: /net/exo/landclim/PROJECTS/C3S/datadir/obsdir/
#drs:
#  CMIP6: ETHZ
#  CMIP5: ETHZ
#  CMIP3: ETHZ

# Site-specific entries: IPSL
# Uncomment the lines below to locate data on Ciclad at IPSL.
#rootpath:
#  IPSLCM: /
#  CMIP5: /bdd/CMIP5/output
#  CMIP6: /bdd/CMIP6
#  CMIP3: /bdd/CMIP3
#  CORDEX: /bdd/CORDEX/output
#  obs4MIPs: /bdd/obs4MIPS/obs-CFMIP/observations
#  ana4mips: /not_yet
#  OBS: /not_yet
#  OBS6: /not_yet
#  RAWOBS: /not_yet
#drs:
#  CMIP6: DKRZ
#  CMIP5: DKRZ
#  CMIP3: IPSL
#  CORDEX: BADC
#  obs4MIPs: IPSL
#  ana4mips: default
#  OBS: not_yet
#  OBS6: not_yet

```
