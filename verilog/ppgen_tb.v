module ppgen_tb ( );

wire t_z;
reg t_a,t_b, t_ppgen_en, t_ppgen_en_n;

pp_gen  ppgen( .Z(t_z), .A(t_a), .B_0(t_b), .ppgen_en(t_ppgen_en), .ppgen_en_n(t_ppgen_en_n)   );


initial
begin
    t_a = 0;
    t_b = 0;
    t_ppgen_en =1;
    t_ppgen_en_n =0;
    #10;
    t_a = 0;
    t_b = 0;
    #10;
    t_a = 1;
    t_b = 0;
    #10;
    t_a = 0;
    t_b = 1;
    #10;
    t_a = 1;
    t_b = 1;
    #10;
    t_ppgen_en =0;
    t_ppgen_en_n =1; 
    t_a = 0;
    t_b = 0;
    #10;
    t_a = 1;
    t_b = 0;
    #10;
    t_a = 0;
    t_b = 1;
    #10;
    t_a = 1;
    t_b = 1;
    #20;
    
        $stop;

end
endmodule


