onerror {exit -code 1}
vlib work
vcom -work work DEF.vho
vcom -work work MEF.vwf.vht
vsim -voptargs="+acc" -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.DEF_vhd_vec_tst
vcd file -direction DEF.msim.vcd
vcd add -internal DEF_vhd_vec_tst/*
vcd add -internal DEF_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


