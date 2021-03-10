--
-- Seven segment display decoder (Common cathode)
--
--    o_display =>   7 6 5 4 3 2 1 0
-- display leds =>  dp g f e d c b a
--

library ieee;
use ieee.std_logic_1164.all;

entity seven_seg_cathode is 
   port(
   i_binary: in std_logic_vector(3 downto 0);
   o_display: out std_logic_vector(7 downto 0));
end entity;

architecture behave of seven_seg_cathode is 

begin 

   process(i_binary)
   begin
      case i_binary is 
         when "0000" => o_display <= X"3f";
	 when "0001" => o_display <= X"06";
	 when "0010" => o_display <= X"5b";
	 when "0011" => o_display <= X"4f";
	 when "0100" => o_display <= X"66";
	 when "0101" => o_display <= X"6d";
	 when "0110" => o_display <= X"7d";
	 when "0111" => o_display <= X"07";
	 when "1000" => o_display <= X"7f";
	 when "1001" => o_display <= X"6f";
	 when "1010" => o_display <= X"77";
	 when "1011" => o_display <= X"7c";
	 when "1100" => o_display <= X"39";
	 when "1101" => o_display <= X"5e";
	 when "1110" => o_display <= X"79";
	 when "1111" => o_display <= X"71";
	 when others => o_display <= X"00";
      end case;
   end process;

end behave;
