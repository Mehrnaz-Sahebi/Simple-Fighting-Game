
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name LogicCircuitProject -dir "C:/Users/Asus/Desktop/Logical Circuits/LogicCircuitProject/planAhead_run_3" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Asus/Desktop/Logical Circuits/LogicCircuitProject/fightingGame.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Asus/Desktop/Logical Circuits/LogicCircuitProject} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "fightingGame.ucf" [current_fileset -constrset]
add_files [list {fightingGame.ucf}] -fileset [get_property constrset [current_run]]
link_design
