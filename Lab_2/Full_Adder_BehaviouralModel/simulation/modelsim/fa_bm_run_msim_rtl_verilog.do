transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/NHCE_22_23/HDL_Lab/Lab_Experiments/Lab_2/Full_Adder_BehaviouralModel {D:/NHCE_22_23/HDL_Lab/Lab_Experiments/Lab_2/Full_Adder_BehaviouralModel/fa_bm.v}

vlog -vlog01compat -work work +incdir+D:/NHCE_22_23/HDL_Lab/Lab_Experiments/Lab_2/Full_Adder_BehaviouralModel {D:/NHCE_22_23/HDL_Lab/Lab_Experiments/Lab_2/Full_Adder_BehaviouralModel/fa_bm_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  fa_bm_tb

add wave *
view structure
view signals
run -all
