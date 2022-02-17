/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* src = "csa64bit.v:276" *)
module CLA_4bit_block(A, B, Cin, Cout, Sum);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  (* src = "csa64bit.v:277" *)
  input [3:0] A;
  (* src = "csa64bit.v:277" *)
  input [3:0] B;
  (* src = "csa64bit.v:285" *)
  (* unused_bits = "0 1 2" *)
  wire [4:1] C;
  (* src = "csa64bit.v:278" *)
  input Cin;
  (* src = "csa64bit.v:279" *)
  output Cout;
  (* src = "csa64bit.v:280" *)
  output [3:0] Sum;
  NAND2X1 _17_ (
    .A(B[3]),
    .B(A[3]),
    .Y(_00_)
  );
  NOR2X1 _18_ (
    .A(B[3]),
    .B(A[3]),
    .Y(_01_)
  );
  XOR2X1 _19_ (
    .A(B[3]),
    .B(A[3]),
    .Y(_02_)
  );
  AND2X1 _20_ (
    .A(B[2]),
    .B(A[2]),
    .Y(_03_)
  );
  NAND2X1 _21_ (
    .A(B[2]),
    .B(A[2]),
    .Y(_04_)
  );
  OR2X1 _22_ (
    .A(B[2]),
    .B(A[2]),
    .Y(_05_)
  );
  NAND2X1 _23_ (
    .A(_04_),
    .B(_05_),
    .Y(_06_)
  );
  NAND2X1 _24_ (
    .A(B[1]),
    .B(A[1]),
    .Y(_07_)
  );
  AND2X1 _25_ (
    .A(B[0]),
    .B(A[0]),
    .Y(_08_)
  );
  NAND2X1 _26_ (
    .A(B[0]),
    .B(A[0]),
    .Y(_09_)
  );
  OR2X1 _27_ (
    .A(B[0]),
    .B(A[0]),
    .Y(_10_)
  );
  NAND2X1 _28_ (
    .A(_09_),
    .B(_10_),
    .Y(_11_)
  );
  AOI21X1 _29_ (
    .A(Cin),
    .B(_10_),
    .C(_08_),
    .Y(_12_)
  );
  NOR2X1 _30_ (
    .A(B[1]),
    .B(A[1]),
    .Y(_13_)
  );
  XOR2X1 _31_ (
    .A(B[1]),
    .B(A[1]),
    .Y(_14_)
  );
  OAI21X1 _32_ (
    .A(_12_),
    .B(_13_),
    .C(_07_),
    .Y(_15_)
  );
  AOI21X1 _33_ (
    .A(_05_),
    .B(_15_),
    .C(_03_),
    .Y(_16_)
  );
  OAI21X1 _34_ (
    .A(_01_),
    .B(_16_),
    .C(_00_),
    .Y(Cout)
  );
  XNOR2X1 _35_ (
    .A(Cin),
    .B(_11_),
    .Y(Sum[0])
  );
  XNOR2X1 _36_ (
    .A(_12_),
    .B(_14_),
    .Y(Sum[1])
  );
  XNOR2X1 _37_ (
    .A(_06_),
    .B(_15_),
    .Y(Sum[2])
  );
  XNOR2X1 _38_ (
    .A(_02_),
    .B(_16_),
    .Y(Sum[3])
  );
  assign C[4] = Cout;
endmodule

(* top =  1  *)
(* src = "csa64bit.v:3" *)
module csa64bit(A, B, Cin, Cout, Sum);
  (* src = "csa64bit.v:4" *)
  input [63:0] A;
  (* src = "csa64bit.v:4" *)
  input [63:0] B;
  (* src = "csa64bit.v:47" *)
  wire C12_0;
  (* src = "csa64bit.v:48" *)
  wire C12_1;
  (* src = "csa64bit.v:49" *)
  wire C16_0;
  (* src = "csa64bit.v:50" *)
  wire C16_1;
  (* src = "csa64bit.v:51" *)
  wire C20_0;
  (* src = "csa64bit.v:52" *)
  wire C20_1;
  (* src = "csa64bit.v:53" *)
  wire C24_0;
  (* src = "csa64bit.v:54" *)
  wire C24_1;
  (* src = "csa64bit.v:55" *)
  wire C28_0;
  (* src = "csa64bit.v:56" *)
  wire C28_1;
  (* src = "csa64bit.v:57" *)
  wire C32_0;
  (* src = "csa64bit.v:58" *)
  wire C32_1;
  (* src = "csa64bit.v:59" *)
  wire C36_0;
  (* src = "csa64bit.v:60" *)
  wire C36_1;
  (* src = "csa64bit.v:44" *)
  wire C4;
  (* src = "csa64bit.v:61" *)
  wire C40_0;
  (* src = "csa64bit.v:62" *)
  wire C40_1;
  (* src = "csa64bit.v:63" *)
  wire C44_0;
  (* src = "csa64bit.v:64" *)
  wire C44_1;
  (* src = "csa64bit.v:65" *)
  wire C48_0;
  (* src = "csa64bit.v:66" *)
  wire C48_1;
  (* src = "csa64bit.v:67" *)
  wire C52_0;
  (* src = "csa64bit.v:68" *)
  wire C52_1;
  (* src = "csa64bit.v:69" *)
  wire C56_0;
  (* src = "csa64bit.v:70" *)
  wire C56_1;
  (* src = "csa64bit.v:71" *)
  wire C60_0;
  (* src = "csa64bit.v:72" *)
  wire C60_1;
  (* src = "csa64bit.v:73" *)
  wire C64_0;
  (* src = "csa64bit.v:74" *)
  wire C64_1;
  (* src = "csa64bit.v:45" *)
  wire C8_0;
  (* src = "csa64bit.v:46" *)
  wire C8_1;
  (* src = "csa64bit.v:5" *)
  input Cin;
  (* src = "csa64bit.v:6" *)
  output Cout;
  (* src = "csa64bit.v:86" *)
  wire Cout_m10;
  (* src = "csa64bit.v:87" *)
  wire Cout_m11;
  (* src = "csa64bit.v:88" *)
  wire Cout_m12;
  (* src = "csa64bit.v:89" *)
  wire Cout_m13;
  (* src = "csa64bit.v:90" *)
  wire Cout_m14;
  (* src = "csa64bit.v:91" *)
  wire Cout_m15;
  (* src = "csa64bit.v:78" *)
  wire Cout_m2;
  (* src = "csa64bit.v:79" *)
  wire Cout_m3;
  (* src = "csa64bit.v:80" *)
  wire Cout_m4;
  (* src = "csa64bit.v:81" *)
  wire Cout_m5;
  (* src = "csa64bit.v:82" *)
  wire Cout_m6;
  (* src = "csa64bit.v:83" *)
  wire Cout_m7;
  (* src = "csa64bit.v:84" *)
  wire Cout_m8;
  (* src = "csa64bit.v:85" *)
  wire Cout_m9;
  (* src = "csa64bit.v:7" *)
  output [63:0] Sum;
  (* src = "csa64bit.v:28" *)
  wire [3:0] temp10_0;
  (* src = "csa64bit.v:29" *)
  wire [3:0] temp10_1;
  (* src = "csa64bit.v:30" *)
  wire [3:0] temp11_0;
  (* src = "csa64bit.v:31" *)
  wire [3:0] temp11_1;
  (* src = "csa64bit.v:32" *)
  wire [3:0] temp12_0;
  (* src = "csa64bit.v:33" *)
  wire [3:0] temp12_1;
  (* src = "csa64bit.v:34" *)
  wire [3:0] temp13_0;
  (* src = "csa64bit.v:35" *)
  wire [3:0] temp13_1;
  (* src = "csa64bit.v:36" *)
  wire [3:0] temp14_0;
  (* src = "csa64bit.v:37" *)
  wire [3:0] temp14_1;
  (* src = "csa64bit.v:38" *)
  wire [3:0] temp15_0;
  (* src = "csa64bit.v:39" *)
  wire [3:0] temp15_1;
  (* src = "csa64bit.v:40" *)
  wire [3:0] temp16_0;
  (* src = "csa64bit.v:41" *)
  wire [3:0] temp16_1;
  (* src = "csa64bit.v:12" *)
  wire [3:0] temp2_0;
  (* src = "csa64bit.v:13" *)
  wire [3:0] temp2_1;
  (* src = "csa64bit.v:14" *)
  wire [3:0] temp3_0;
  (* src = "csa64bit.v:15" *)
  wire [3:0] temp3_1;
  (* src = "csa64bit.v:16" *)
  wire [3:0] temp4_0;
  (* src = "csa64bit.v:17" *)
  wire [3:0] temp4_1;
  (* src = "csa64bit.v:18" *)
  wire [3:0] temp5_0;
  (* src = "csa64bit.v:19" *)
  wire [3:0] temp5_1;
  (* src = "csa64bit.v:20" *)
  wire [3:0] temp6_0;
  (* src = "csa64bit.v:21" *)
  wire [3:0] temp6_1;
  (* src = "csa64bit.v:22" *)
  wire [3:0] temp7_0;
  (* src = "csa64bit.v:23" *)
  wire [3:0] temp7_1;
  (* src = "csa64bit.v:24" *)
  wire [3:0] temp8_0;
  (* src = "csa64bit.v:25" *)
  wire [3:0] temp8_1;
  (* src = "csa64bit.v:26" *)
  wire [3:0] temp9_0;
  (* src = "csa64bit.v:27" *)
  wire [3:0] temp9_1;
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:191" *)
  CLA_4bit_block CB100 (
    .A(A[39:36]),
    .B(B[39:36]),
    .Cin(1'h0),
    .Cout(C40_0),
    .Sum(temp10_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:192" *)
  CLA_4bit_block CB101 (
    .A(A[39:36]),
    .B(B[39:36]),
    .Cin(1'h1),
    .Cout(C40_1),
    .Sum(temp10_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:95" *)
  CLA_4bit_block CB11 (
    .A(A[3:0]),
    .B(B[3:0]),
    .Cin(Cin),
    .Cout(C4),
    .Sum(Sum[3:0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:203" *)
  CLA_4bit_block CB110 (
    .A(A[43:40]),
    .B(B[43:40]),
    .Cin(1'h0),
    .Cout(C44_0),
    .Sum(temp11_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:204" *)
  CLA_4bit_block CB111 (
    .A(A[43:40]),
    .B(B[43:40]),
    .Cin(1'h1),
    .Cout(C44_1),
    .Sum(temp11_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:215" *)
  CLA_4bit_block CB120 (
    .A(A[47:44]),
    .B(B[47:44]),
    .Cin(1'h0),
    .Cout(C48_0),
    .Sum(temp12_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:216" *)
  CLA_4bit_block CB121 (
    .A(A[47:44]),
    .B(B[47:44]),
    .Cin(1'h1),
    .Cout(C48_1),
    .Sum(temp12_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:227" *)
  CLA_4bit_block CB130 (
    .A(A[51:48]),
    .B(B[51:48]),
    .Cin(1'h0),
    .Cout(C52_0),
    .Sum(temp13_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:228" *)
  CLA_4bit_block CB131 (
    .A(A[51:48]),
    .B(B[51:48]),
    .Cin(1'h1),
    .Cout(C52_1),
    .Sum(temp13_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:239" *)
  CLA_4bit_block CB140 (
    .A(A[55:52]),
    .B(B[55:52]),
    .Cin(1'h0),
    .Cout(C56_0),
    .Sum(temp14_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:240" *)
  CLA_4bit_block CB141 (
    .A(A[55:52]),
    .B(B[55:52]),
    .Cin(1'h1),
    .Cout(C56_1),
    .Sum(temp14_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:251" *)
  CLA_4bit_block CB150 (
    .A(A[58:55]),
    .B(B[58:55]),
    .Cin(1'h0),
    .Cout(C60_0),
    .Sum(temp15_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:252" *)
  CLA_4bit_block CB151 (
    .A(A[58:55]),
    .B(B[58:55]),
    .Cin(1'h1),
    .Cout(C60_1),
    .Sum(temp15_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:263" *)
  CLA_4bit_block CB160 (
    .A(A[63:60]),
    .B(B[63:60]),
    .Cin(1'h0),
    .Cout(C64_0),
    .Sum(temp16_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:264" *)
  CLA_4bit_block CB161 (
    .A(A[63:60]),
    .B(B[63:60]),
    .Cin(1'h1),
    .Cout(C64_1),
    .Sum(temp16_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:98" *)
  CLA_4bit_block CB20 (
    .A(A[7:4]),
    .B(B[7:4]),
    .Cin(1'h0),
    .Cout(C8_0),
    .Sum(temp2_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:99" *)
  CLA_4bit_block CB21 (
    .A(A[7:4]),
    .B(B[7:4]),
    .Cin(1'h1),
    .Cout(C8_1),
    .Sum(temp2_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:109" *)
  CLA_4bit_block CB30 (
    .A(A[11:8]),
    .B(B[11:8]),
    .Cin(1'h0),
    .Cout(C12_0),
    .Sum(temp3_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:110" *)
  CLA_4bit_block CB31 (
    .A(A[11:8]),
    .B(B[11:8]),
    .Cin(1'h1),
    .Cout(C12_1),
    .Sum(temp3_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:120" *)
  CLA_4bit_block CB40 (
    .A(A[15:12]),
    .B(B[15:12]),
    .Cin(1'h0),
    .Cout(C16_0),
    .Sum(temp4_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:121" *)
  CLA_4bit_block CB41 (
    .A(A[15:12]),
    .B(B[15:12]),
    .Cin(1'h1),
    .Cout(C16_1),
    .Sum(temp4_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:132" *)
  CLA_4bit_block CB50 (
    .A(A[19:16]),
    .B(B[19:16]),
    .Cin(1'h0),
    .Cout(C20_0),
    .Sum(temp5_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:133" *)
  CLA_4bit_block CB51 (
    .A(A[19:16]),
    .B(B[19:16]),
    .Cin(1'h1),
    .Cout(C20_1),
    .Sum(temp5_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:144" *)
  CLA_4bit_block CB60 (
    .A(A[23:20]),
    .B(B[23:20]),
    .Cin(1'h0),
    .Cout(C24_0),
    .Sum(temp6_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:145" *)
  CLA_4bit_block CB61 (
    .A(A[23:20]),
    .B(B[23:20]),
    .Cin(1'h1),
    .Cout(C24_1),
    .Sum(temp6_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:156" *)
  CLA_4bit_block CB70 (
    .A(A[27:24]),
    .B(B[27:24]),
    .Cin(1'h0),
    .Cout(C28_0),
    .Sum(temp7_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:157" *)
  CLA_4bit_block CB71 (
    .A(A[27:24]),
    .B(B[27:24]),
    .Cin(1'h1),
    .Cout(C28_1),
    .Sum(temp7_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:168" *)
  CLA_4bit_block CB80 (
    .A(A[31:28]),
    .B(B[31:28]),
    .Cin(1'h0),
    .Cout(C32_0),
    .Sum(temp8_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:169" *)
  CLA_4bit_block CB81 (
    .A(A[31:28]),
    .B(B[31:28]),
    .Cin(1'h1),
    .Cout(C32_1),
    .Sum(temp8_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:180" *)
  CLA_4bit_block CB90 (
    .A(A[35:32]),
    .B(B[35:32]),
    .Cin(1'h0),
    .Cout(C36_0),
    .Sum(temp9_0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:181" *)
  CLA_4bit_block CB91 (
    .A(A[35:32]),
    .B(B[35:32]),
    .Cin(1'h1),
    .Cout(C36_1),
    .Sum(temp9_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:195" *)
  mux2to1 mux_carry10 (
    .i0(C40_0),
    .i1(C40_1),
    .mux_out(Cout_m10),
    .sel(Cout_m9)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:207" *)
  mux2to1 mux_carry11 (
    .i0(C44_0),
    .i1(C44_1),
    .mux_out(Cout_m11),
    .sel(Cout_m10)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:219" *)
  mux2to1 mux_carry12 (
    .i0(C48_0),
    .i1(C48_1),
    .mux_out(Cout_m12),
    .sel(Cout_m11)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:231" *)
  mux2to1 mux_carry13 (
    .i0(C52_0),
    .i1(C52_1),
    .mux_out(Cout_m13),
    .sel(Cout_m12)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:243" *)
  mux2to1 mux_carry14 (
    .i0(C56_0),
    .i1(C56_1),
    .mux_out(Cout_m14),
    .sel(Cout_m13)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:255" *)
  mux2to1 mux_carry15 (
    .i0(C60_0),
    .i1(C60_1),
    .mux_out(Cout_m15),
    .sel(Cout_m14)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:266" *)
  mux2to1 mux_carry16 (
    .i0(C64_0),
    .i1(C64_1),
    .mux_out(Cout),
    .sel(Cout_m15)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:101" *)
  mux2to1 mux_carry2 (
    .i0(C8_0),
    .i1(C8_1),
    .mux_out(Cout_m2),
    .sel(C4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:112" *)
  mux2to1 mux_carry3 (
    .i0(C12_0),
    .i1(C12_1),
    .mux_out(Cout_m3),
    .sel(Cout_m2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:124" *)
  mux2to1 mux_carry4 (
    .i0(C16_0),
    .i1(C16_1),
    .mux_out(Cout_m4),
    .sel(Cout_m3)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:136" *)
  mux2to1 mux_carry5 (
    .i0(C20_0),
    .i1(C20_1),
    .mux_out(Cout_m5),
    .sel(Cout_m4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:148" *)
  mux2to1 mux_carry6 (
    .i0(C24_0),
    .i1(C24_1),
    .mux_out(Cout_m6),
    .sel(Cout_m5)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:160" *)
  mux2to1 mux_carry7 (
    .i0(C28_0),
    .i1(C28_1),
    .mux_out(Cout_m7),
    .sel(Cout_m6)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:172" *)
  mux2to1 mux_carry8 (
    .i0(C32_0),
    .i1(C32_1),
    .mux_out(Cout_m8),
    .sel(Cout_m7)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:183" *)
  mux2to1 mux_carry9 (
    .i0(C36_0),
    .i1(C36_1),
    .mux_out(Cout_m9),
    .sel(Cout_m8)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:116" *)
  mux2to1 mux_s10 (
    .i0(temp3_0[2]),
    .i1(temp3_1[2]),
    .mux_out(Sum[10]),
    .sel(Cout_m2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:117" *)
  mux2to1 mux_s11 (
    .i0(temp3_0[3]),
    .i1(temp3_1[3]),
    .mux_out(Sum[11]),
    .sel(Cout_m2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:126" *)
  mux2to1 mux_s12 (
    .i0(temp4_0[0]),
    .i1(temp4_1[0]),
    .mux_out(Sum[12]),
    .sel(Cout_m3)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:127" *)
  mux2to1 mux_s13 (
    .i0(temp4_0[1]),
    .i1(temp4_1[1]),
    .mux_out(Sum[13]),
    .sel(Cout_m3)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:128" *)
  mux2to1 mux_s14 (
    .i0(temp4_0[2]),
    .i1(temp4_1[2]),
    .mux_out(Sum[14]),
    .sel(Cout_m3)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:129" *)
  mux2to1 mux_s15 (
    .i0(temp4_0[3]),
    .i1(temp4_1[3]),
    .mux_out(Sum[15]),
    .sel(Cout_m3)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:138" *)
  mux2to1 mux_s16 (
    .i0(temp5_0[0]),
    .i1(temp5_1[0]),
    .mux_out(Sum[16]),
    .sel(Cout_m4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:139" *)
  mux2to1 mux_s17 (
    .i0(temp5_0[1]),
    .i1(temp5_1[1]),
    .mux_out(Sum[17]),
    .sel(Cout_m4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:140" *)
  mux2to1 mux_s18 (
    .i0(temp5_0[2]),
    .i1(temp5_1[2]),
    .mux_out(Sum[18]),
    .sel(Cout_m4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:141" *)
  mux2to1 mux_s19 (
    .i0(temp5_0[3]),
    .i1(temp5_1[3]),
    .mux_out(Sum[19]),
    .sel(Cout_m4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:150" *)
  mux2to1 mux_s20 (
    .i0(temp6_0[0]),
    .i1(temp6_1[0]),
    .mux_out(Sum[20]),
    .sel(Cout_m5)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:151" *)
  mux2to1 mux_s21 (
    .i0(temp6_0[1]),
    .i1(temp6_1[1]),
    .mux_out(Sum[21]),
    .sel(Cout_m5)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:152" *)
  mux2to1 mux_s22 (
    .i0(temp6_0[2]),
    .i1(temp6_1[2]),
    .mux_out(Sum[22]),
    .sel(Cout_m5)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:153" *)
  mux2to1 mux_s23 (
    .i0(temp6_0[3]),
    .i1(temp6_1[3]),
    .mux_out(Sum[23]),
    .sel(Cout_m5)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:162" *)
  mux2to1 mux_s24 (
    .i0(temp7_0[0]),
    .i1(temp7_1[0]),
    .mux_out(Sum[24]),
    .sel(Cout_m6)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:163" *)
  mux2to1 mux_s25 (
    .i0(temp7_0[1]),
    .i1(temp7_1[1]),
    .mux_out(Sum[25]),
    .sel(Cout_m6)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:164" *)
  mux2to1 mux_s26 (
    .i0(temp7_0[2]),
    .i1(temp7_1[2]),
    .mux_out(Sum[26]),
    .sel(Cout_m6)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:165" *)
  mux2to1 mux_s27 (
    .i0(temp7_0[3]),
    .i1(temp7_1[3]),
    .mux_out(Sum[27]),
    .sel(Cout_m6)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:174" *)
  mux2to1 mux_s28 (
    .i0(temp8_0[0]),
    .i1(temp8_1[0]),
    .mux_out(Sum[28]),
    .sel(Cout_m7)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:175" *)
  mux2to1 mux_s29 (
    .i0(temp8_0[1]),
    .i1(temp8_1[1]),
    .mux_out(Sum[29]),
    .sel(Cout_m7)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:176" *)
  mux2to1 mux_s30 (
    .i0(temp8_0[2]),
    .i1(temp8_1[2]),
    .mux_out(Sum[30]),
    .sel(Cout_m7)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:177" *)
  mux2to1 mux_s31 (
    .i0(temp8_0[3]),
    .i1(temp8_1[3]),
    .mux_out(Sum[31]),
    .sel(Cout_m7)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:185" *)
  mux2to1 mux_s32 (
    .i0(temp9_0[0]),
    .i1(temp9_1[0]),
    .mux_out(Sum[32]),
    .sel(Cout_m8)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:186" *)
  mux2to1 mux_s33 (
    .i0(temp9_0[1]),
    .i1(temp9_1[1]),
    .mux_out(Sum[33]),
    .sel(Cout_m8)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:187" *)
  mux2to1 mux_s34 (
    .i0(temp9_0[2]),
    .i1(temp9_1[2]),
    .mux_out(Sum[34]),
    .sel(Cout_m8)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:188" *)
  mux2to1 mux_s35 (
    .i0(temp9_0[3]),
    .i1(temp9_1[3]),
    .mux_out(Sum[35]),
    .sel(Cout_m8)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:197" *)
  mux2to1 mux_s36 (
    .i0(temp10_0[0]),
    .i1(temp10_1[0]),
    .mux_out(Sum[36]),
    .sel(Cout_m9)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:198" *)
  mux2to1 mux_s37 (
    .i0(temp10_0[1]),
    .i1(temp10_1[1]),
    .mux_out(Sum[37]),
    .sel(Cout_m9)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:199" *)
  mux2to1 mux_s38 (
    .i0(temp10_0[2]),
    .i1(temp10_1[2]),
    .mux_out(Sum[38]),
    .sel(Cout_m9)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:200" *)
  mux2to1 mux_s39 (
    .i0(temp10_0[3]),
    .i1(temp10_1[3]),
    .mux_out(Sum[39]),
    .sel(Cout_m9)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:103" *)
  mux2to1 mux_s4 (
    .i0(temp2_0[0]),
    .i1(temp2_1[0]),
    .mux_out(Sum[4]),
    .sel(C4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:209" *)
  mux2to1 mux_s40 (
    .i0(temp11_0[0]),
    .i1(temp11_1[0]),
    .mux_out(Sum[40]),
    .sel(Cout_m10)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:210" *)
  mux2to1 mux_s41 (
    .i0(temp11_0[1]),
    .i1(temp11_1[1]),
    .mux_out(Sum[41]),
    .sel(Cout_m10)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:211" *)
  mux2to1 mux_s42 (
    .i0(temp11_0[2]),
    .i1(temp11_1[2]),
    .mux_out(Sum[42]),
    .sel(Cout_m10)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:212" *)
  mux2to1 mux_s43 (
    .i0(temp11_0[3]),
    .i1(temp11_1[3]),
    .mux_out(Sum[43]),
    .sel(Cout_m10)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:221" *)
  mux2to1 mux_s44 (
    .i0(temp12_0[0]),
    .i1(temp12_1[0]),
    .mux_out(Sum[44]),
    .sel(Cout_m11)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:222" *)
  mux2to1 mux_s45 (
    .i0(temp12_0[1]),
    .i1(temp12_1[1]),
    .mux_out(Sum[45]),
    .sel(Cout_m11)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:223" *)
  mux2to1 mux_s46 (
    .i0(temp12_0[2]),
    .i1(temp12_1[2]),
    .mux_out(Sum[46]),
    .sel(Cout_m11)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:224" *)
  mux2to1 mux_s47 (
    .i0(temp12_0[3]),
    .i1(temp12_1[3]),
    .mux_out(Sum[47]),
    .sel(Cout_m11)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:233" *)
  mux2to1 mux_s48 (
    .i0(temp13_0[0]),
    .i1(temp13_1[0]),
    .mux_out(Sum[48]),
    .sel(Cout_m12)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:234" *)
  mux2to1 mux_s49 (
    .i0(temp13_0[1]),
    .i1(temp13_1[1]),
    .mux_out(Sum[49]),
    .sel(Cout_m12)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:104" *)
  mux2to1 mux_s5 (
    .i0(temp2_0[1]),
    .i1(temp2_1[1]),
    .mux_out(Sum[5]),
    .sel(C4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:235" *)
  mux2to1 mux_s50 (
    .i0(temp13_0[2]),
    .i1(temp13_1[2]),
    .mux_out(Sum[50]),
    .sel(Cout_m12)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:236" *)
  mux2to1 mux_s51 (
    .i0(temp13_0[3]),
    .i1(temp13_1[3]),
    .mux_out(Sum[51]),
    .sel(Cout_m12)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:245" *)
  mux2to1 mux_s52 (
    .i0(temp14_0[0]),
    .i1(temp14_1[0]),
    .mux_out(Sum[52]),
    .sel(Cout_m13)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:246" *)
  mux2to1 mux_s53 (
    .i0(temp14_0[1]),
    .i1(temp14_1[1]),
    .mux_out(Sum[53]),
    .sel(Cout_m13)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:247" *)
  mux2to1 mux_s54 (
    .i0(temp14_0[2]),
    .i1(temp14_1[2]),
    .mux_out(Sum[54]),
    .sel(Cout_m13)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:248" *)
  mux2to1 mux_s55 (
    .i0(temp14_0[3]),
    .i1(temp14_1[3]),
    .mux_out(Sum[55]),
    .sel(Cout_m13)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:257" *)
  mux2to1 mux_s56 (
    .i0(temp15_0[0]),
    .i1(temp15_1[0]),
    .mux_out(Sum[56]),
    .sel(Cout_m14)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:258" *)
  mux2to1 mux_s57 (
    .i0(temp15_0[1]),
    .i1(temp15_1[1]),
    .mux_out(Sum[57]),
    .sel(Cout_m14)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:259" *)
  mux2to1 mux_s58 (
    .i0(temp15_0[2]),
    .i1(temp15_1[2]),
    .mux_out(Sum[58]),
    .sel(Cout_m14)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:260" *)
  mux2to1 mux_s59 (
    .i0(temp15_0[3]),
    .i1(temp15_1[3]),
    .mux_out(Sum[59]),
    .sel(Cout_m14)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:105" *)
  mux2to1 mux_s6 (
    .i0(temp2_0[2]),
    .i1(temp2_1[2]),
    .mux_out(Sum[6]),
    .sel(C4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:268" *)
  mux2to1 mux_s60 (
    .i0(temp16_0[0]),
    .i1(temp16_1[0]),
    .mux_out(Sum[60]),
    .sel(Cout_m15)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:269" *)
  mux2to1 mux_s61 (
    .i0(temp16_0[1]),
    .i1(temp16_1[1]),
    .mux_out(Sum[61]),
    .sel(Cout_m15)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:270" *)
  mux2to1 mux_s62 (
    .i0(temp16_0[2]),
    .i1(temp16_1[2]),
    .mux_out(Sum[62]),
    .sel(Cout_m15)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:271" *)
  mux2to1 mux_s63 (
    .i0(temp16_0[3]),
    .i1(temp16_1[3]),
    .mux_out(Sum[63]),
    .sel(Cout_m15)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:106" *)
  mux2to1 mux_s7 (
    .i0(temp2_0[3]),
    .i1(temp2_1[3]),
    .mux_out(Sum[7]),
    .sel(C4)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:114" *)
  mux2to1 mux_s8 (
    .i0(temp3_0[0]),
    .i1(temp3_1[0]),
    .mux_out(Sum[8]),
    .sel(Cout_m2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "csa64bit.v:115" *)
  mux2to1 mux_s9 (
    .i0(temp3_0[1]),
    .i1(temp3_1[1]),
    .mux_out(Sum[9]),
    .sel(Cout_m2)
  );
endmodule

(* src = "csa64bit.v:312" *)
module mux2to1(i0, i1, sel, mux_out);
  wire _0_;
  (* src = "csa64bit.v:313" *)
  input i0;
  (* src = "csa64bit.v:313" *)
  input i1;
  (* src = "csa64bit.v:314" *)
  output mux_out;
  (* src = "csa64bit.v:313" *)
  input sel;
  MUX2X1 _1_ (
    .A(i1),
    .B(i0),
    .S(sel),
    .Y(_0_)
  );
  INVX1 _2_ (
    .A(_0_),
    .Y(mux_out)
  );
endmodule