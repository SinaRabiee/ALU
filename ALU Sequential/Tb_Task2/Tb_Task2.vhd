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

ENTITY Tb_Task2 IS
END Tb_Task2;
 
ARCHITECTURE behavior OF Tb_Task2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         LOAD : IN  std_logic;
         RESET : IN  std_logic;
         SEL_IN : IN  std_logic;
         SEL_OUT : IN  std_logic;
         RUN : IN  std_logic;
         Clk : IN  std_logic;
         OP : IN  std_logic_vector(3 downto 0);
         R : OUT  std_logic_vector(7 downto 0);
         Z : INOUT  std_logic;
         Cout : INOUT  std_logic;
         V : INOUT  std_logic;
         F_active : OUT  std_logic;
         X_bin_pal : OUT  std_logic;
         X_prime : OUT  std_logic;
         N : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal LOAD : std_logic := '0';
   signal RESET : std_logic := '0';
   signal SEL_IN : std_logic := '0';
   signal SEL_OUT : std_logic := '0';
   signal RUN : std_logic := '0';
   signal Clk : std_logic := '0';
   signal OP : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal Z : std_logic;
   signal Cout : std_logic;
   signal V : std_logic;
   signal N : std_logic;

 	--Outputs
   signal R : std_logic_vector(7 downto 0);
   signal F_active : std_logic;
   signal X_bin_pal : std_logic;
   signal X_prime : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          I => I,
          LOAD => LOAD,
          RESET => RESET,
          SEL_IN => SEL_IN,
          SEL_OUT => SEL_OUT,
          RUN => RUN,
          Clk => Clk,
          OP => OP,
          R => R,
          Z => Z,
          Cout => Cout,
          V => V,
          F_active => F_active,
          X_bin_pal => X_bin_pal,
          X_prime => X_prime,
          N => N
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		
		RESET <= '1';				--Resting the Circuit for initial usuage
      wait for Clk_period;
		RESET <= '0';
		
		Load <= '1';
		RUN <= '1';
---------------AND--------------		
		OP <= "0000";
		SEL_IN <= '0';
		I <= "10001010";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "01111101";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
      wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU;
      wait for Clk_period;
		RESET <= '0';
----------------OR---------------		
		OP <= "0001";
		SEL_IN <= '0';
		I <= "01001110";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "11001001";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
      wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU;
		wait for Clk_period;
		RESET <= '0';
---------------XOR---------------		
		OP <= "0010";
		SEL_IN <= '0';
		I <= "10110100";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "01000001";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
      wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU;
		wait for Clk_period;
		RESET <= '0';
--------------XNOR---------------
		OP <= "0011";
		SEL_IN <= '0';
		I <= "10111111";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "00000101";
		wait for Clk_period;
		SEL_OUT <= '0';
----------------------------------
      wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU;
		wait for Clk_period;
		RESET <= '0';
---------------UADD---------------
		OP <= "0100";
		SEL_IN <= '0';
		I <= "10100011";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "11010101";
		wait for Clk_period;
		SEL_OUT <= '0';
----------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU
      wait for Clk_period;
		RESET <= '0';
---------------SADD---------------
		OP <= "0101";
		SEL_IN <= '0';
		I <= "00110001";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "10000011";
		wait for Clk_period;
		SEL_OUT <= '0';
----------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to define Cin and Cout as '0'
      wait for Clk_period;
		RESET <= '0';
------------UADD_CARRY-----------		
		OP <= "0110";
		SEL_IN <= '0';
		I <= "11101010";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "01111101";
		wait for 2*Clk_period;
		SEL_OUT <= '0';
		--This Operation produces a Cout of '1' Which acts as the Cin for the next test
		SEL_IN <= '0';
		I <= "00110001";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to define Cin and Cout as '0'
      wait for Clk_period;
		RESET <= '0';
--------------SMUL---------------		
		OP <= "0111";
		SEL_IN <= '0';
		I <= "11001010";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "00001101";
		wait for Clk_period;
		SEL_OUT <= '0';
		wait for 2*Clk_period;
		SEL_OUT <= '1';
		
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU
      wait for Clk_period;
		RESET <= '0';
		
		OP <= "0111";
		SEL_IN <= '0';
		I <= "10000001";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "11111100";
		wait for Clk_period;
		SEL_OUT <= '0';
		wait for 2*Clk_period;
		SEL_OUT <= '1';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU
      wait for Clk_period;
		RESET <= '0';
---------------UMUL--------------
		OP <= "1000";
		SEL_IN <= '0';
		I <= "00010101";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "10010011";
		wait for Clk_period;
		SEL_OUT <= '0';
		wait for 2*Clk_period;
		SEL_OUT <= '1';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU
      wait for Clk_period;
		RESET <= '0';
---------------USUB--------------
		OP <= "1001";
		SEL_IN <= '0';
		I <= "10010001";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "11110000";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU and Cout
      wait for Clk_period;
		RESET <= '0';
---------------RotL--------------
		OP <= "1010";
		SEL_IN <= '0';
		I <= "00001100";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU
      wait for Clk_period;
		RESET <= '0';
------------RotL_CARRY-----------
--Previous Carry is '0' because of reseting
		OP <= "1011";
		SEL_IN <= '0';
		I <= "01101010";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU and Cout
      wait for Clk_period;
		RESET <= '0';
---------------LSR---------------
		OP <= "1100";
		SEL_IN <= '0';
		I <= "10110100";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU and Cout
      wait for Clk_period;
		RESET <= '0';
---------------ASR---------------
		OP <= "1101";
		SEL_IN <= '0';
		I <= "10110110";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU and Cout
      wait for Clk_period;
		RESET <= '0';
---------------LSL---------------
		OP <= "1110";
		SEL_IN <= '0';
		I <= "11010111";
		wait for Clk_period;
		SEL_OUT <= '0';
---------------------------------
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit to clear the input and outpus of the ALU and Cout
      wait for Clk_period;
		RESET <= '0';
-------------BCD2BIN-------------
		OP <= "1111";
		SEL_IN <= '0';
		I <= "10010101";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "00011000";
		wait for Clk_period;
		SEL_OUT <= '0';
		wait for 2*Clk_period;
		SEL_OUT <= '1';	
		
		
		wait for 2*Clk_period;		
		RESET <= '1';				--Resting the Circuit for initial usuage
      wait for Clk_period;
		RESET <= '0';
		
		Load <= '0';				--Exploring the effect of LOAD signal on the Circuits O/I
		RUN <= '1';
---------AND with LOAD = 0---------		
		OP <= "0000";
		SEL_IN <= '0';
		I <= "10001010";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "01111101";
		wait for Clk_period;
		SEL_OUT <= '0';
----------------------------------		
		
		wait for 2*Clk_period;	
		RESET <= '1';				--Resting the Circuit for initial usuage
      wait for Clk_period;
		RESET <= '0';	
		
		Load <= '1';				
		RUN <= '0';					--Exploring the effect of RUN signal on the Circuits O/I
--------AND  with RUN = 0---------		
		OP <= "0000";
		SEL_IN <= '0';
		I <= "11111111";
		wait for Clk_period;
		SEL_IN <= '1';
		I <= "10011001";
		wait for Clk_period;
		SEL_OUT <= '0';
----------------------------------		
		
		wait for 2*Clk_period;
		RESET <= '1';				--Resting the Circuit for initial usuage
      wait for Clk_period;
		RESET <= '0';		
	
      wait;
   end process;

END;
