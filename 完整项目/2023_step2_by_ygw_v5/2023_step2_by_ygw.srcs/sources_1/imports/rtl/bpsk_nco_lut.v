`timescale 1ns/1ps

// Combinational quarter-wave ROM.  Kept as a module (rather than a function)
// for compatibility with the Vivado 2018.3 synthesis engine.
module bpsk_quarter_sine (
    input wire [6:0] index,
    output reg signed [15:0] amplitude
);
    always @* begin
        case (index)
            7'd0: amplitude = 16'sd0;
            7'd1: amplitude = 16'sd804;
            7'd2: amplitude = 16'sd1608;
            7'd3: amplitude = 16'sd2410;
            7'd4: amplitude = 16'sd3212;
            7'd5: amplitude = 16'sd4011;
            7'd6: amplitude = 16'sd4808;
            7'd7: amplitude = 16'sd5602;
            7'd8: amplitude = 16'sd6393;
            7'd9: amplitude = 16'sd7179;
            7'd10: amplitude = 16'sd7962;
            7'd11: amplitude = 16'sd8739;
            7'd12: amplitude = 16'sd9512;
            7'd13: amplitude = 16'sd10278;
            7'd14: amplitude = 16'sd11039;
            7'd15: amplitude = 16'sd11793;
            7'd16: amplitude = 16'sd12539;
            7'd17: amplitude = 16'sd13279;
            7'd18: amplitude = 16'sd14010;
            7'd19: amplitude = 16'sd14732;
            7'd20: amplitude = 16'sd15446;
            7'd21: amplitude = 16'sd16151;
            7'd22: amplitude = 16'sd16846;
            7'd23: amplitude = 16'sd17530;
            7'd24: amplitude = 16'sd18204;
            7'd25: amplitude = 16'sd18868;
            7'd26: amplitude = 16'sd19519;
            7'd27: amplitude = 16'sd20159;
            7'd28: amplitude = 16'sd20787;
            7'd29: amplitude = 16'sd21403;
            7'd30: amplitude = 16'sd22005;
            7'd31: amplitude = 16'sd22594;
            7'd32: amplitude = 16'sd23170;
            7'd33: amplitude = 16'sd23731;
            7'd34: amplitude = 16'sd24279;
            7'd35: amplitude = 16'sd24811;
            7'd36: amplitude = 16'sd25329;
            7'd37: amplitude = 16'sd25832;
            7'd38: amplitude = 16'sd26319;
            7'd39: amplitude = 16'sd26790;
            7'd40: amplitude = 16'sd27245;
            7'd41: amplitude = 16'sd27683;
            7'd42: amplitude = 16'sd28105;
            7'd43: amplitude = 16'sd28510;
            7'd44: amplitude = 16'sd28898;
            7'd45: amplitude = 16'sd29268;
            7'd46: amplitude = 16'sd29621;
            7'd47: amplitude = 16'sd29956;
            7'd48: amplitude = 16'sd30273;
            7'd49: amplitude = 16'sd30571;
            7'd50: amplitude = 16'sd30852;
            7'd51: amplitude = 16'sd31113;
            7'd52: amplitude = 16'sd31356;
            7'd53: amplitude = 16'sd31580;
            7'd54: amplitude = 16'sd31785;
            7'd55: amplitude = 16'sd31971;
            7'd56: amplitude = 16'sd32137;
            7'd57: amplitude = 16'sd32285;
            7'd58: amplitude = 16'sd32412;
            7'd59: amplitude = 16'sd32521;
            7'd60: amplitude = 16'sd32609;
            7'd61: amplitude = 16'sd32678;
            7'd62: amplitude = 16'sd32728;
            7'd63: amplitude = 16'sd32757;
            7'd64: amplitude = 16'sd32767;
            default: amplitude = 16'sd0;
        endcase
    end
endmodule

// phase_in is unsigned Q0.24 turns; outputs are signed Q1.15.
module bpsk_nco_lut (
    input wire [23:0] phase_in,
    output wire signed [15:0] sin_out,
    output wire signed [15:0] cos_out
);
    wire [23:0] cos_phase = phase_in + 24'h400000;
    wire [1:0] sin_quadrant = phase_in[23:22];
    wire [1:0] cos_quadrant = cos_phase[23:22];
    wire [5:0] sin_offset = phase_in[21:16];
    wire [5:0] cos_offset = cos_phase[21:16];
    wire [6:0] sin_index = ((sin_quadrant==2'd1)||(sin_quadrant==2'd3)) ?
                           (7'd64-{1'b0,sin_offset}) : {1'b0,sin_offset};
    wire [6:0] cos_index = ((cos_quadrant==2'd1)||(cos_quadrant==2'd3)) ?
                           (7'd64-{1'b0,cos_offset}) : {1'b0,cos_offset};
    wire signed [15:0] sin_amplitude;
    wire signed [15:0] cos_amplitude;
    bpsk_quarter_sine u_sin_rom(.index(sin_index),.amplitude(sin_amplitude));
    bpsk_quarter_sine u_cos_rom(.index(cos_index),.amplitude(cos_amplitude));
    assign sin_out = ((sin_quadrant==2'd2)||(sin_quadrant==2'd3)) ?
                     -sin_amplitude : sin_amplitude;
    assign cos_out = ((cos_quadrant==2'd2)||(cos_quadrant==2'd3)) ?
                     -cos_amplitude : cos_amplitude;
endmodule