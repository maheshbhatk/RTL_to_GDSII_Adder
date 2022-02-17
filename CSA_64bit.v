//64 bit CSA design using 4 bit CLAs

`include "mux2to1.v"
`include "CLA_4bit_block.v"
module CSA_64bit(
	input[63:0] A, B, // Adding these bits
	input Cin, //Carry-in into the block
	output Cout, // Final Carry
	output [63:0] Sum
	);
	
//wire [3:0] temp1_0; // Sum of the First stage when carry is 0
//wire [3:0] temp1_1;  // Sum of the First stage when carry is 1
wire [3:0] temp2_0;    // Sum of the Second stage when carry is 0
wire [3:0] temp2_1; // Sum of the Second stage when carry is 1
wire [3:0] temp3_0; // Sum of the Third stage when carry is 0
wire [3:0] temp3_1;    //  Sum of the Third stage when carry is 1
wire [3:0] temp4_0; // Sum of the Fourth stage when carry is 0
wire [3:0] temp4_1;    //  Sum of the Fourth stage when carry is 1
wire [3:0] temp5_0; // Sum of the Fifth stage when carry is 0
wire [3:0] temp5_1;    //  Sum of the Fifth stage when carry is 1
wire [3:0] temp6_0; // Sum of the Sixth stage when carry is 0
wire [3:0] temp6_1;    //  Sum of the Sixth stage when carry is 1
wire [3:0] temp7_0; // Sum of the Seventh stage when carry is 0
wire [3:0] temp7_1;    //  Sum of the Seventh stage when carry is 1
wire [3:0] temp8_0; // Sum of the Eigth stage when carry is 0
wire [3:0] temp8_1;    //  Sum of the Eigth stage when carry is 1
wire [3:0] temp9_0; // Sum of the 9th stage when carry is 0
wire [3:0] temp9_1;    //  Sum of the 9th stage when carry is 1
wire [3:0] temp10_0; // Sum of the 10th stage when carry is 0
wire [3:0] temp10_1;    //  Sum of the 10th stage when carry is 1
wire [3:0] temp11_0; // Sum of the 11th stage when carry is 0
wire [3:0] temp11_1;    //  Sum of the 11th stage when carry is 1
wire [3:0] temp12_0; // Sum of the 12th stage when carry is 0
wire [3:0] temp12_1;    //  Sum of the 12th stage when carry is 1
wire [3:0] temp13_0; // Sum of the 13th stage when carry is 0
wire [3:0] temp13_1;    //  Sum of the 13th stage when carry is 1
wire [3:0] temp14_0; // Sum of the 14th stage when carry is 0
wire [3:0] temp14_1;    //  Sum of the 14th stage when carry is 1
wire [3:0] temp15_0; // Sum of the 15th stage when carry is 0
wire [3:0] temp15_1;    //  Sum of the 15th stage when carry is 1
wire [3:0] temp16_0; // Sum of the 16th stage when carry is 0
wire [3:0] temp16_1;    //  Sum of the 16th stage when carry is 1


wire C4; // Carry out from the First stage
wire C8_0;  // Carry out from the 2nd stage when carry is 0
wire C8_1;    // Carry out from the 2nd stage when carry is 1
wire C12_0;   // Carry out from the 3rd stage when carry is 0
wire C12_1;   // Carry out from the 3rd stage when carry is 1
wire C16_0;    // Carry out from the 4th stage when carry is 0
wire C16_1;  // Carry out from the 4th stage when carry is 1
wire C20_0;    // Carry out from the 5th stage when carry is 0
wire C20_1;  // Carry out from the 5th stage when carry is 1
wire C24_0;    // Carry out from the 6th stage when carry is 0
wire C24_1;  // Carry out from the 6th stage when carry is 1
wire C28_0;    // Carry out from the 7th stage when carry is 0
wire C28_1;  // Carry out from the 7th stage when carry is 1
wire C32_0;    // Carry out from the 8th stage when carry is 0
wire C32_1;  // Carry out from the 8th stage when carry is 1
wire C36_0;    // Carry out from the 9th stage when carry is 0
wire C36_1;  // Carry out from the 9th stage when carry is 1
wire C40_0;    // Carry out from the 10th stage when carry is 0
wire C40_1;  // Carry out from the 10th stage when carry is 1
wire C44_0;    // Carry out from the 11th stage when carry is 0
wire C44_1;  // Carry out from the 11th stage when carry is 1
wire C48_0;    // Carry out from the 12th stage when carry is 0
wire C48_1;  // Carry out from the 12th stage when carry is 1
wire C52_0;    // Carry out from the 13th stage when carry is 0
wire C52_1;  // Carry out from the 13th stage when carry is 1
wire C56_0;    // Carry out from the 14th stage when carry is 0
wire C56_1;  // Carry out from the 14th stage when carry is 1
wire C60_0;    // Carry out from the 15th stage when carry is 0
wire C60_1;  // Carry out from the 15th stage when carry is 1
wire C64_0;    // Carry out from the 16th stage when carry is 0
wire C64_1;  // Carry out from the 16th stage when carry is 1


//wire Cout_m1; // Mux out from the first stage
wire Cout_m2; // Mux out from the second stage
wire Cout_m3; // Mux out from the Third stage
wire Cout_m4; // Mux out from the 4th stage
wire Cout_m5; // Mux out from the 5th stage
wire Cout_m6; // Mux out from the 6th stage
wire Cout_m7; // Mux out from the 7th stage
wire Cout_m8; // Mux out from the 8th stage
wire Cout_m9; // Mux out from the 9th stage
wire Cout_m10; // Mux out from the 10th stage
wire Cout_m11; // Mux out from the 11th stage
wire Cout_m12; // Mux out from the 12th stage
wire Cout_m13; // Mux out from the 13th stage
wire Cout_m14; // Mux out from the 14th stage
wire Cout_m15; // Mux out from the 15th stage
wire Cout_m16; // Mux out from the 16th stage

//Build the sum and carry from the 1th block
CLA_4bit_block CB11(A[3:0], B[3:0], Cin, C4, Sum[3:0]);

//Build the sum and carry from the 2nd block
CLA_4bit_block CB20(A[7:4], B[7:4], 0, C8_0, temp2_0);
CLA_4bit_block CB21(A[7:4], B[7:4], 1, C8_1, temp2_1);

mux2to1 mux_carry2(C8_0, C8_1, C4, Cout_m2);

mux2to1 mux_s4(temp2_0[0], temp2_1[0], C4,Sum[4]);
mux2to1 mux_s5(temp2_0[1], temp2_1[1], C4,Sum[5]);
mux2to1 mux_s6(temp2_0[2], temp2_1[2], C4,Sum[6]);
mux2to1 mux_s7(temp2_0[3], temp2_1[3], C4,Sum[7]);

//Build the sum and carry from the 3rd block
CLA_4bit_block CB30(A[11:8], B[11:8], 0, C12_0, temp3_0);
CLA_4bit_block CB31(A[11:8], B[11:8], 1, C12_1, temp3_1);

mux2to1 mux_carry3(C12_0, C12_1, Cout_m2, Cout_m3);

mux2to1 mux_s8(temp3_0[0], temp3_1[0], Cout_m2,Sum[8]);
mux2to1 mux_s9(temp3_0[1], temp3_1[1], Cout_m2,Sum[9]);
mux2to1 mux_s10(temp3_0[2], temp3_1[2], Cout_m2,Sum[10]);
mux2to1 mux_s11(temp3_0[3], temp3_1[3], Cout_m2,Sum[11]);

//Build the sum and carry from the 4th block
CLA_4bit_block CB40(A[15:12], B[15:12], 0, C16_0, temp4_0);
CLA_4bit_block CB41(A[15:12], B[15:12], 1, C16_1, temp4_1);


mux2to1 mux_carry4(C16_0, C16_1, Cout_m3, Cout_m4);

mux2to1 mux_s12(temp4_0[0], temp4_1[0], Cout_m3,Sum[12]);
mux2to1 mux_s13(temp4_0[1], temp4_1[1], Cout_m3,Sum[13]);
mux2to1 mux_s14(temp4_0[2], temp4_1[2], Cout_m3,Sum[14]);
mux2to1 mux_s15(temp4_0[3], temp4_1[3], Cout_m3,Sum[15]);

//Build the sum and carry from the 5th block
CLA_4bit_block CB50(A[19:16], B[19:16], 0, C20_0, temp5_0);
CLA_4bit_block CB51(A[19:16], B[19:16], 1, C20_1, temp5_1);


mux2to1 mux_carry5(C20_0, C20_1, Cout_m4, Cout_m5);

mux2to1 mux_s16(temp5_0[0], temp5_1[0], Cout_m4,Sum[16]);
mux2to1 mux_s17(temp5_0[1], temp5_1[1], Cout_m4,Sum[17]);
mux2to1 mux_s18(temp5_0[2], temp5_1[2], Cout_m4,Sum[18]);
mux2to1 mux_s19(temp5_0[3], temp5_1[3], Cout_m4,Sum[19]);

//Build the sum and carry from the 6th block
CLA_4bit_block CB60(A[23:20], B[23:20], 0, C24_0, temp6_0);
CLA_4bit_block CB61(A[23:20], B[23:20], 1, C24_1, temp6_1);


mux2to1 mux_carry6(C24_0, C24_1, Cout_m5, Cout_m6);

mux2to1 mux_s20(temp6_0[0], temp6_1[0], Cout_m5,Sum[20]);
mux2to1 mux_s21(temp6_0[1], temp6_1[1], Cout_m5,Sum[21]);
mux2to1 mux_s22(temp6_0[2], temp6_1[2], Cout_m5,Sum[22]);
mux2to1 mux_s23(temp6_0[3], temp6_1[3], Cout_m5,Sum[23]);

//Build the sum and carry from the 7th block
CLA_4bit_block CB70(A[27:24], B[27:24], 0, C28_0, temp7_0);
CLA_4bit_block CB71(A[27:24], B[27:24], 1, C28_1, temp7_1);


mux2to1 mux_carry7(C28_0, C28_1, Cout_m6, Cout_m7);

mux2to1 mux_s24(temp7_0[0], temp7_1[0], Cout_m6,Sum[24]);
mux2to1 mux_s25(temp7_0[1], temp7_1[1], Cout_m6,Sum[25]);
mux2to1 mux_s26(temp7_0[2], temp7_1[2], Cout_m6,Sum[26]);
mux2to1 mux_s27(temp7_0[3], temp7_1[3], Cout_m6,Sum[27]);

//Build the sum and carry from the 8th block
CLA_4bit_block CB80(A[31:28], B[31:28], 0, C32_0, temp8_0);
CLA_4bit_block CB81(A[31:28], B[31:28], 1, C32_1, temp8_1);


mux2to1 mux_carry8(C32_0, C32_1, Cout_m7, Cout_m8);

mux2to1 mux_s28(temp8_0[0], temp8_1[0], Cout_m7,Sum[28]);
mux2to1 mux_s29(temp8_0[1], temp8_1[1], Cout_m7,Sum[29]);
mux2to1 mux_s30(temp8_0[2], temp8_1[2], Cout_m7,Sum[30]);
mux2to1 mux_s31(temp8_0[3], temp8_1[3], Cout_m7,Sum[31]);

//Build the sum and carry from the 9th block
CLA_4bit_block CB90(A[35:32], B[35:32], 0, C36_0, temp9_0);
CLA_4bit_block CB91(A[35:32], B[35:32], 1, C36_1, temp9_1);

mux2to1 mux_carry9(C36_0, C36_1, Cout_m8, Cout_m9);

mux2to1 mux_s32(temp9_0[0], temp9_1[0], Cout_m8,Sum[32]);
mux2to1 mux_s33(temp9_0[1], temp9_1[1], Cout_m8,Sum[33]);
mux2to1 mux_s34(temp9_0[2], temp9_1[2], Cout_m8,Sum[34]);
mux2to1 mux_s35(temp9_0[3], temp9_1[3], Cout_m8,Sum[35]);

//Build the sum and carry from the 10th block
CLA_4bit_block CB100(A[39:36], B[39:36], 0, C40_0, temp10_0);
CLA_4bit_block CB101(A[39:36], B[39:36], 1, C40_1, temp10_1);


mux2to1 mux_carry10(C40_0, C40_1, Cout_m9, Cout_m10);

mux2to1 mux_s36(temp10_0[0], temp10_1[0], Cout_m9,Sum[36]);
mux2to1 mux_s37(temp10_0[1], temp10_1[1], Cout_m9,Sum[37]);
mux2to1 mux_s38(temp10_0[2], temp10_1[2], Cout_m9,Sum[38]);
mux2to1 mux_s39(temp10_0[3], temp10_1[3], Cout_m9,Sum[39]);

//Build the sum and carry from the 11th block
CLA_4bit_block CB110(A[43:40], B[43:40], 0, C44_0, temp11_0);
CLA_4bit_block CB111(A[43:40], B[43:40], 1, C44_1, temp11_1);


mux2to1 mux_carry11(C44_0, C44_1, Cout_m10, Cout_m11);

mux2to1 mux_s40(temp11_0[0], temp11_1[0], Cout_m10,Sum[40]);
mux2to1 mux_s41(temp11_0[1], temp11_1[1], Cout_m10,Sum[41]);
mux2to1 mux_s42(temp11_0[2], temp11_1[2], Cout_m10,Sum[42]);
mux2to1 mux_s43(temp11_0[3], temp11_1[3], Cout_m10,Sum[43]);

//Build the sum and carry from the 12th block
CLA_4bit_block CB120(A[47:44], B[47:44], 0, C48_0, temp12_0);
CLA_4bit_block CB121(A[47:44], B[47:44], 1, C48_1, temp12_1);


mux2to1 mux_carry12(C48_0, C48_1, Cout_m11, Cout_m12);

mux2to1 mux_s44(temp12_0[0], temp12_1[0], Cout_m11,Sum[44]);
mux2to1 mux_s45(temp12_0[1], temp12_1[1], Cout_m11,Sum[45]);
mux2to1 mux_s46(temp12_0[2], temp12_1[2], Cout_m11,Sum[46]);
mux2to1 mux_s47(temp12_0[3], temp12_1[3], Cout_m11,Sum[47]);

//Build the sum and carry from the 13th block
CLA_4bit_block CB130(A[51:48], B[51:48], 0, C52_0, temp13_0);
CLA_4bit_block CB131(A[51:48], B[51:48], 1, C52_1, temp13_1);


mux2to1 mux_carry13(C52_0, C52_1, Cout_m12, Cout_m13);

mux2to1 mux_s48(temp13_0[0], temp13_1[0], Cout_m12,Sum[48]);
mux2to1 mux_s49(temp13_0[1], temp13_1[1], Cout_m12,Sum[49]);
mux2to1 mux_s50(temp13_0[2], temp13_1[2], Cout_m12,Sum[50]);
mux2to1 mux_s51(temp13_0[3], temp13_1[3], Cout_m12,Sum[51]);

//Build the sum and carry from the 14th block
CLA_4bit_block CB140(A[55:52], B[55:52], 0, C56_0, temp14_0);
CLA_4bit_block CB141(A[55:52], B[55:52], 1, C56_1, temp14_1);


mux2to1 mux_carry14(C56_0, C56_1, Cout_m13, Cout_m14);

mux2to1 mux_s52(temp14_0[0], temp14_1[0], Cout_m13,Sum[52]);
mux2to1 mux_s53(temp14_0[1], temp14_1[1], Cout_m13,Sum[53]);
mux2to1 mux_s54(temp14_0[2], temp14_1[2], Cout_m13,Sum[54]);
mux2to1 mux_s55(temp14_0[3], temp14_1[3], Cout_m13,Sum[55]);

//Build the sum and carry from the 15th block
CLA_4bit_block CB150(A[59:55], B[59:55], 0, C60_0, temp15_0);
CLA_4bit_block CB151(A[59:55], B[59:55], 1, C60_1, temp15_1);


mux2to1 mux_carry15(C60_0, C60_1, Cout_m14, Cout_m15);

mux2to1 mux_s56(temp15_0[0], temp15_1[0], Cout_m14,Sum[56]);
mux2to1 mux_s57(temp15_0[1], temp15_1[1], Cout_m14,Sum[57]);
mux2to1 mux_s58(temp15_0[2], temp15_1[2], Cout_m14,Sum[58]);
mux2to1 mux_s59(temp15_0[3], temp15_1[3], Cout_m14,Sum[59]);

//Build the sum and carry from the 16th block
CLA_4bit_block CB160(A[63:60], B[63:60], 0, C64_0, temp16_0);
CLA_4bit_block CB161(A[63:60], B[63:60], 1, C64_1, temp16_1);

mux2to1 mux_carry16(C64_0,C64_1, Cout_m15, Cout);

mux2to1 mux_s60(temp16_0[0], temp16_1[0], Cout_m15,Sum[60]);
mux2to1 mux_s61(temp16_0[1], temp16_1[1], Cout_m15,Sum[61]);
mux2to1 mux_s62(temp16_0[2], temp16_1[2], Cout_m15,Sum[62]);
mux2to1 mux_s63(temp16_0[3], temp16_1[3], Cout_m15,Sum[63]);

endmodule

