--
-- Testbench for the post-synthesis CPU simulation
--

library ieee;
use ieee.std_logic_1164.all;

entity cpu_tb is 
end entity;

architecture test of cpu_tb is
   
	signal rst: std_logic;
	signal clk: std_logic;
	signal output: std_logic_vector(7 downto 0);
	
	constant t: time := 20 ns;
	
begin

   dut: entity work.cpu(structure) port map (rst, clk, output);
	
	-- Clock signal
	process
	begin
	   clk <= '0';
		wait for t/2;
		clk <= '1';
		wait for t/2;
	end process;

	-- Control signals
	process
	begin
	   rst <= '0';
		wait for t;
		rst <= '1';
		wait;
	end process;
	
end test;
