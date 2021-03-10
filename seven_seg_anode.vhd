--
-- Seven segment display decoder (Common anode)
--
--    o_display =>   7 6 5 4 3 2 1 0
-- display leds =>  dp g f e d c b a
--

library ieee;
use ieee.std_logic_1164.all;

entity seven_seg_anode is 
   port(
   i_binary: in std_logic_vector(3 downto 0);
   o_display: out std_logic_vector(7 downto 0));
end entity;

architecture behave of seven_seg_anode is 

begin 

   process(i_binary)
   begin
      case i_binary is 
         when "0000" => o_display <= X"c0";
	 when "0001" => o_display <= X"f9";
	 when "0010" => o_display <= X"a4";
	 when "0011" => o_display <= X"b0";
	 when "0100" => o_display <= X"99";
	 when "0101" => o_display <= X"92";
	 when "0110" => o_display <= X"82";
	 when "0111" => o_display <= X"f8";
	 when "1000" => o_display <= X"80";
	 when "1001" => o_display <= X"90";
	 when "1010" => o_display <= X"88";
	 when "1011" => o_display <= X"83";
	 when "1100" => o_display <= X"c6";
	 when "1101" => o_display <= X"a1";
	 when "1110" => o_display <= X"86";
	 when "1111" => o_display <= X"8e";
	 when others => o_display <= X"ff";
      end case;
   end process;

end behave;
