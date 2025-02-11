transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/ISEL/LIC/SLCDC {C:/ISEL/LIC/SLCDC/de10_lite_golden_top.v}

