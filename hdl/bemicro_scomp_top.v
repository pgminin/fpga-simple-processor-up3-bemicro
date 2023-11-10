//File: bemicro_scomp_top.v
//Description: top module for bemicro scomp 
//Ref: 
//https://people.ece.cornell.edu/land/courses/ece5760/DE2/TinyCPU/DE2_TOP.v
//Date: 23.01.10


module bemicro_scomp_top(
	input clk_fpga_50M,
	input reset_key,
	input user_key1, 
	input user_sw0, 
	input user_sw1, 
	output [7:0] led8);

wire clk;
wire clk_100Hz;
wire clk_10Hz;
wire clk_1Hz;
wire clk_sw1;
wire clk_cpu;

wire reset;
wire key1;
wire key1_db;
wire sw0;
wire sw1;

assign clk = clk_fpga_50M;
assign reset = ~reset_key;
assign key1 = user_key1;
assign sw0 = user_sw0;
assign sw1 = user_sw1;
assign clk_sw1 = sw1?clk_10Hz:clk_100Hz;
assign clk_cpu = sw0?key1_db:clk_sw1;

//CLOCK DIV
Clock_divider_50Mto1H_10H_100H(reset,clk,clk_1Hz,clk_10Hz,clk_100Hz);
   
//PB DEBOUNCE
debounce_f4s db_user1(key1,clk_100Hz,key1_db);


//HAMBLEN uP3 simple computer
//REGISTERS INTERFACE
wire [7:0] program_counter;
wire [15:0] register_A, memory_data_register_out, instruction_register, out;

//CPU
scomp cpu1(clk_cpu, reset, program_counter, register_A, 
			        memory_data_register_out, instruction_register,out) ;

					  
assign led8 = ~register_A[7:0];


endmodule
