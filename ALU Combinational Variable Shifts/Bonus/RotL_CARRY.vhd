library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RotL_CARRY is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  I2 : in  STD_LOGIC_VECTOR (7 downto 0);
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  N : out STD_LOGIC;
			  Cin : in STD_LOGIC;
			  Cout : inout STD_LOGIC;
			  V : inout STD_LOGIC;
			  Z : inout STD_LOGIC;
			  X_bin_pal : out STD_LOGIC;
			  X_prime : out STD_LOGIC;
			  F_active : out STD_LOGIC);
    end RotL_CARRY;

architecture Behavioral of RotL_CARRY is

	signal F: STD_LOGIC_VECTOR (3 downto 0);
	signal I2U: STD_LOGIC_VECTOR (7 downto 0); --Defined so that the input I2 gets used and connected to other parts
	signal I1N: STD_LOGIC_VECTOR (8 downto 0); --The result of Cin and I1 concatenation
	signal O1N: STD_LOGIC_VECTOR (8 downto 0); --The result of Rotation of I1N

begin

	I1N <= Cin & I1;
	I2U <= I2;
	Process (I2U, I1N)
		variable I2Num : integer;
		variable B : integer;
		begin
			I2Num := conv_integer(I2U);
			B := (I2Num rem 9);
			if (B = 0) then
				O1N <= I1N;
			else
				O1N <= I1N(8-B downto 0) & I1N(8 downto 9-B);
			end if;
	end Process;

	O1 <= O1N(7 downto 0);
	N <= '0';
	O2 <= x"00";
	Cout <= O1N(8);
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
			 if (Num = 0 or Num = 1) then
				X_prime <= '0';
			 elsif (Num = 2 or Num = 3 or Num = 5 or Num = 7 or Num = 11 or Num = 13) then
				X_prime <= '1';
			 elsif (Num rem 2 = 0 or
					  Num rem 3 = 0 or
					  Num rem 5 = 0 or
					  Num rem 7 = 0 or
					  Num rem 11 = 0 or
					  Num rem 13 = 0) then
				X_prime <= '0';  
			 else 
				X_prime <= '1';
			 end if;
   end Process;
-----------------------------------------------
end Behavioral;