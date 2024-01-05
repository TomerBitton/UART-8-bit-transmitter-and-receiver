# UART-8-bit-transmitter-and-receiver
This is a Verilog HDL (Register Transfer Level) implementation of an 8-bit UART communication protocol, encompassing both the transmitter and receiver components.
 
UART, short for Universal Asynchronous Transmitter Receiver, is a widely used protocol for full-duplex serial communication. It operates asynchronously, meaning there's no shared clock signal, and typically employs two wires: one for transmitting data and another for receiving it. In this UART design, the communication format consists of a start bit '0', followed by 8 data bits, an even parity bit, and a stop bit. The transmitter sends data one bit at a time, and the receiver samples these bits sequentially once they stabilize, eventually delivering the data in parallel. 
The baud rate, which represents the UART's data transmission rate, varies between different devices, as does their clock rate. Therefore, in the Verilog code, these parameters are adjustable, with default settings of a baud rate of 9600 bits per second and a clock rate of 50 megahertz.
 
Lastly, there's a do file code that tests both the transmitter and receiver together, with "UART_TOP" serving as the Design Under Test (DUT). This allows for validation and verification of the UART communication system.
