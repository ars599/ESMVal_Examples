if (isvar("config_user_info")) then
  delete(config_user_info)
end if

config_user_info = True
config_user_info@run_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP5_simple_20230302_073631/run/tas/latlon"
config_user_info@plot_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP5_simple_20230302_073631/plots/tas/latlon"
config_user_info@work_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP5_simple_20230302_073631/work/tas/latlon"
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
diag_script_info@show_global_avg = False
diag_script_info@abs_levs = (/240, 243, 246, 249, 252, 255, 258, 261, 264, 267, 270, 273, 276, 279, 282, 285, 288, 291, 294, 297, 300/)
diag_script_info@diff_levs = (/-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5/)
diag_script_info@recipe = "recipe_perfmetrics_CMIP5_simple.yml"
diag_script_info@version = "2.7.1"
diag_script_info@script = "latlon"
diag_script_info@exit_on_ncl_warning = False
diag_script_info@auxiliary_data_dir = "/g/data/p66/ars599/work_esmvaltool/auxiliary_data"
diag_script_info@themes = (/"phys"/)
diag_script_info@realms = (/"atmos"/)
diag_script_info@input_files = (/"/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_perfmetrics_CMIP5_simple_20230302_073631/preproc/tas/tas/tas_info.ncl"/)

