// test for the top level log shifter module Shifter_32b
module t_Shifter_32b();

	wire [31:0] Z;
	reg [31:0] B;
	reg shift_en, shift_en_not, LEFT_1, LEFT_1_NOT, LEFT_2, LEFT_2_NOT, LEFT_4, LEFT_4_NOT, LEFT_8, LEFT_8_NOT, LEFT_16, LEFT_16_NOT, NO_SHIFT_1, NO_SHIFT_1_NOT, NO_SHIFT_2, 			NO_SHIFT_2_NOT, NO_SHIFT_4, NO_SHIFT_4_NOT, NO_SHIFT_8, NO_SHIFT_8_NOT, NO_SHIFT_16, NO_SHIFT_16_NOT, RIGHT_1, RIGHT_1_NOT, RIGHT_2, RIGHT_2_NOT, RIGHT_4, RIGHT_4_NOT, 		RIGHT_8, RIGHT_8_NOT, RIGHT_16, RIGHT_16_NOT;	

	Shifter_32b DUT(
			.Z(Z), .B(B), 
			.LEFT_1(LEFT_1), .LEFT_1_NOT(LEFT_1_NOT), .LEFT_2(LEFT_2), .LEFT_2_NOT(LEFT_2_NOT), 
			.LEFT_4(LEFT_4), .LEFT_4_NOT(LEFT_4_NOT), .LEFT_8(LEFT_8), .LEFT_8_NOT(LEFT_8_NOT), 
			.LEFT_16(LEFT_16), .LEFT_16_NOT(LEFT_16_NOT), 
			.NO_SHIFT_1(NO_SHIFT_1), .NO_SHIFT_1_NOT(NO_SHIFT_1_NOT), .NO_SHIFT_2(NO_SHIFT_2), .NO_SHIFT_2_NOT(NO_SHIFT_2_NOT), 
			.NO_SHIFT_4(NO_SHIFT_4), .NO_SHIFT_4_NOT(NO_SHIFT_4_NOT), .NO_SHIFT_8(NO_SHIFT_8), .NO_SHIFT_8_NOT(NO_SHIFT_8_NOT), 
			.NO_SHIFT_16(NO_SHIFT_16), .NO_SHIFT_16_NOT(NO_SHIFT_16_NOT), 
			.RIGHT_1(RIGHT_1), .RIGHT_1_NOT(RIGHT_1_NOT), .RIGHT_2(RIGHT_2), .RIGHT_2_NOT(RIGHT_2_NOT), 
			.RIGHT_4(RIGHT_4), .RIGHT_4_NOT(RIGHT_4_NOT), .RIGHT_8(RIGHT_8), .RIGHT_8_NOT(RIGHT_8_NOT), 
			.RIGHT_16(RIGHT_16), .RIGHT_16_NOT(RIGHT_16_NOT), 
			.shift_en(shift_en), .shift_en_not(shift_en_not));

	initial begin

		// initialize values to shift left by 1
		B = 32'hDEADBEEF;

		LEFT_1 = 1;
		LEFT_1_NOT = 0;
		LEFT_2 = 0;
		LEFT_2_NOT = 1;
		LEFT_4= 0;
		LEFT_4_NOT= 1;
		LEFT_8= 0;
		LEFT_8_NOT= 1;
		LEFT_16= 0;
		LEFT_16_NOT= 1;

		NO_SHIFT_1= 0;
		NO_SHIFT_1_NOT= 1;
		NO_SHIFT_2= 1;
		NO_SHIFT_2_NOT= 0;
		NO_SHIFT_4= 1;
		NO_SHIFT_4_NOT= 0;
		NO_SHIFT_8= 1;
		NO_SHIFT_8_NOT= 0;
		NO_SHIFT_16= 1;
		NO_SHIFT_16_NOT= 0;

		RIGHT_1= 0;
		RIGHT_1_NOT= 1;
		RIGHT_2= 0;
		RIGHT_2_NOT= 1;
		RIGHT_4= 0;
		RIGHT_4_NOT= 1;
		RIGHT_8= 0;
		RIGHT_8_NOT= 1;
		RIGHT_16= 0;
		RIGHT_16_NOT= 1;

		shift_en= 1;
		shift_en_not = 0;	

		#2
		shift_en = 0;
		shift_en_not = 1;

		#2
		shift_en = 1;
		shift_en_not = 0;

		// shift left by 2
		#2
		LEFT_1 = 0;
		LEFT_1_NOT = 1;
		NO_SHIFT_1 = 1;
		NO_SHIFT_1_NOT = 1;
		LEFT_2 = 1;
		LEFT_2_NOT = 0;
		NO_SHIFT_2 = 0;
		NO_SHIFT_2_NOT = 1;

		// shift left by 4
		#2
		LEFT_2 = 0;
		LEFT_2_NOT = 1;
		NO_SHIFT_2 = 1;
		NO_SHIFT_2_NOT = 1;
		LEFT_4 = 1;
		LEFT_4_NOT = 0;
		NO_SHIFT_4 = 0;
		NO_SHIFT_4_NOT = 1;

		// shift left by 8
		#2
		LEFT_4 = 0;
		LEFT_4_NOT = 1;
		NO_SHIFT_4 = 1;
		NO_SHIFT_4_NOT = 1;
		LEFT_8 = 1;
		LEFT_8_NOT = 0;
		NO_SHIFT_8 = 0;
		NO_SHIFT_8_NOT = 1;

		// shift left by 16
		#2
		LEFT_8 = 0;
		LEFT_8_NOT = 1;
		NO_SHIFT_8 = 1;
		NO_SHIFT_8_NOT = 1;
		LEFT_16 = 1;
		LEFT_16_NOT = 0;
		NO_SHIFT_16 = 0;
		NO_SHIFT_16_NOT = 1;

		// shift left by 31
		#2
		LEFT_1 = 1;
		LEFT_1_NOT = 0;
		NO_SHIFT_1 = 0;
		NO_SHIFT_1_NOT = 1;
		LEFT_2 = 1;
		LEFT_2_NOT = 0;
		NO_SHIFT_2 = 0;
		NO_SHIFT_2_NOT = 1;
		LEFT_4 = 1;
		LEFT_4_NOT = 0;
		NO_SHIFT_4 = 0;
		NO_SHIFT_4_NOT = 1;
		LEFT_8 = 1;
		LEFT_8_NOT = 0;
		NO_SHIFT_8 = 0;
		NO_SHIFT_8_NOT = 1;
		LEFT_16 = 1;
		LEFT_16_NOT = 0;
		NO_SHIFT_16 = 0;
		NO_SHIFT_16_NOT = 1;

		// shift right by 31
		#2
		RIGHT_1 = 1;
		RIGHT_1_NOT = 0;
		LEFT_1 = 0;
		LEFT_1_NOT = 1;
		RIGHT_2 = 1;
		RIGHT_2_NOT = 0;
		LEFT_2 = 0;
		LEFT_2_NOT = 1;
		RIGHT_4 = 1;
		RIGHT_4_NOT = 0;
		LEFT_4 = 0;
		LEFT_4_NOT = 1;
		RIGHT_8 = 1;
		RIGHT_8_NOT = 0;
		LEFT_8 = 0;
		LEFT_8_NOT = 1;
		RIGHT_16 = 1;
		LEFT_16_NOT = 0;
		LEFT_16 = 0;
		LEFT_16_NOT = 1;

		// shift by 0
		#2
		NO_SHIFT_1 = 1;
		NO_SHIFT_1_NOT = 0;
		RIGHT_1 = 0;
		RIGHT_1_NOT = 1;
		NO_SHIFT_2 = 1;
		NO_SHIFT_2_NOT = 0;
		RIGHT_2 = 0;
		RIGHT_2_NOT = 1;
		NO_SHIFT_4 = 1;
		NO_SHIFT_4_NOT = 0;
		RIGHT_4 = 0;
		RIGHT_4_NOT = 1;
		NO_SHIFT_8 = 1;
		NO_SHIFT_8_NOT = 0;
		RIGHT_8 = 0;
		RIGHT_8_NOT = 1;
		NO_SHIFT_16 = 1;
		RIGHT_16_NOT = 0;
		RIGHT_16 = 0;
		RIGHT_16_NOT = 1;

		#2 $stop;
	end

endmodule
