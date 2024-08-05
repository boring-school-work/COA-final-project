# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new mips_vhdl_32bit work:mips_vhdl_32bit:NOFILE -nosplit
load symbol ALU_CONTROL_UNIT_32BIT work:ALU_CONTROL_UNIT_32BIT:NOFILE HIERBOX pinBus ALUOp input.left [2:0] pinBus ALU_Control output.right [2:0] pinBus ALU_Funct input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol instruction_memory_32bit work:instruction_memory_32bit:NOFILE HIERBOX pinBus inst_add input.left [5:0] pinBus instruction output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX63 work MUX pin S input.bot pinBus I0 input.left [5:0] pinBus I1 input.left [5:0] pinBus O output.right [5:0] fillcolor 1
load symbol alu_32bit work:alu_32bit:NOFILE HIERBOX pin sign_flag output.right pin zero_flag output.right pinBus alu_control input.left [2:0] pinBus alu_result output.right [31:0] pinBus inp_a input.left [31:0] pinBus inp_b input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol control_unit_32bit work:control_unit_32bit:NOFILE HIERBOX pin alu_src output.right pin branch output.right pin branch_g output.right pin branch_l output.right pin jump output.right pin mem_read output.right pin mem_to_reg output.right pin mem_write output.right pin reg_dst output.right pin reg_write output.right pin reset input.left pinBus alu_op output.right [2:0] pinBus opcode input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND0 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND0 workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol RTL_ADD0 work RTL(+) pin I1 input.left pinBus I0 input.left [5:0] pinBus O output.right [5:0] fillcolor 1
load symbol RTL_MUX50 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX59 work MUX pin S input.bot pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus O output.right [4:0] fillcolor 1
load symbol register_file_32bit work:register_file_32bit:NOFILE HIERBOX pin clk input.left pin reg_write_en input.left pin rst input.left pinBus reg_read_addr_1 input.left [4:0] pinBus reg_read_addr_2 input.left [4:0] pinBus reg_read_data_1 output.right [31:0] pinBus reg_read_data_2 output.right [31:0] pinBus reg_write_data input.left [31:0] pinBus reg_write_dest input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol sRam_32bit work:sRam_32bit:NOFILE HIERBOX pin Read input.left pin Write input.left pin clk input.left pinBus Addr input.left [4:0] pinBus Data_in input.left [31:0] pinBus Data_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_34 work[5:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [5:0] pinBus Q output.right [5:0] fillcolor 1 sandwich 3 prop @bundle 6
load port clk input -pg 1 -lvl 0 -x 0 -y 530
load port reset input -pg 1 -lvl 0 -x 0 -y 500
load portBus alu_result output [31:0] -attr @name alu_result[31:0] -pg 1 -lvl 7 -x 2320 -y 290
load portBus pc_out output [5:0] -attr @name pc_out[5:0] -pg 1 -lvl 7 -x 2320 -y 800
load inst ALUControl ALU_CONTROL_UNIT_32BIT work:ALU_CONTROL_UNIT_32BIT:NOFILE -autohide -attr @cell(#000000) ALU_CONTROL_UNIT_32BIT -pinBusAttr ALUOp @name ALUOp[2:0] -pinBusAttr ALU_Control @name ALU_Control[2:0] -pinBusAttr ALU_Funct @name ALU_Funct[5:0] -pg 1 -lvl 5 -x 1700 -y 280
load inst Instruction_Memory instruction_memory_32bit work:instruction_memory_32bit:NOFILE -autohide -attr @cell(#000000) instruction_memory_32bit -pinBusAttr inst_add @name inst_add[5:0] -pinBusAttr instruction @name instruction[31:0] -pg 1 -lvl 1 -x 140 -y 430
load inst PC_4beqj_i RTL_MUX63 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[5:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[5:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[5:0] -pg 1 -lvl 5 -x 1700 -y 800
load inst PC_4branch_i RTL_MUX63 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[5:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[5:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[5:0] -pg 1 -lvl 4 -x 1310 -y 770
load inst aalu alu_32bit work:alu_32bit:NOFILE -autohide -attr @cell(#000000) alu_32bit -pinBusAttr alu_control @name alu_control[2:0] -pinBusAttr alu_result @name alu_result[31:0] -pinBusAttr inp_a @name inp_a[31:0] -pinBusAttr inp_b @name inp_b[31:0] -pg 1 -lvl 6 -x 2070 -y 280
load inst control control_unit_32bit work:control_unit_32bit:NOFILE -autohide -attr @cell(#000000) control_unit_32bit -pinBusAttr alu_op @name alu_op[2:0] -pinBusAttr opcode @name opcode[5:0] -pg 1 -lvl 2 -x 500 -y 280
load inst f10_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 2 -x 500 -y 160
load inst f10_i__0 RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 500 -y 600
load inst f11_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 140 -y 40
load inst f11_i__0 RTL_AND0 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 140 -y 160
load inst f1_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -x 950 -y 600
load inst plusOp_i RTL_ADD0 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[5:0] -pinBusAttr O @name O[5:0] -pg 1 -lvl 3 -x 950 -y 780
load inst read_data2_i RTL_MUX50 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 5 -x 1700 -y 400
load inst reg_write_data_i RTL_MUX50 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 4 -x 1310 -y 410
load inst reg_write_dest_i RTL_MUX59 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[4:0] -pg 1 -lvl 4 -x 1310 -y 550
load inst register_file register_file_32bit work:register_file_32bit:NOFILE -autohide -attr @cell(#000000) register_file_32bit -pinBusAttr reg_read_addr_1 @name reg_read_addr_1[4:0] -pinBusAttr reg_read_addr_2 @name reg_read_addr_2[4:0] -pinBusAttr reg_read_data_1 @name reg_read_data_1[31:0] -pinBusAttr reg_read_data_2 @name reg_read_data_2[31:0] -pinBusAttr reg_write_data @name reg_write_data[31:0] -pinBusAttr reg_write_dest @name reg_write_dest[4:0] -pg 1 -lvl 5 -x 1700 -y 570
load inst ssram sRam_32bit work:sRam_32bit:NOFILE -autohide -attr @cell(#000000) sRam_32bit -pinBusAttr Addr @name Addr[4:0] -pinBusAttr Data_in @name Data_in[31:0] -pinBusAttr Data_out @name Data_out[31:0] -pg 1 -lvl 3 -x 950 -y 420
load inst pc_current_reg[5:0] RTL_REG_ASYNC__BREG_34 work[5:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 6 -x 2070 -y 800
load net <const0> -ground -attr @rip(#000000) instruction[0] -pin ALUControl ALU_Funct[5] -pin ALUControl ALU_Funct[4] -pin ALUControl ALU_Funct[3] -pin ALUControl ALU_Funct[2] -pin ALUControl ALU_Funct[1] -pin ALUControl ALU_Funct[0] -pin Instruction_Memory instruction[15] -pin Instruction_Memory instruction[14] -pin Instruction_Memory instruction[13] -pin Instruction_Memory instruction[12] -pin Instruction_Memory instruction[11] -pin Instruction_Memory instruction[10] -pin Instruction_Memory instruction[9] -pin Instruction_Memory instruction[8] -pin Instruction_Memory instruction[7] -pin Instruction_Memory instruction[6] -pin Instruction_Memory instruction[5] -pin Instruction_Memory instruction[4] -pin Instruction_Memory instruction[3] -pin Instruction_Memory instruction[2] -pin Instruction_Memory instruction[1] -pin Instruction_Memory instruction[0] -pin PC_4beqj_i I0[5] -pin PC_4beqj_i I0[4] -pin PC_4beqj_i I0[3] -pin PC_4beqj_i I0[2] -pin PC_4beqj_i I0[1] -pin PC_4beqj_i I0[0] -pin PC_4branch_i I0[5] -pin PC_4branch_i I0[4] -pin PC_4branch_i I0[3] -pin PC_4branch_i I0[2] -pin PC_4branch_i I0[1] -pin PC_4branch_i I0[0] -pin read_data2_i I0[31] -pin read_data2_i I0[30] -pin read_data2_i I0[29] -pin read_data2_i I0[28] -pin read_data2_i I0[27] -pin read_data2_i I0[26] -pin read_data2_i I0[25] -pin read_data2_i I0[24] -pin read_data2_i I0[23] -pin read_data2_i I0[22] -pin read_data2_i I0[21] -pin read_data2_i I0[20] -pin read_data2_i I0[19] -pin read_data2_i I0[18] -pin read_data2_i I0[17] -pin read_data2_i I0[16] -pin read_data2_i I0[15] -pin read_data2_i I0[14] -pin read_data2_i I0[13] -pin read_data2_i I0[12] -pin read_data2_i I0[11] -pin read_data2_i I0[10] -pin read_data2_i I0[9] -pin read_data2_i I0[8] -pin read_data2_i I0[7] -pin read_data2_i I0[6] -pin read_data2_i I0[5] -pin read_data2_i I0[4] -pin read_data2_i I0[3] -pin read_data2_i I0[2] -pin read_data2_i I0[1] -pin read_data2_i I0[0] -pin reg_write_dest_i I0[4] -pin reg_write_dest_i I0[3] -pin reg_write_dest_i I0[2] -pin reg_write_dest_i I0[1] -pin reg_write_dest_i I0[0]
load net <const1> -power -pin plusOp_i I1
load net ALU_Control[0] -attr @rip(#000000) ALU_Control[0] -pin ALUControl ALU_Control[0] -pin aalu alu_control[0]
load net ALU_Control[1] -attr @rip(#000000) ALU_Control[1] -pin ALUControl ALU_Control[1] -pin aalu alu_control[1]
load net ALU_Control[2] -attr @rip(#000000) ALU_Control[2] -pin ALUControl ALU_Control[2] -pin aalu alu_control[2]
load net Data_out[0] -attr @rip(#000000) Data_out[0] -pin reg_write_data_i I0[0] -pin ssram Data_out[0]
load net Data_out[10] -attr @rip(#000000) Data_out[10] -pin reg_write_data_i I0[10] -pin ssram Data_out[10]
load net Data_out[11] -attr @rip(#000000) Data_out[11] -pin reg_write_data_i I0[11] -pin ssram Data_out[11]
load net Data_out[12] -attr @rip(#000000) Data_out[12] -pin reg_write_data_i I0[12] -pin ssram Data_out[12]
load net Data_out[13] -attr @rip(#000000) Data_out[13] -pin reg_write_data_i I0[13] -pin ssram Data_out[13]
load net Data_out[14] -attr @rip(#000000) Data_out[14] -pin reg_write_data_i I0[14] -pin ssram Data_out[14]
load net Data_out[15] -attr @rip(#000000) Data_out[15] -pin reg_write_data_i I0[15] -pin ssram Data_out[15]
load net Data_out[16] -attr @rip(#000000) Data_out[16] -pin reg_write_data_i I0[16] -pin ssram Data_out[16]
load net Data_out[17] -attr @rip(#000000) Data_out[17] -pin reg_write_data_i I0[17] -pin ssram Data_out[17]
load net Data_out[18] -attr @rip(#000000) Data_out[18] -pin reg_write_data_i I0[18] -pin ssram Data_out[18]
load net Data_out[19] -attr @rip(#000000) Data_out[19] -pin reg_write_data_i I0[19] -pin ssram Data_out[19]
load net Data_out[1] -attr @rip(#000000) Data_out[1] -pin reg_write_data_i I0[1] -pin ssram Data_out[1]
load net Data_out[20] -attr @rip(#000000) Data_out[20] -pin reg_write_data_i I0[20] -pin ssram Data_out[20]
load net Data_out[21] -attr @rip(#000000) Data_out[21] -pin reg_write_data_i I0[21] -pin ssram Data_out[21]
load net Data_out[22] -attr @rip(#000000) Data_out[22] -pin reg_write_data_i I0[22] -pin ssram Data_out[22]
load net Data_out[23] -attr @rip(#000000) Data_out[23] -pin reg_write_data_i I0[23] -pin ssram Data_out[23]
load net Data_out[24] -attr @rip(#000000) Data_out[24] -pin reg_write_data_i I0[24] -pin ssram Data_out[24]
load net Data_out[25] -attr @rip(#000000) Data_out[25] -pin reg_write_data_i I0[25] -pin ssram Data_out[25]
load net Data_out[26] -attr @rip(#000000) Data_out[26] -pin reg_write_data_i I0[26] -pin ssram Data_out[26]
load net Data_out[27] -attr @rip(#000000) Data_out[27] -pin reg_write_data_i I0[27] -pin ssram Data_out[27]
load net Data_out[28] -attr @rip(#000000) Data_out[28] -pin reg_write_data_i I0[28] -pin ssram Data_out[28]
load net Data_out[29] -attr @rip(#000000) Data_out[29] -pin reg_write_data_i I0[29] -pin ssram Data_out[29]
load net Data_out[2] -attr @rip(#000000) Data_out[2] -pin reg_write_data_i I0[2] -pin ssram Data_out[2]
load net Data_out[30] -attr @rip(#000000) Data_out[30] -pin reg_write_data_i I0[30] -pin ssram Data_out[30]
load net Data_out[31] -attr @rip(#000000) Data_out[31] -pin reg_write_data_i I0[31] -pin ssram Data_out[31]
load net Data_out[3] -attr @rip(#000000) Data_out[3] -pin reg_write_data_i I0[3] -pin ssram Data_out[3]
load net Data_out[4] -attr @rip(#000000) Data_out[4] -pin reg_write_data_i I0[4] -pin ssram Data_out[4]
load net Data_out[5] -attr @rip(#000000) Data_out[5] -pin reg_write_data_i I0[5] -pin ssram Data_out[5]
load net Data_out[6] -attr @rip(#000000) Data_out[6] -pin reg_write_data_i I0[6] -pin ssram Data_out[6]
load net Data_out[7] -attr @rip(#000000) Data_out[7] -pin reg_write_data_i I0[7] -pin ssram Data_out[7]
load net Data_out[8] -attr @rip(#000000) Data_out[8] -pin reg_write_data_i I0[8] -pin ssram Data_out[8]
load net Data_out[9] -attr @rip(#000000) Data_out[9] -pin reg_write_data_i I0[9] -pin ssram Data_out[9]
load net PC_4beqj[0] -attr @rip(#000000) O[0] -pin PC_4beqj_i O[0] -pin pc_current_reg[5:0] D[0]
load net PC_4beqj[1] -attr @rip(#000000) O[1] -pin PC_4beqj_i O[1] -pin pc_current_reg[5:0] D[1]
load net PC_4beqj[2] -attr @rip(#000000) O[2] -pin PC_4beqj_i O[2] -pin pc_current_reg[5:0] D[2]
load net PC_4beqj[3] -attr @rip(#000000) O[3] -pin PC_4beqj_i O[3] -pin pc_current_reg[5:0] D[3]
load net PC_4beqj[4] -attr @rip(#000000) O[4] -pin PC_4beqj_i O[4] -pin pc_current_reg[5:0] D[4]
load net PC_4beqj[5] -attr @rip(#000000) O[5] -pin PC_4beqj_i O[5] -pin pc_current_reg[5:0] D[5]
load net PC_4branch[0] -attr @rip(#000000) O[0] -pin PC_4beqj_i I1[0] -pin PC_4branch_i O[0]
load net PC_4branch[1] -attr @rip(#000000) O[1] -pin PC_4beqj_i I1[1] -pin PC_4branch_i O[1]
load net PC_4branch[2] -attr @rip(#000000) O[2] -pin PC_4beqj_i I1[2] -pin PC_4branch_i O[2]
load net PC_4branch[3] -attr @rip(#000000) O[3] -pin PC_4beqj_i I1[3] -pin PC_4branch_i O[3]
load net PC_4branch[4] -attr @rip(#000000) O[4] -pin PC_4beqj_i I1[4] -pin PC_4branch_i O[4]
load net PC_4branch[5] -attr @rip(#000000) O[5] -pin PC_4beqj_i I1[5] -pin PC_4branch_i O[5]
load net alu_op[0] -attr @rip(#000000) alu_op[0] -pin ALUControl ALUOp[0] -pin control alu_op[0]
load net alu_op[1] -attr @rip(#000000) alu_op[1] -pin ALUControl ALUOp[1] -pin control alu_op[1]
load net alu_op[2] -attr @rip(#000000) alu_op[2] -pin ALUControl ALUOp[2] -pin control alu_op[2]
load net alu_result[0] -attr @rip(#000000) alu_result[0] -pin aalu alu_result[0] -port alu_result[0] -pin reg_write_data_i I1[0] -pin ssram Addr[0]
load net alu_result[10] -attr @rip(#000000) alu_result[10] -pin aalu alu_result[10] -port alu_result[10] -pin reg_write_data_i I1[10]
load net alu_result[11] -attr @rip(#000000) alu_result[11] -pin aalu alu_result[11] -port alu_result[11] -pin reg_write_data_i I1[11]
load net alu_result[12] -attr @rip(#000000) alu_result[12] -pin aalu alu_result[12] -port alu_result[12] -pin reg_write_data_i I1[12]
load net alu_result[13] -attr @rip(#000000) alu_result[13] -pin aalu alu_result[13] -port alu_result[13] -pin reg_write_data_i I1[13]
load net alu_result[14] -attr @rip(#000000) alu_result[14] -pin aalu alu_result[14] -port alu_result[14] -pin reg_write_data_i I1[14]
load net alu_result[15] -attr @rip(#000000) alu_result[15] -pin aalu alu_result[15] -port alu_result[15] -pin reg_write_data_i I1[15]
load net alu_result[16] -attr @rip(#000000) alu_result[16] -pin aalu alu_result[16] -port alu_result[16] -pin reg_write_data_i I1[16]
load net alu_result[17] -attr @rip(#000000) alu_result[17] -pin aalu alu_result[17] -port alu_result[17] -pin reg_write_data_i I1[17]
load net alu_result[18] -attr @rip(#000000) alu_result[18] -pin aalu alu_result[18] -port alu_result[18] -pin reg_write_data_i I1[18]
load net alu_result[19] -attr @rip(#000000) alu_result[19] -pin aalu alu_result[19] -port alu_result[19] -pin reg_write_data_i I1[19]
load net alu_result[1] -attr @rip(#000000) alu_result[1] -pin aalu alu_result[1] -port alu_result[1] -pin reg_write_data_i I1[1] -pin ssram Addr[1]
load net alu_result[20] -attr @rip(#000000) alu_result[20] -pin aalu alu_result[20] -port alu_result[20] -pin reg_write_data_i I1[20]
load net alu_result[21] -attr @rip(#000000) alu_result[21] -pin aalu alu_result[21] -port alu_result[21] -pin reg_write_data_i I1[21]
load net alu_result[22] -attr @rip(#000000) alu_result[22] -pin aalu alu_result[22] -port alu_result[22] -pin reg_write_data_i I1[22]
load net alu_result[23] -attr @rip(#000000) alu_result[23] -pin aalu alu_result[23] -port alu_result[23] -pin reg_write_data_i I1[23]
load net alu_result[24] -attr @rip(#000000) alu_result[24] -pin aalu alu_result[24] -port alu_result[24] -pin reg_write_data_i I1[24]
load net alu_result[25] -attr @rip(#000000) alu_result[25] -pin aalu alu_result[25] -port alu_result[25] -pin reg_write_data_i I1[25]
load net alu_result[26] -attr @rip(#000000) alu_result[26] -pin aalu alu_result[26] -port alu_result[26] -pin reg_write_data_i I1[26]
load net alu_result[27] -attr @rip(#000000) alu_result[27] -pin aalu alu_result[27] -port alu_result[27] -pin reg_write_data_i I1[27]
load net alu_result[28] -attr @rip(#000000) alu_result[28] -pin aalu alu_result[28] -port alu_result[28] -pin reg_write_data_i I1[28]
load net alu_result[29] -attr @rip(#000000) alu_result[29] -pin aalu alu_result[29] -port alu_result[29] -pin reg_write_data_i I1[29]
load net alu_result[2] -attr @rip(#000000) alu_result[2] -pin aalu alu_result[2] -port alu_result[2] -pin reg_write_data_i I1[2] -pin ssram Addr[2]
load net alu_result[30] -attr @rip(#000000) alu_result[30] -pin aalu alu_result[30] -port alu_result[30] -pin reg_write_data_i I1[30]
load net alu_result[31] -attr @rip(#000000) alu_result[31] -pin aalu alu_result[31] -port alu_result[31] -pin reg_write_data_i I1[31]
load net alu_result[3] -attr @rip(#000000) alu_result[3] -pin aalu alu_result[3] -port alu_result[3] -pin reg_write_data_i I1[3] -pin ssram Addr[3]
load net alu_result[4] -attr @rip(#000000) alu_result[4] -pin aalu alu_result[4] -port alu_result[4] -pin reg_write_data_i I1[4] -pin ssram Addr[4]
load net alu_result[5] -attr @rip(#000000) alu_result[5] -pin aalu alu_result[5] -port alu_result[5] -pin reg_write_data_i I1[5]
load net alu_result[6] -attr @rip(#000000) alu_result[6] -pin aalu alu_result[6] -port alu_result[6] -pin reg_write_data_i I1[6]
load net alu_result[7] -attr @rip(#000000) alu_result[7] -pin aalu alu_result[7] -port alu_result[7] -pin reg_write_data_i I1[7]
load net alu_result[8] -attr @rip(#000000) alu_result[8] -pin aalu alu_result[8] -port alu_result[8] -pin reg_write_data_i I1[8]
load net alu_result[9] -attr @rip(#000000) alu_result[9] -pin aalu alu_result[9] -port alu_result[9] -pin reg_write_data_i I1[9]
load net alu_src -pin control alu_src -pin read_data2_i S
netloc alu_src 1 2 3 NJ 310 NJ 310 1530
load net branch -pin control branch -pin f11_i I0
netloc branch 1 0 3 20 90 NJ 90 720
load net branch_g -pin control branch_g -pin f11_i__0 I0
netloc branch_g 1 0 3 20 210 NJ 210 660
load net branch_l -pin control branch_l -pin f10_i__0 I0
netloc branch_l 1 1 2 400 550 660
load net clk -port clk -pin pc_current_reg[5:0] C -pin register_file clk -pin ssram clk
netloc clk 1 0 6 NJ 530 NJ 530 840 670 1180J 650 1450 890 1950J
load net f1 -pin PC_4branch_i S -pin f1_i O
netloc f1 1 3 1 1120 600n
load net f10 -pin f10_i O -pin f1_i I0
netloc f10 1 2 1 780 160n
load net f10_i__0_n_0 -pin f10_i__0 O -pin f1_i I1
netloc f10_i__0_n_0 1 2 1 700 600n
load net f11 -pin f10_i I0 -pin f11_i O
netloc f11 1 1 1 380 40n
load net f11_i__0_n_0 -pin f10_i I1 -pin f11_i__0 O
netloc f11_i__0_n_0 1 1 1 340 160n
load net inp_b[0] -attr @rip(#000000) O[0] -pin aalu inp_b[0] -pin read_data2_i O[0]
load net inp_b[10] -attr @rip(#000000) O[10] -pin aalu inp_b[10] -pin read_data2_i O[10]
load net inp_b[11] -attr @rip(#000000) O[11] -pin aalu inp_b[11] -pin read_data2_i O[11]
load net inp_b[12] -attr @rip(#000000) O[12] -pin aalu inp_b[12] -pin read_data2_i O[12]
load net inp_b[13] -attr @rip(#000000) O[13] -pin aalu inp_b[13] -pin read_data2_i O[13]
load net inp_b[14] -attr @rip(#000000) O[14] -pin aalu inp_b[14] -pin read_data2_i O[14]
load net inp_b[15] -attr @rip(#000000) O[15] -pin aalu inp_b[15] -pin read_data2_i O[15]
load net inp_b[16] -attr @rip(#000000) O[16] -pin aalu inp_b[16] -pin read_data2_i O[16]
load net inp_b[17] -attr @rip(#000000) O[17] -pin aalu inp_b[17] -pin read_data2_i O[17]
load net inp_b[18] -attr @rip(#000000) O[18] -pin aalu inp_b[18] -pin read_data2_i O[18]
load net inp_b[19] -attr @rip(#000000) O[19] -pin aalu inp_b[19] -pin read_data2_i O[19]
load net inp_b[1] -attr @rip(#000000) O[1] -pin aalu inp_b[1] -pin read_data2_i O[1]
load net inp_b[20] -attr @rip(#000000) O[20] -pin aalu inp_b[20] -pin read_data2_i O[20]
load net inp_b[21] -attr @rip(#000000) O[21] -pin aalu inp_b[21] -pin read_data2_i O[21]
load net inp_b[22] -attr @rip(#000000) O[22] -pin aalu inp_b[22] -pin read_data2_i O[22]
load net inp_b[23] -attr @rip(#000000) O[23] -pin aalu inp_b[23] -pin read_data2_i O[23]
load net inp_b[24] -attr @rip(#000000) O[24] -pin aalu inp_b[24] -pin read_data2_i O[24]
load net inp_b[25] -attr @rip(#000000) O[25] -pin aalu inp_b[25] -pin read_data2_i O[25]
load net inp_b[26] -attr @rip(#000000) O[26] -pin aalu inp_b[26] -pin read_data2_i O[26]
load net inp_b[27] -attr @rip(#000000) O[27] -pin aalu inp_b[27] -pin read_data2_i O[27]
load net inp_b[28] -attr @rip(#000000) O[28] -pin aalu inp_b[28] -pin read_data2_i O[28]
load net inp_b[29] -attr @rip(#000000) O[29] -pin aalu inp_b[29] -pin read_data2_i O[29]
load net inp_b[2] -attr @rip(#000000) O[2] -pin aalu inp_b[2] -pin read_data2_i O[2]
load net inp_b[30] -attr @rip(#000000) O[30] -pin aalu inp_b[30] -pin read_data2_i O[30]
load net inp_b[31] -attr @rip(#000000) O[31] -pin aalu inp_b[31] -pin read_data2_i O[31]
load net inp_b[3] -attr @rip(#000000) O[3] -pin aalu inp_b[3] -pin read_data2_i O[3]
load net inp_b[4] -attr @rip(#000000) O[4] -pin aalu inp_b[4] -pin read_data2_i O[4]
load net inp_b[5] -attr @rip(#000000) O[5] -pin aalu inp_b[5] -pin read_data2_i O[5]
load net inp_b[6] -attr @rip(#000000) O[6] -pin aalu inp_b[6] -pin read_data2_i O[6]
load net inp_b[7] -attr @rip(#000000) O[7] -pin aalu inp_b[7] -pin read_data2_i O[7]
load net inp_b[8] -attr @rip(#000000) O[8] -pin aalu inp_b[8] -pin read_data2_i O[8]
load net inp_b[9] -attr @rip(#000000) O[9] -pin aalu inp_b[9] -pin read_data2_i O[9]
load net jump -pin PC_4beqj_i S -pin control jump
netloc jump 1 2 3 720 860 NJ 860 NJ
load net mem_read -pin control mem_read -pin ssram Read
netloc mem_read 1 2 1 800 410n
load net mem_to_reg -pin control mem_to_reg -pin reg_write_data_i S
netloc mem_to_reg 1 2 2 760J 330 1180
load net mem_write -pin control mem_write -pin ssram Write
netloc mem_write 1 2 1 760 450n
load net opcode[0] -attr @rip(#000000) instruction[26] -pin Instruction_Memory instruction[26] -pin control opcode[0]
load net opcode[1] -attr @rip(#000000) instruction[27] -pin Instruction_Memory instruction[27] -pin control opcode[1]
load net opcode[2] -attr @rip(#000000) instruction[28] -pin Instruction_Memory instruction[28] -pin control opcode[2]
load net opcode[3] -attr @rip(#000000) instruction[29] -pin Instruction_Memory instruction[29] -pin control opcode[3]
load net opcode[4] -attr @rip(#000000) instruction[30] -pin Instruction_Memory instruction[30] -pin control opcode[4]
load net opcode[5] -attr @rip(#000000) instruction[31] -pin Instruction_Memory instruction[31] -pin control opcode[5]
load net pc_out[0] -attr @rip(#000000) 0 -pin Instruction_Memory inst_add[0] -pin pc_current_reg[5:0] Q[0] -port pc_out[0] -pin plusOp_i I0[0]
load net pc_out[1] -attr @rip(#000000) 1 -pin Instruction_Memory inst_add[1] -pin pc_current_reg[5:0] Q[1] -port pc_out[1] -pin plusOp_i I0[1]
load net pc_out[2] -attr @rip(#000000) 2 -pin Instruction_Memory inst_add[2] -pin pc_current_reg[5:0] Q[2] -port pc_out[2] -pin plusOp_i I0[2]
load net pc_out[3] -attr @rip(#000000) 3 -pin Instruction_Memory inst_add[3] -pin pc_current_reg[5:0] Q[3] -port pc_out[3] -pin plusOp_i I0[3]
load net pc_out[4] -attr @rip(#000000) 4 -pin Instruction_Memory inst_add[4] -pin pc_current_reg[5:0] Q[4] -port pc_out[4] -pin plusOp_i I0[4]
load net pc_out[5] -attr @rip(#000000) 5 -pin Instruction_Memory inst_add[5] -pin pc_current_reg[5:0] Q[5] -port pc_out[5] -pin plusOp_i I0[5]
load net plusOp[0] -attr @rip(#000000) O[0] -pin PC_4branch_i I1[0] -pin plusOp_i O[0]
load net plusOp[1] -attr @rip(#000000) O[1] -pin PC_4branch_i I1[1] -pin plusOp_i O[1]
load net plusOp[2] -attr @rip(#000000) O[2] -pin PC_4branch_i I1[2] -pin plusOp_i O[2]
load net plusOp[3] -attr @rip(#000000) O[3] -pin PC_4branch_i I1[3] -pin plusOp_i O[3]
load net plusOp[4] -attr @rip(#000000) O[4] -pin PC_4branch_i I1[4] -pin plusOp_i O[4]
load net plusOp[5] -attr @rip(#000000) O[5] -pin PC_4branch_i I1[5] -pin plusOp_i O[5]
load net reg_dst -pin control reg_dst -pin reg_write_dest_i S
netloc reg_dst 1 2 2 740 550 1140J
load net reg_read_addr_1[0] -attr @rip(#000000) instruction[21] -pin Instruction_Memory instruction[21] -pin register_file reg_read_addr_1[0]
load net reg_read_addr_1[1] -attr @rip(#000000) instruction[22] -pin Instruction_Memory instruction[22] -pin register_file reg_read_addr_1[1]
load net reg_read_addr_1[2] -attr @rip(#000000) instruction[23] -pin Instruction_Memory instruction[23] -pin register_file reg_read_addr_1[2]
load net reg_read_addr_1[3] -attr @rip(#000000) instruction[24] -pin Instruction_Memory instruction[24] -pin register_file reg_read_addr_1[3]
load net reg_read_addr_1[4] -attr @rip(#000000) instruction[25] -pin Instruction_Memory instruction[25] -pin register_file reg_read_addr_1[4]
load net reg_read_addr_2[0] -attr @rip(#000000) instruction[16] -pin Instruction_Memory instruction[16] -pin reg_write_dest_i I1[0] -pin register_file reg_read_addr_2[0]
load net reg_read_addr_2[1] -attr @rip(#000000) instruction[17] -pin Instruction_Memory instruction[17] -pin reg_write_dest_i I1[1] -pin register_file reg_read_addr_2[1]
load net reg_read_addr_2[2] -attr @rip(#000000) instruction[18] -pin Instruction_Memory instruction[18] -pin reg_write_dest_i I1[2] -pin register_file reg_read_addr_2[2]
load net reg_read_addr_2[3] -attr @rip(#000000) instruction[19] -pin Instruction_Memory instruction[19] -pin reg_write_dest_i I1[3] -pin register_file reg_read_addr_2[3]
load net reg_read_addr_2[4] -attr @rip(#000000) instruction[20] -pin Instruction_Memory instruction[20] -pin reg_write_dest_i I1[4] -pin register_file reg_read_addr_2[4]
load net reg_read_data_1[0] -attr @rip(#000000) reg_read_data_1[0] -pin aalu inp_a[0] -pin register_file reg_read_data_1[0]
load net reg_read_data_1[10] -attr @rip(#000000) reg_read_data_1[10] -pin aalu inp_a[10] -pin register_file reg_read_data_1[10]
load net reg_read_data_1[11] -attr @rip(#000000) reg_read_data_1[11] -pin aalu inp_a[11] -pin register_file reg_read_data_1[11]
load net reg_read_data_1[12] -attr @rip(#000000) reg_read_data_1[12] -pin aalu inp_a[12] -pin register_file reg_read_data_1[12]
load net reg_read_data_1[13] -attr @rip(#000000) reg_read_data_1[13] -pin aalu inp_a[13] -pin register_file reg_read_data_1[13]
load net reg_read_data_1[14] -attr @rip(#000000) reg_read_data_1[14] -pin aalu inp_a[14] -pin register_file reg_read_data_1[14]
load net reg_read_data_1[15] -attr @rip(#000000) reg_read_data_1[15] -pin aalu inp_a[15] -pin register_file reg_read_data_1[15]
load net reg_read_data_1[16] -attr @rip(#000000) reg_read_data_1[16] -pin aalu inp_a[16] -pin register_file reg_read_data_1[16]
load net reg_read_data_1[17] -attr @rip(#000000) reg_read_data_1[17] -pin aalu inp_a[17] -pin register_file reg_read_data_1[17]
load net reg_read_data_1[18] -attr @rip(#000000) reg_read_data_1[18] -pin aalu inp_a[18] -pin register_file reg_read_data_1[18]
load net reg_read_data_1[19] -attr @rip(#000000) reg_read_data_1[19] -pin aalu inp_a[19] -pin register_file reg_read_data_1[19]
load net reg_read_data_1[1] -attr @rip(#000000) reg_read_data_1[1] -pin aalu inp_a[1] -pin register_file reg_read_data_1[1]
load net reg_read_data_1[20] -attr @rip(#000000) reg_read_data_1[20] -pin aalu inp_a[20] -pin register_file reg_read_data_1[20]
load net reg_read_data_1[21] -attr @rip(#000000) reg_read_data_1[21] -pin aalu inp_a[21] -pin register_file reg_read_data_1[21]
load net reg_read_data_1[22] -attr @rip(#000000) reg_read_data_1[22] -pin aalu inp_a[22] -pin register_file reg_read_data_1[22]
load net reg_read_data_1[23] -attr @rip(#000000) reg_read_data_1[23] -pin aalu inp_a[23] -pin register_file reg_read_data_1[23]
load net reg_read_data_1[24] -attr @rip(#000000) reg_read_data_1[24] -pin aalu inp_a[24] -pin register_file reg_read_data_1[24]
load net reg_read_data_1[25] -attr @rip(#000000) reg_read_data_1[25] -pin aalu inp_a[25] -pin register_file reg_read_data_1[25]
load net reg_read_data_1[26] -attr @rip(#000000) reg_read_data_1[26] -pin aalu inp_a[26] -pin register_file reg_read_data_1[26]
load net reg_read_data_1[27] -attr @rip(#000000) reg_read_data_1[27] -pin aalu inp_a[27] -pin register_file reg_read_data_1[27]
load net reg_read_data_1[28] -attr @rip(#000000) reg_read_data_1[28] -pin aalu inp_a[28] -pin register_file reg_read_data_1[28]
load net reg_read_data_1[29] -attr @rip(#000000) reg_read_data_1[29] -pin aalu inp_a[29] -pin register_file reg_read_data_1[29]
load net reg_read_data_1[2] -attr @rip(#000000) reg_read_data_1[2] -pin aalu inp_a[2] -pin register_file reg_read_data_1[2]
load net reg_read_data_1[30] -attr @rip(#000000) reg_read_data_1[30] -pin aalu inp_a[30] -pin register_file reg_read_data_1[30]
load net reg_read_data_1[31] -attr @rip(#000000) reg_read_data_1[31] -pin aalu inp_a[31] -pin register_file reg_read_data_1[31]
load net reg_read_data_1[3] -attr @rip(#000000) reg_read_data_1[3] -pin aalu inp_a[3] -pin register_file reg_read_data_1[3]
load net reg_read_data_1[4] -attr @rip(#000000) reg_read_data_1[4] -pin aalu inp_a[4] -pin register_file reg_read_data_1[4]
load net reg_read_data_1[5] -attr @rip(#000000) reg_read_data_1[5] -pin aalu inp_a[5] -pin register_file reg_read_data_1[5]
load net reg_read_data_1[6] -attr @rip(#000000) reg_read_data_1[6] -pin aalu inp_a[6] -pin register_file reg_read_data_1[6]
load net reg_read_data_1[7] -attr @rip(#000000) reg_read_data_1[7] -pin aalu inp_a[7] -pin register_file reg_read_data_1[7]
load net reg_read_data_1[8] -attr @rip(#000000) reg_read_data_1[8] -pin aalu inp_a[8] -pin register_file reg_read_data_1[8]
load net reg_read_data_1[9] -attr @rip(#000000) reg_read_data_1[9] -pin aalu inp_a[9] -pin register_file reg_read_data_1[9]
load net reg_read_data_2[0] -attr @rip(#000000) reg_read_data_2[0] -pin read_data2_i I1[0] -pin register_file reg_read_data_2[0] -pin ssram Data_in[0]
load net reg_read_data_2[10] -attr @rip(#000000) reg_read_data_2[10] -pin read_data2_i I1[10] -pin register_file reg_read_data_2[10] -pin ssram Data_in[10]
load net reg_read_data_2[11] -attr @rip(#000000) reg_read_data_2[11] -pin read_data2_i I1[11] -pin register_file reg_read_data_2[11] -pin ssram Data_in[11]
load net reg_read_data_2[12] -attr @rip(#000000) reg_read_data_2[12] -pin read_data2_i I1[12] -pin register_file reg_read_data_2[12] -pin ssram Data_in[12]
load net reg_read_data_2[13] -attr @rip(#000000) reg_read_data_2[13] -pin read_data2_i I1[13] -pin register_file reg_read_data_2[13] -pin ssram Data_in[13]
load net reg_read_data_2[14] -attr @rip(#000000) reg_read_data_2[14] -pin read_data2_i I1[14] -pin register_file reg_read_data_2[14] -pin ssram Data_in[14]
load net reg_read_data_2[15] -attr @rip(#000000) reg_read_data_2[15] -pin read_data2_i I1[15] -pin register_file reg_read_data_2[15] -pin ssram Data_in[15]
load net reg_read_data_2[16] -attr @rip(#000000) reg_read_data_2[16] -pin read_data2_i I1[16] -pin register_file reg_read_data_2[16] -pin ssram Data_in[16]
load net reg_read_data_2[17] -attr @rip(#000000) reg_read_data_2[17] -pin read_data2_i I1[17] -pin register_file reg_read_data_2[17] -pin ssram Data_in[17]
load net reg_read_data_2[18] -attr @rip(#000000) reg_read_data_2[18] -pin read_data2_i I1[18] -pin register_file reg_read_data_2[18] -pin ssram Data_in[18]
load net reg_read_data_2[19] -attr @rip(#000000) reg_read_data_2[19] -pin read_data2_i I1[19] -pin register_file reg_read_data_2[19] -pin ssram Data_in[19]
load net reg_read_data_2[1] -attr @rip(#000000) reg_read_data_2[1] -pin read_data2_i I1[1] -pin register_file reg_read_data_2[1] -pin ssram Data_in[1]
load net reg_read_data_2[20] -attr @rip(#000000) reg_read_data_2[20] -pin read_data2_i I1[20] -pin register_file reg_read_data_2[20] -pin ssram Data_in[20]
load net reg_read_data_2[21] -attr @rip(#000000) reg_read_data_2[21] -pin read_data2_i I1[21] -pin register_file reg_read_data_2[21] -pin ssram Data_in[21]
load net reg_read_data_2[22] -attr @rip(#000000) reg_read_data_2[22] -pin read_data2_i I1[22] -pin register_file reg_read_data_2[22] -pin ssram Data_in[22]
load net reg_read_data_2[23] -attr @rip(#000000) reg_read_data_2[23] -pin read_data2_i I1[23] -pin register_file reg_read_data_2[23] -pin ssram Data_in[23]
load net reg_read_data_2[24] -attr @rip(#000000) reg_read_data_2[24] -pin read_data2_i I1[24] -pin register_file reg_read_data_2[24] -pin ssram Data_in[24]
load net reg_read_data_2[25] -attr @rip(#000000) reg_read_data_2[25] -pin read_data2_i I1[25] -pin register_file reg_read_data_2[25] -pin ssram Data_in[25]
load net reg_read_data_2[26] -attr @rip(#000000) reg_read_data_2[26] -pin read_data2_i I1[26] -pin register_file reg_read_data_2[26] -pin ssram Data_in[26]
load net reg_read_data_2[27] -attr @rip(#000000) reg_read_data_2[27] -pin read_data2_i I1[27] -pin register_file reg_read_data_2[27] -pin ssram Data_in[27]
load net reg_read_data_2[28] -attr @rip(#000000) reg_read_data_2[28] -pin read_data2_i I1[28] -pin register_file reg_read_data_2[28] -pin ssram Data_in[28]
load net reg_read_data_2[29] -attr @rip(#000000) reg_read_data_2[29] -pin read_data2_i I1[29] -pin register_file reg_read_data_2[29] -pin ssram Data_in[29]
load net reg_read_data_2[2] -attr @rip(#000000) reg_read_data_2[2] -pin read_data2_i I1[2] -pin register_file reg_read_data_2[2] -pin ssram Data_in[2]
load net reg_read_data_2[30] -attr @rip(#000000) reg_read_data_2[30] -pin read_data2_i I1[30] -pin register_file reg_read_data_2[30] -pin ssram Data_in[30]
load net reg_read_data_2[31] -attr @rip(#000000) reg_read_data_2[31] -pin read_data2_i I1[31] -pin register_file reg_read_data_2[31] -pin ssram Data_in[31]
load net reg_read_data_2[3] -attr @rip(#000000) reg_read_data_2[3] -pin read_data2_i I1[3] -pin register_file reg_read_data_2[3] -pin ssram Data_in[3]
load net reg_read_data_2[4] -attr @rip(#000000) reg_read_data_2[4] -pin read_data2_i I1[4] -pin register_file reg_read_data_2[4] -pin ssram Data_in[4]
load net reg_read_data_2[5] -attr @rip(#000000) reg_read_data_2[5] -pin read_data2_i I1[5] -pin register_file reg_read_data_2[5] -pin ssram Data_in[5]
load net reg_read_data_2[6] -attr @rip(#000000) reg_read_data_2[6] -pin read_data2_i I1[6] -pin register_file reg_read_data_2[6] -pin ssram Data_in[6]
load net reg_read_data_2[7] -attr @rip(#000000) reg_read_data_2[7] -pin read_data2_i I1[7] -pin register_file reg_read_data_2[7] -pin ssram Data_in[7]
load net reg_read_data_2[8] -attr @rip(#000000) reg_read_data_2[8] -pin read_data2_i I1[8] -pin register_file reg_read_data_2[8] -pin ssram Data_in[8]
load net reg_read_data_2[9] -attr @rip(#000000) reg_read_data_2[9] -pin read_data2_i I1[9] -pin register_file reg_read_data_2[9] -pin ssram Data_in[9]
load net reg_write -pin control reg_write -pin register_file reg_write_en
netloc reg_write 1 2 3 680 690 NJ 690 1510J
load net reg_write_data[0] -attr @rip(#000000) O[0] -pin reg_write_data_i O[0] -pin register_file reg_write_data[0]
load net reg_write_data[10] -attr @rip(#000000) O[10] -pin reg_write_data_i O[10] -pin register_file reg_write_data[10]
load net reg_write_data[11] -attr @rip(#000000) O[11] -pin reg_write_data_i O[11] -pin register_file reg_write_data[11]
load net reg_write_data[12] -attr @rip(#000000) O[12] -pin reg_write_data_i O[12] -pin register_file reg_write_data[12]
load net reg_write_data[13] -attr @rip(#000000) O[13] -pin reg_write_data_i O[13] -pin register_file reg_write_data[13]
load net reg_write_data[14] -attr @rip(#000000) O[14] -pin reg_write_data_i O[14] -pin register_file reg_write_data[14]
load net reg_write_data[15] -attr @rip(#000000) O[15] -pin reg_write_data_i O[15] -pin register_file reg_write_data[15]
load net reg_write_data[16] -attr @rip(#000000) O[16] -pin reg_write_data_i O[16] -pin register_file reg_write_data[16]
load net reg_write_data[17] -attr @rip(#000000) O[17] -pin reg_write_data_i O[17] -pin register_file reg_write_data[17]
load net reg_write_data[18] -attr @rip(#000000) O[18] -pin reg_write_data_i O[18] -pin register_file reg_write_data[18]
load net reg_write_data[19] -attr @rip(#000000) O[19] -pin reg_write_data_i O[19] -pin register_file reg_write_data[19]
load net reg_write_data[1] -attr @rip(#000000) O[1] -pin reg_write_data_i O[1] -pin register_file reg_write_data[1]
load net reg_write_data[20] -attr @rip(#000000) O[20] -pin reg_write_data_i O[20] -pin register_file reg_write_data[20]
load net reg_write_data[21] -attr @rip(#000000) O[21] -pin reg_write_data_i O[21] -pin register_file reg_write_data[21]
load net reg_write_data[22] -attr @rip(#000000) O[22] -pin reg_write_data_i O[22] -pin register_file reg_write_data[22]
load net reg_write_data[23] -attr @rip(#000000) O[23] -pin reg_write_data_i O[23] -pin register_file reg_write_data[23]
load net reg_write_data[24] -attr @rip(#000000) O[24] -pin reg_write_data_i O[24] -pin register_file reg_write_data[24]
load net reg_write_data[25] -attr @rip(#000000) O[25] -pin reg_write_data_i O[25] -pin register_file reg_write_data[25]
load net reg_write_data[26] -attr @rip(#000000) O[26] -pin reg_write_data_i O[26] -pin register_file reg_write_data[26]
load net reg_write_data[27] -attr @rip(#000000) O[27] -pin reg_write_data_i O[27] -pin register_file reg_write_data[27]
load net reg_write_data[28] -attr @rip(#000000) O[28] -pin reg_write_data_i O[28] -pin register_file reg_write_data[28]
load net reg_write_data[29] -attr @rip(#000000) O[29] -pin reg_write_data_i O[29] -pin register_file reg_write_data[29]
load net reg_write_data[2] -attr @rip(#000000) O[2] -pin reg_write_data_i O[2] -pin register_file reg_write_data[2]
load net reg_write_data[30] -attr @rip(#000000) O[30] -pin reg_write_data_i O[30] -pin register_file reg_write_data[30]
load net reg_write_data[31] -attr @rip(#000000) O[31] -pin reg_write_data_i O[31] -pin register_file reg_write_data[31]
load net reg_write_data[3] -attr @rip(#000000) O[3] -pin reg_write_data_i O[3] -pin register_file reg_write_data[3]
load net reg_write_data[4] -attr @rip(#000000) O[4] -pin reg_write_data_i O[4] -pin register_file reg_write_data[4]
load net reg_write_data[5] -attr @rip(#000000) O[5] -pin reg_write_data_i O[5] -pin register_file reg_write_data[5]
load net reg_write_data[6] -attr @rip(#000000) O[6] -pin reg_write_data_i O[6] -pin register_file reg_write_data[6]
load net reg_write_data[7] -attr @rip(#000000) O[7] -pin reg_write_data_i O[7] -pin register_file reg_write_data[7]
load net reg_write_data[8] -attr @rip(#000000) O[8] -pin reg_write_data_i O[8] -pin register_file reg_write_data[8]
load net reg_write_data[9] -attr @rip(#000000) O[9] -pin reg_write_data_i O[9] -pin register_file reg_write_data[9]
load net reg_write_dest[0] -attr @rip(#000000) O[0] -pin reg_write_dest_i O[0] -pin register_file reg_write_dest[0]
load net reg_write_dest[1] -attr @rip(#000000) O[1] -pin reg_write_dest_i O[1] -pin register_file reg_write_dest[1]
load net reg_write_dest[2] -attr @rip(#000000) O[2] -pin reg_write_dest_i O[2] -pin register_file reg_write_dest[2]
load net reg_write_dest[3] -attr @rip(#000000) O[3] -pin reg_write_dest_i O[3] -pin register_file reg_write_dest[3]
load net reg_write_dest[4] -attr @rip(#000000) O[4] -pin reg_write_dest_i O[4] -pin register_file reg_write_dest[4]
load net reset -pin control reset -pin pc_current_reg[5:0] CLR -pin register_file rst -port reset
netloc reset 1 0 6 NJ 500 380 710 NJ 710 NJ 710 1550 740 NJ
load net sign_flag -pin aalu sign_flag -pin f10_i__0 I1 -pin f11_i__0 I1
netloc sign_flag 1 0 7 40 230 340 230 NJ 230 NJ 230 NJ 230 NJ 230 2260
load net zero_flag -pin aalu zero_flag -pin f11_i I1
netloc zero_flag 1 0 7 40 110 NJ 110 NJ 110 NJ 110 NJ 110 NJ 110 2280
load netBundle @alu_result 32 alu_result[31] alu_result[30] alu_result[29] alu_result[28] alu_result[27] alu_result[26] alu_result[25] alu_result[24] alu_result[23] alu_result[22] alu_result[21] alu_result[20] alu_result[19] alu_result[18] alu_result[17] alu_result[16] alu_result[15] alu_result[14] alu_result[13] alu_result[12] alu_result[11] alu_result[10] alu_result[9] alu_result[8] alu_result[7] alu_result[6] alu_result[5] alu_result[4] alu_result[3] alu_result[2] alu_result[1] alu_result[0] -autobundled
netbloc @alu_result 1 2 5 840 370 1140 490 NJ 490 NJ 490 2300
load netBundle @pc_out 6 pc_out[5] pc_out[4] pc_out[3] pc_out[2] pc_out[1] pc_out[0] -autobundled
netbloc @pc_out 1 0 7 40 730 NJ 730 660 910 NJ 910 NJ 910 NJ 910 2260
load netBundle @ALU_Control 3 ALU_Control[2] ALU_Control[1] ALU_Control[0] -autobundled
netbloc @ALU_Control 1 5 1 NJ 290
load netBundle @opcode,reg_read_addr_1 16 opcode[5] opcode[4] opcode[3] opcode[2] opcode[1] opcode[0] reg_read_addr_1[4] reg_read_addr_1[3] reg_read_addr_1[2] reg_read_addr_1[1] reg_read_addr_1[0] reg_read_addr_2[4] reg_read_addr_2[3] reg_read_addr_2[2] reg_read_addr_2[1] reg_read_addr_2[0] -autobundled
netbloc @opcode,reg_read_addr_1 1 1 4 360 650 NJ 650 1160 670 1430
load netBundle @PC_4beqj 6 PC_4beqj[5] PC_4beqj[4] PC_4beqj[3] PC_4beqj[2] PC_4beqj[1] PC_4beqj[0] -autobundled
netbloc @PC_4beqj 1 5 1 1910 800n
load netBundle @PC_4branch 6 PC_4branch[5] PC_4branch[4] PC_4branch[3] PC_4branch[2] PC_4branch[1] PC_4branch[0] -autobundled
netbloc @PC_4branch 1 4 1 1430 770n
load netBundle @alu_op 3 alu_op[2] alu_op[1] alu_op[0] -autobundled
netbloc @alu_op 1 2 3 N 290 NJ 290 NJ
load netBundle @plusOp 6 plusOp[5] plusOp[4] plusOp[3] plusOp[2] plusOp[1] plusOp[0] -autobundled
netbloc @plusOp 1 3 1 NJ 780
load netBundle @inp_b 32 inp_b[31] inp_b[30] inp_b[29] inp_b[28] inp_b[27] inp_b[26] inp_b[25] inp_b[24] inp_b[23] inp_b[22] inp_b[21] inp_b[20] inp_b[19] inp_b[18] inp_b[17] inp_b[16] inp_b[15] inp_b[14] inp_b[13] inp_b[12] inp_b[11] inp_b[10] inp_b[9] inp_b[8] inp_b[7] inp_b[6] inp_b[5] inp_b[4] inp_b[3] inp_b[2] inp_b[1] inp_b[0] -autobundled
netbloc @inp_b 1 5 1 1950 330n
load netBundle @reg_write_data 32 reg_write_data[31] reg_write_data[30] reg_write_data[29] reg_write_data[28] reg_write_data[27] reg_write_data[26] reg_write_data[25] reg_write_data[24] reg_write_data[23] reg_write_data[22] reg_write_data[21] reg_write_data[20] reg_write_data[19] reg_write_data[18] reg_write_data[17] reg_write_data[16] reg_write_data[15] reg_write_data[14] reg_write_data[13] reg_write_data[12] reg_write_data[11] reg_write_data[10] reg_write_data[9] reg_write_data[8] reg_write_data[7] reg_write_data[6] reg_write_data[5] reg_write_data[4] reg_write_data[3] reg_write_data[2] reg_write_data[1] reg_write_data[0] -autobundled
netbloc @reg_write_data 1 4 1 1490 410n
load netBundle @reg_write_dest 5 reg_write_dest[4] reg_write_dest[3] reg_write_dest[2] reg_write_dest[1] reg_write_dest[0] -autobundled
netbloc @reg_write_dest 1 4 1 1470 550n
load netBundle @reg_read_data_1 32 reg_read_data_1[31] reg_read_data_1[30] reg_read_data_1[29] reg_read_data_1[28] reg_read_data_1[27] reg_read_data_1[26] reg_read_data_1[25] reg_read_data_1[24] reg_read_data_1[23] reg_read_data_1[22] reg_read_data_1[21] reg_read_data_1[20] reg_read_data_1[19] reg_read_data_1[18] reg_read_data_1[17] reg_read_data_1[16] reg_read_data_1[15] reg_read_data_1[14] reg_read_data_1[13] reg_read_data_1[12] reg_read_data_1[11] reg_read_data_1[10] reg_read_data_1[9] reg_read_data_1[8] reg_read_data_1[7] reg_read_data_1[6] reg_read_data_1[5] reg_read_data_1[4] reg_read_data_1[3] reg_read_data_1[2] reg_read_data_1[1] reg_read_data_1[0] -autobundled
netbloc @reg_read_data_1 1 5 1 1930 310n
load netBundle @reg_read_data_2 32 reg_read_data_2[31] reg_read_data_2[30] reg_read_data_2[29] reg_read_data_2[28] reg_read_data_2[27] reg_read_data_2[26] reg_read_data_2[25] reg_read_data_2[24] reg_read_data_2[23] reg_read_data_2[22] reg_read_data_2[21] reg_read_data_2[20] reg_read_data_2[19] reg_read_data_2[18] reg_read_data_2[17] reg_read_data_2[16] reg_read_data_2[15] reg_read_data_2[14] reg_read_data_2[13] reg_read_data_2[12] reg_read_data_2[11] reg_read_data_2[10] reg_read_data_2[9] reg_read_data_2[8] reg_read_data_2[7] reg_read_data_2[6] reg_read_data_2[5] reg_read_data_2[4] reg_read_data_2[3] reg_read_data_2[2] reg_read_data_2[1] reg_read_data_2[0] -autobundled
netbloc @reg_read_data_2 1 2 4 820 350 NJ 350 1510 510 1910
load netBundle @Data_out 32 Data_out[31] Data_out[30] Data_out[29] Data_out[28] Data_out[27] Data_out[26] Data_out[25] Data_out[24] Data_out[23] Data_out[22] Data_out[21] Data_out[20] Data_out[19] Data_out[18] Data_out[17] Data_out[16] Data_out[15] Data_out[14] Data_out[13] Data_out[12] Data_out[11] Data_out[10] Data_out[9] Data_out[8] Data_out[7] Data_out[6] Data_out[5] Data_out[4] Data_out[3] Data_out[2] Data_out[1] Data_out[0] -autobundled
netbloc @Data_out 1 3 1 1120 400n
levelinfo -pg 1 0 140 500 950 1310 1700 2070 2320
pagesize -pg 1 -db -bbox -sgen -80 0 2470 920
show
zoom 0.831411
scrollpos -67 151
#
# initialize ictrl to current module mips_vhdl_32bit work:mips_vhdl_32bit:NOFILE
ictrl init topinfo |
