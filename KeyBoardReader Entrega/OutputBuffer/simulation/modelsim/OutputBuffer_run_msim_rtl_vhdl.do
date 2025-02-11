transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ISEL/LIC/OutputBuffer/BufferControl.vhd}
vcom -93 -work work {C:/ISEL/LIC/OutputBuffer/OutputBuffer.vhd}
vcom -93 -work work {C:/ISEL/LIC/OutputBuffer/Registo4.vhd}
vcom -93 -work work {C:/ISEL/LIC/OutputBuffer/FFD.vhd}

