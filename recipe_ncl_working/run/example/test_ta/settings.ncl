if (isvar("config_user_info")) then
  delete(config_user_info)
end if

config_user_info = True
config_user_info@run_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_ncl_20230301_215058/run/example/test_ta"
config_user_info@plot_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_ncl_20230301_215058/plots/example/test_ta"
config_user_info@work_dir = "/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_ncl_20230301_215058/work/example/test_ta"
config_user_info@output_file_type = "png"
config_user_info@log_level = "debug"

if (isvar("diag_script_info")) then
  delete(diag_script_info)
end if

diag_script_info = True
diag_script_info@projection = "Mollweide"
diag_script_info@colormap = "WhiteBlueGreenYellowRed"
diag_script_info@ncdf = "default"
diag_script_info@recipe = "recipe_ncl.yml"
diag_script_info@version = "2.7.1"
diag_script_info@script = "test_ta"
diag_script_info@exit_on_ncl_warning = False
diag_script_info@auxiliary_data_dir = "/g/data/p66/ars599/work_esmvaltool/auxiliary_data"
diag_script_info@themes = (/"phys"/)
diag_script_info@realms = (/"atmos"/)
diag_script_info@input_files = (/"/g/data/p66/ars599/work_esmvaltool/esmvaltool_output/recipe_ncl_20230301_215058/preproc/example/ta/ta_info.ncl"/)

