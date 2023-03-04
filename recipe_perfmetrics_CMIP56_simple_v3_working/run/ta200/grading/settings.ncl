if (isvar("config_user_info")) then
  delete(config_user_info)
end if

config_user_info = True
config_user_info@run_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/run/ta200/grading"
config_user_info@plot_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/plots/ta200/grading"
config_user_info@work_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/ta200/grading"
config_user_info@output_file_type = "png"
config_user_info@log_level = "debug"

if (isvar("diag_script_info")) then
  delete(diag_script_info)
end if

diag_script_info = True
diag_script_info@plot_type = "cycle_latlon"
diag_script_info@time_avg = "monthlyclim"
diag_script_info@region = "global"
diag_script_info@plot_stddev = "ref_model"
diag_script_info@legend_outside = True
diag_script_info@styleset = "CMIP5"
diag_script_info@calc_grading = True
diag_script_info@metric = (/"RMSD"/)
diag_script_info@normalization = (/"centered_median"/)
diag_script_info@recipe = "recipe_perfmetrics_CMIP56_simple_v3.yml"
diag_script_info@version = "2.7.1"
diag_script_info@script = "grading"
diag_script_info@exit_on_ncl_warning = False
diag_script_info@auxiliary_data_dir = "/g/data/p66/ars599/work_esmvaltool/auxiliary_data"
diag_script_info@themes = (/"phys"/)
diag_script_info@realms = (/"atmos"/)
diag_script_info@input_files = (/"/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/preproc/ta200/ta/ta_info.ncl"/)

