`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 21:00:01
// Design Name: 
// Module Name: odev2_a
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module odev2_a(
input sag,sol,on,
output yon_solbit,yon_sagbit
);

not(notsag,sag);
and(sas,sol,notsag);
or(yon_solbit,on,sas);
or(yon_sagbit,on,sag);

endmodule
