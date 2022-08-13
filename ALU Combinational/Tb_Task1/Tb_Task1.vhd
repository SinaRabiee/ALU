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

ENTITY Tb_Task1 IS
END Tb_Task1;
 
ARCHITECTURE behavior OF Tb_Task1 IS 
 
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
	
   signal CLK : std_logic;
   constant CLK_period : time := 1000 ns;
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

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '1';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	

		OPCODE <= "0000"; 			--AND Operation
		Cin <= '0';
		A <= "10101011";
		B <= "01010111";
      wait for 100 ns;	
		
		OPCODE <= "0001"; 			--OR Operation
		Cin <= '0';
		A <= "10101101";
		B <= "11111010";
      wait for 100 ns;	

		OPCODE <= "0010"; 			--XOR Operation
		Cin <= '0';
		A <= "11101001";
		B <= "00101011";
      wait for 100 ns;	

		OPCODE <= "0011"; 			--XNOR Operation
		Cin <= '0';
		A <= "00110011";
		B <= "00110011";
      wait for 100 ns;	

		OPCODE <= "0100"; 			--Unsigned Addition Operation
		Cin <= '0';
		A <= "11110001";
		B <= "10001010";
      wait for 100 ns;	

		OPCODE <= "0101"; 			--Signed Addition Operation
		Cin <= '0';
		A <= "00110001";
		B <= "10000011";
      wait for 100 ns;
		Cin <= '0';
		A <= "10110001";
		B <= "10101100";
      wait for 100 ns;
		
		OPCODE <= "0110"; 			--Usigned Addition with Cin Operation
		Cin <= '1';
		A <= "10101000";
		B <= "01110001";
      wait for 100 ns;
		Cin <= '0';
		A <= "10101000";
		B <= "01110001";
      wait for 100 ns;	
		
		OPCODE <= "0111"; 			--Signed Multiplication
		Cin <= '0';
		A <= "11100100";
		B <= "00011010";
      wait for 100 ns;	
		Cin <= '0';
		A <= "10001100";
		B <= "11101001";
      wait for 100 ns;	
		Cin <= '0';
		A <= "00001000";
		B <= "01110001";
      wait for 100 ns;	
		Cin <= '0';
		A <= "01010001";
		B <= "10001011";
      wait for 100 ns;	

		OPCODE <= "1000"; 			--Unsigned Multiplication
		Cin <= '0';
		A <= "10101000";
		B <= "01010100";
      wait for 100 ns;	

		OPCODE <= "1001"; 			--Unsigned Subtraction
		Cin <= '0';
		A <= "00011000";
		B <= "01110010";
      wait for 100 ns;	

		OPCODE <= "1010"; 			--Rotation Left
		Cin <= '0';
		A <= "11110110";
		B <= "11111111";
      wait for 100 ns;	

		OPCODE <= "1011"; 			--Rotation Left with Cin Operation
		Cin <= '0';
		A <= "01010011";
		B <= "00000000";
      wait for 100 ns;	
		Cin <= '1';
		A <= "01010011";
		B <= "00000000";
      wait for 100 ns;	

		OPCODE <= "1100"; 			--Logic Shift Right
		Cin <= '0';
		A <= "10110011";
		B <= "11111111";
      wait for 100 ns;	

		OPCODE <= "1101"; 			--Arithmatic Shift Right
		Cin <= '0';
		A <= "00011101";
		B <= "00000000";
      wait for 100 ns;	

		OPCODE <= "1110"; 			--Logic Shift Left
		Cin <= '0';
		A <= "00000001";
		B <= "11111111";
      wait for 100 ns;	

		OPCODE <= "1111"; 			--BCD to Binary Conversion
		Cin <= '0';
		A <= "10011001";
		B <= "00100110";
      wait for 100 ns;	

      wait;
   end process;

END;
