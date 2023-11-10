# fpga-simple-processor-up3-bemicro
## A Simple Computer Design: The uP3  
### (Hamblen, Rapid prototyping of digital systems--SOPC Edition, chapter 9, Springer 2008)
This CPU is very simple and easy to play with. It is only 130 lines of Verilog, including comments. It is a simple, one accumulator, cpu.
The entire project is developed in Quartus Prime Lite v20.1.1 for Windows and targets an Intel (Altera) Cyclone IV FPGA on the little Bemicro dev board from Arrow.
The code in the hdl folder can be easily ported to other FPGAs.

## The uP3 Architecture

## The uP3 basic instructions

## The uP3 basic Datapath

## The uP3 basic Control

## An Example program: the Fibonacci sequence generation

## Step into live code execution and see Register Transfer Level data moving
Using Quartus Prime Signal Tap Verification Tool you can trace realtime CPU execution of the code

![Model](https://github.com/pgminin/fpga-simple-processor-up3-bemicro/blob/main/doc/img/cap/st_execution_10Hz_cap.jpg)

![Model](https://github.com/pgminin/fpga-simple-processor-up3-bemicro/blob/main/doc/img/cap/st_execution_push_button_cap.jpg)

## Top Level Implementation Netlist: CPU and Board I/O
![Model](https://github.com/pgminin/fpga-simple-processor-up3-bemicro/blob/main/doc/img/top_level_netlist.jpg)

## CPU Implementation Netlist
![Model](https://github.com/pgminin/fpga-simple-processor-up3-bemicro/blob/main/doc/img/cpu_netlist.jpg)

## Implementation Report: Resource Utilization and Time Analysis
This CPU implementation uses just 98 Logic Cells, 50 Dedicated Logic Registers and 4096 Memory Bits

![Model](https://github.com/pgminin/fpga-simple-processor-up3-bemicro/blob/main/doc/img/fitting_resources_no_signal_tap.jpg)

![Model](https://github.com/pgminin/fpga-simple-processor-up3-bemicro/blob/main/doc/img/cpu_time_analysis.jpg)

## References
Ref 1: Hamblen, Rapid prototyping of digital systems--SOPC Edition, chapter 9, Springer 2008

Ref 2: [DE2 hardware and processor examples ECE 576 Cornell University](https://people.ece.cornell.edu/land/courses/ece5760/DE2/index.html)
