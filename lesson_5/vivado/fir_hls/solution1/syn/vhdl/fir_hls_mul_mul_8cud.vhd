
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir_hls_mul_mul_8cud_DSP48_1 is
port (
    a: in std_logic_vector(8 - 1 downto 0);
    b: in std_logic_vector(12 - 1 downto 0);
    p: out std_logic_vector(20 - 1 downto 0));

end entity;

architecture behav of fir_hls_mul_mul_8cud_DSP48_1 is
    signal a_cvt: signed(8 - 1 downto 0);
    signal b_cvt: unsigned(12 - 1 downto 0);
    signal p_cvt: signed(20 - 1 downto 0);


begin

    a_cvt <= signed(a);
    b_cvt <= unsigned(b);
    p_cvt <= signed (resize(unsigned (signed (a_cvt) * signed ('0' & b_cvt)), 20));
    p <= std_logic_vector(p_cvt);

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity fir_hls_mul_mul_8cud is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of fir_hls_mul_mul_8cud is
    component fir_hls_mul_mul_8cud_DSP48_1 is
        port (
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    fir_hls_mul_mul_8cud_DSP48_1_U :  component fir_hls_mul_mul_8cud_DSP48_1
    port map (
        a => din0,
        b => din1,
        p => dout);

end architecture;


