library ieee;
use ieee.std_logic_1164.all;

entity clk_div is
   port(
   i_rst: in std_logic;
   i_clk: in std_logic;
   o_clk: out std_logic);
end entity;

architecture behave of clk_div is

   constant max_counter: integer := 500000;
   signal s_counter: integer range 0 to max_counter-1;
   signal s_clk: std_logic;

begin

   process(i_rst, i_clk)
   begin
      if (i_rst = '0') then
         s_counter <= 0;
         s_clk <= '0';
      elsif (rising_edge(i_clk)) then
         if (s_counter = max_counter-1) then
            s_counter <= 0;
            s_clk <= not s_clk;
         else
            s_counter <= s_counter + 1;
         end if;
      end if;
   end process;

   o_clk <= s_clk;

end behave;