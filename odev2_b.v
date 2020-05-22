`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 21:48:59
// Design Name: 
// Module Name: odev2_b
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


module odev2_b(
input sag1,sol1,on1,sag2,sol2,on2,
output yon_solbit1,yon_sagbit1,yon_solbit2,yon_sagbit2,carpisti_mi
);

 odev2_a(.sag(sag1),.sol(sol1),.on(on1),.yon_solbit(yon_solbit1),.yon_sagbit(yon_sagbit1));
 odev2_a(.sag(sag2),.sol(sol2),.on(on2),.yon_solbit(yon_solbit2),.yon_sagbit(yon_sagbit2));
 
 //arac 1 önde
 //arac 2 arkada
 
 not(notsol1,yon_solbit1);
 not(notsag1,yon_sagbit1);
 not(notsol2,yon_solbit2);
 not(notsag2,yon_sagbit2);
 
 and(part1,notsol1,notsag1,yon_solbit2,yon_sagbit2);
 and(part2,notsol1,yon_sagbit1,notsol2,yon_sagbit2); 
 and(part3,yon_solbit1,yon_sagbit1,yon_solbit2,yon_sagbit2);
 and(part4,yon_solbit1,notsag1,yon_solbit2,notsag2);
 
 or(carpisti_mi,part1,part2,part3,part4); 

 
endmodule
