onerror {quit -f}
vlib work
vlog -work work Ejercicio1.vo
vlog -work work Ejercicio1.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Ejercicio1_vlg_vec_tst
vcd file -direction Ejercicio1.msim.vcd
vcd add -internal Ejercicio1_vlg_vec_tst/*
vcd add -internal Ejercicio1_vlg_vec_tst/i1/*
add wave /*
run -all
