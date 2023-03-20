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

