#do file UART_TOP.v
vsim -gui work.UART_TOP
add wave -divider "Inputs:"
add wave -color "blue" clk
add wave -color "magenta" reset data_in transmit

add wave -divider "Signals:"
add wave RX_serial_in 

add wave -divider "Outputs:"
add wave  -color "Forest Green" error TX_active valid  
add wave  -color "Yellow" data_out

force -freeze sim:/UART_TOP/clk 1 0, 0 {5 ps} -r 10ps
force reset 0
force transmit 1
force data_in 11010101 
run 500 ns