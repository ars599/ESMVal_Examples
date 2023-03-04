if (isvar("config_user_info")) then
  delete(config_user_info)
end if

config_user_info = True
config_user_info@run_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/run/collect/RMSD"
config_user_info@plot_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/plots/collect/RMSD"
config_user_info@work_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/collect/RMSD"
config_user_info@output_file_type = "png"
config_user_info@log_level = "debug"

if (isvar("diag_script_info")) then
  delete(diag_script_info)
end if

diag_script_info = True
diag_script_info@metric = "RMSD"
diag_script_info@label_bounds = (/-0.5, 0.5/)
diag_script_info@label_scale = 0.1
diag_script_info@disp_values = False
diag_script_info@cm_interval = (/2, 241/)
diag_script_info@sort = True
diag_script_info@diag_order = (/"ts-global", "tas-global", "sm-global", "ta200-global", "ua200-global", "va200-global", "ua850-global", "va850-global", "zg500-global"/)
diag_script_info@recipe = "recipe_perfmetrics_CMIP56_simple_v3.yml"
diag_script_info@version = "2.7.1"
diag_script_info@script = "RMSD"
diag_script_info@exit_on_ncl_warning = False
diag_script_info@auxiliary_data_dir = "/g/data/p66/ars599/work_esmvaltool/auxiliary_data"
diag_script_info@input_files = (/"/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/ta200/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/ua850/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/ua200/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/ts/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/sm/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/tas/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/va850/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/zg500/grading", "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/va200/grading"/)

