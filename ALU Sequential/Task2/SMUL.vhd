library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SMUL is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrV : in STD_LOGIC;							--Privious Value of V
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : inout  STD_LOGIC_VECTOR (7 downto 0);
			  N : out STD_LOGIC;
			  Cout : inout STD_LOGIC;
			  V : inout STD_LOGIC;
			  Z : inout STD_LOGIC;
			  en_C : inout STD_LOGIC;
			  en_V : inout STD_LOGIC;
			  en_N : inout STD_LOGIC;
			  X_bin_pal : out STD_LOGIC;
			  X_prime : out STD_LOGIC;
			  F_active : out STD_LOGIC);
    end SMUL;

architecture Behavioral of SMUL is

	signal F: STD_LOGIC_VECTOR (3 downto 0);
	signal SM: SIGNED (15 downto 0);
	signal M: STD_LOGIC_VECTOR (15 downto 0);

begin
	SM <= SIGNED(I1) * SIGNED(I2);
	M <= STD_LOGIC_VECTOR(SM);
	O1 <= M(7 downto 0);
	O2 <= M(15 downto 8);
	en_N <= '1';
	en_V <= '0';
	en_C <= '0';
	N <= M(15);	
	Cout <= PrC;
	V <= PrV;
	Z <= '1' when M=x"0000" else '0';
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