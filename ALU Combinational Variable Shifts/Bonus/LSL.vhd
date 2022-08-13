library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LSL is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  I2 : in  STD_LOGIC_VECTOR (7 downto 0);
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  N : out STD_LOGIC;
			  Cout : inout STD_LOGIC;
			  V : inout STD_LOGIC;
			  Z : inout STD_LOGIC;
			  X_bin_pal : out STD_LOGIC;
			  X_prime : out STD_LOGIC;
			  F_active : out STD_LOGIC);
    end LSL;

architecture Behavioral of LSL is

	signal F: STD_LOGIC_VECTOR (3 downto 0);
	signal I2U: STD_LOGIC_VECTOR (7 downto 0); --Defined so that the input I2 gets used and connected to other parts

begin

	I2U <= I2;
	Process (I2U, I1)
		variable I2Num : integer;
		variable B: STD_LOGIC_VECTOR (7 downto 0);   --Zero Signal
		begin
			B := x"00";
			I2num := conv_integer(I2U);
			if (I2Num = 0) then
				O1 <= I1;
				Cout <= '0';
			elsif (I2Num = 8) then
				O1 <= (others => '0');
				Cout <= I1(0);
			elsif (I2Num > 8) then
				O1 <= (others => '0');
				Cout <= '0';
			else
				O1 <= I1(7-I2Num downto 0) & B(I2Num-1 downto 0);
				Cout <= I1(I2Num-1);
			end if;
	end Process;

	N <= O1(7);
	O2 <= x"00";
	V <= '0';
	Z <= '1' when (Cout & O1 =o"000") else '0';
	F_active <= Z or V or Cout;
	
---------------Palindromic check---------------
	F(0) <= (O1(0) xnor O1(7));
	F(1) <= (O1(1) xnor O1(6));
	F(2) <= (O1(2) xnor O1(5));
	F(3) <= (O1(3) xnor O1(4));

	X_bin_pal <= '1' when (F = "1111") else
					 '0';
-----------------------------------------------
------------------Prime check------------------
   Process (O1)
		variable Num : integer;
      begin 
			 Num := conv_integer(O1);
			 if (Num = 2) then
				X_prime <= '1';
			 else
				X_prime <= '0';
			 end if;
   end Process;
-- The Shifted output is always Multiple of 2
-----------------------------------------------
end Behavioral;