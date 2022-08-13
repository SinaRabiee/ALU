library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LSL is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
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

begin
	O1 <= I1(6 downto 0) & '0';
	N <= I1(6);
	O2 <= x"00";
	Cout <= I1(7);
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