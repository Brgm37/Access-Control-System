transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ISEL/LIC/Serial Receiver/shiftReg5.vhd}
vcom -93 -work work {C:/ISEL/LIC/Serial Receiver/SerialReceiver.vhd}
vcom -93 -work work {C:/ISEL/LIC/Serial Receiver/SerialControl.vhd}
vcom -93 -work work {C:/ISEL/LIC/Serial Receiver/FFD.vhd}
vcom -93 -work work {C:/ISEL/LIC/Serial Receiver/CounterUpDown3.vhd}
vcom -93 -work work {C:/ISEL/LIC/Dispatcher/Dispatcher.vhd}
vcom -93 -work work {C:/ISEL/LIC/SLCDC/SLCDC.vhd}

