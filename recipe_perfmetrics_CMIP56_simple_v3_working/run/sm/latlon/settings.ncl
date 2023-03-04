if (isvar("config_user_info")) then
  delete(config_user_info)
end if

config_user_info = True
config_user_info@run_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/run/sm/latlon"
config_user_info@plot_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/plots/sm/latlon"
config_user_info@work_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/work/sm/latlon"
config_user_info@output_file_type = "png"
config_user_info@log_level = "debug"

if (isvar("diag_script_info")) then
  delete(diag_script_info)
end if

diag_script_info = True
diag_script_info@plot_type = "latlon"
diag_script_info@time_avg = "annualclim"
diag_script_info@region = "global"
diag_script_info@plot_diff = True
diag_script_info@t_test = True
diag_script_info@conf_level = 0.95
diag_script_info@show_global_avg = True
diag_script_info@abs_levs = (/0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100/)
diag_script_info@diff_levs = (/-30, -25, -20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30/)
diag_script_info@recipe = "recipe_perfmetrics_CMIP56_simple_v3.yml"
diag_script_info@version = "2.7.1"
diag_script_info@script = "latlon"
diag_script_info@exit_on_ncl_warning = False
diag_script_info@auxiliary_data_dir = "/g/data/p66/ars599/work_esmvaltool/auxiliary_data"
diag_script_info@themes = (/"phys"/)
diag_script_info@realms = (/"land"/)
diag_script_info@input_files = (/"/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP56_simple_v3_20230303_223149/preproc/sm/sm/sm_info.ncl"/)

