----------------------------------------------------------------------------------
-- Group Number: 10 
-- Members: Sina Rabiee
-- 			Mohammad Mahdi Rnjbar Bafghi
--				Alireza Faghih Ali abadi
--				Zaker Ghelichi
--				Bardia Sahami
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 
ENTITY Tb_Bonus IS
END Tb_Bonus;
 
ARCHITECTURE behavior OF Tb_Bonus IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         OPCODE : IN  std_logic_vector(3 downto 0);
         X : OUT  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(7 downto 0);
         Z : INOUT  std_logic;
         Cout : INOUT  std_logic;
         V : INOUT  std_logic;
         F_active : OUT  std_logic;
         X_bin_pal : OUT  std_logic;
         X_prime : OUT  std_logic;
         N : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
   signal OPCODE : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal Z : std_logic;
   signal Cout : std_logic;
   signal V : std_logic;

 	--Outputs
   signal X : std_logic_vector(7 downto 0);
   signal Y : std_logic_vector(7 downto 0);
   signal F_active : std_logic;
   signal X_bin_pal : std_logic;
   signal X_prime : std_logic;
   signal N : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	--This Curcuit is completely Combinational and doesn't need a clock 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          OPCODE => OPCODE,
          X => X,
          Y => Y,
          Z => Z,
          Cout => Cout,
          V => V,
          F_active => F_active,
          X_bin_pal => X_bin_pal,
          X_prime => X_prime,
          N => N
        );

   -- Stimulus process
   stim_proc: process
   begin		
		OPCODE <= "1010"; 			--Rotation Left
		Cin <= '0';
		A <= "11000110";
		B <= "00000111";
      wait for 10 ns;	

		OPCODE <= "1011"; 			--Rotation Left with Cin Operation
		Cin <= '0';
		A <= "01010011";
		B <= "01010110";
      wait for 10 ns;	
		Cin <= '1';
		A <= "01010011";
		B <= "01010110";
      wait for 10 ns;	

		OPCODE <= "1100"; 			--Logic Shift Right
		Cin <= '0';
		A <= "10110011";
		B <= "00000100";
      wait for 10 ns;	

		OPCODE <= "1101"; 			--Arithmatic Shift Right
		Cin <= '0';
		A <= "00011101";
		B <= "00000010";
      wait for 10 ns;	
		Cin <= '0';
		A <= "11101101";
		B <= "00000010";
      wait for 10 ns;	
		A <= "11111111";
		B <= "00111010";
      wait for 10 ns;	

		OPCODE <= "1110"; 			--Logic Shift Left
		Cin <= '0';
		A <= "00000101";
		B <= "10100111";

      wait;
   end process;

END;
