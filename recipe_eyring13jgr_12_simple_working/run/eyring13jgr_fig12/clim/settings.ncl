if (isvar("config_user_info")) then
  delete(config_user_info)
end if

config_user_info = True
config_user_info@run_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_eyring13jgr_12_simple_20230302_092354/run/eyring13jgr_fig12/clim"
config_user_info@plot_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_eyring13jgr_12_simple_20230302_092354/plots/eyring13jgr_fig12/clim"
config_user_info@work_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_eyring13jgr_12_simple_20230302_092354/work/eyring13jgr_fig12/clim"
config_user_info@output_file_type = "png"
config_user_info@log_level = "debug"

if (isvar("diag_script_info")) then
  delete(diag_script_info)
end if

diag_script_info = True
diag_script_info@e13fig12_exp_MMM = "historical"
diag_script_info@e13fig12_season = "DJF"
diag_script_info@e13fig12_multimean = True
diag_script_info@recipe = "recipe_eyring13jgr_12_simple.yml"
diag_script_info@version = "2.7.1"
diag_script_info@script = "clim"
diag_script_info@exit_on_ncl_warning = False
diag_script_info@auxiliary_data_dir = "/g/data/p66/ars599/work_esmvaltool/auxiliary_data"
diag_script_info@themes = (/"chem"/)
diag_script_info@realms = (/"atmos"/)
diag_script_info@input_files = (/"/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_eyring13jgr_12_simple_20230302_092354/preproc/eyring13jgr_fig12/ua/ua_info.ncl"/)

