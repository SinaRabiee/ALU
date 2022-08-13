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

entity ALU is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           LOAD : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           SEL_IN : in  STD_LOGIC;
           SEL_OUT : in  STD_LOGIC;
           RUN : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
           OP : in  STD_LOGIC_VECTOR (3 downto 0);
           R : out  STD_LOGIC_VECTOR (7 downto 0);
           Z : inout  STD_LOGIC;
           Cout : inout  STD_LOGIC;
           V : inout  STD_LOGIC;
           F_active : out  STD_LOGIC;
           X_bin_pal : out  STD_LOGIC;
           X_prime : out  STD_LOGIC;
           N : inout  STD_LOGIC);
end ALU;

architecture Structral of ALU is

--------------------------Components--------------------------
	component AND8 is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
		
	component OR8 is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component XOR8 is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component XNOR8 is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;

	component UADD is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;

	component SADD is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component UADD_CARRY is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
           Cin : in  STD_LOGIC;
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
		
	component SMUL is
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
	end component;
	
	component UMUL is
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
	end component;
	
	component USUB is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;

	component ROTL is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrC : in STD_LOGIC;							--Privious Value of Cout
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component ROTL_CARRY is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  Cin : in STD_LOGIC;
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
	end component;
	
	
	component LSR is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
		
	component ASR is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component LSL is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrV : in STD_LOGIC;							--Privious Value of V
			  PrRy : in STD_LOGIC_VECTOR (7 downto 0);							--Privious Value of Ry
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           O2 : out  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component BCD2BIN is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  PrN : in STD_LOGIC;							--Privious Value of N
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
	end component;
-------------------------------------------------------------
---------------------------Signals---------------------------
	signal IA : STD_LOGIC_VECTOR (7 downto 0);
	signal IB : STD_LOGIC_VECTOR (7 downto 0);
	signal Ry : STD_LOGIC_VECTOR (7 downto 0);

	signal TrANDX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrANDY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrORX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrORY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrXORX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrXORY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrXNORX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrXNORY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrUADDX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrUADDY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrSADDX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrSADDY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrUADD_CARRYX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrUADD_CARRYY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrSMUL : STD_LOGIC_VECTOR (15 downto 0);
	
	signal TrUMUL : STD_LOGIC_VECTOR (15 downto 0);
	
	signal TrUSUBX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrUSUBY : STD_LOGIC_VECTOR (7 downto 0);
	
	signal TrRotLX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrRotLY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrRotL_CARRYX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrRotL_CARRYY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrLSRX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrLSRY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrASRX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrASRY : STD_LOGIC_VECTOR (7 downto 0);

	signal TrLSLX : STD_LOGIC_VECTOR (7 downto 0);
	signal TrLSLY : STD_LOGIC_VECTOR (7 downto 0);
		
	signal TrBCD : STD_LOGIC_VECTOR (15 downto 0);
	
	signal TrN : STD_LOGIC_VECTOR (15 downto 0);
	signal TrCout : STD_LOGIC_VECTOR (15 downto 0);
	signal TrV : STD_LOGIC_VECTOR (15 downto 0);
	signal TrZ : STD_LOGIC_VECTOR (15 downto 0);
	signal TrBinPal : STD_LOGIC_VECTOR (15 downto 0);
	signal TrPrime : STD_LOGIC_VECTOR (15 downto 0);
	signal TrActive : STD_LOGIC_VECTOR (15 downto 0);
	
	signal Tren_C : STD_LOGIC_VECTOR (15 downto 0);
	signal Tren_V : STD_LOGIC_VECTOR (15 downto 0);
	signal Tren_N : STD_LOGIC_VECTOR (15 downto 0);
-------------------------------------------------------------------

begin		

	Process (SEL_IN, I, Clk, RESET)
		begin
		if (RESET = '1') then
		IA <= x"00";
		IB <= x"00";
			elsif rising_edge(Clk) then
				if (Load = '1') then
					if (SEL_IN = '0') then
						IA <= I;
					elsif (SEL_IN = '1') then
						IB <= I;
					end if;
				end if;
		end if;
	end Process;
	
	u1 : AND8 PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrC =>Cout, PrRy => Ry, O1 => TrANDX, O2 => TrANDY, N => TrN(0), Cout => TrCout(0), V => TrV(0), Z => TrZ(0),
							  X_bin_pal => TrBinPal(0), X_prime => TrPrime(0), F_active => TrActive(0), en_C => Tren_C(0), en_V => Tren_V(0), en_N => Tren_N(0));
							  
	u2 : OR8 PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrC =>Cout, PrRy => Ry, O1 => TrORX, O2 => TrORY, N => TrN(1), Cout => TrCout(1), V => TrV(1), Z => TrZ(1),
							  X_bin_pal => TrBinPal(1), X_prime => TrPrime(1), F_active => TrActive(1), en_C => Tren_C(1), en_V => Tren_V(1), en_N => Tren_N(1));
							 
	u3 : XOR8 PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrC =>Cout, PrRy => Ry, O1 => TrXORX, O2 => TrXORY, N => TrN(2), Cout => TrCout(2), V => TrV(2), Z => TrZ(2),
							  X_bin_pal => TrBinPal(2), X_prime => TrPrime(2), F_active => TrActive(2), en_C => Tren_C(2), en_V => Tren_V(2), en_N => Tren_N(2));
							 
	u4 : XNOR8 PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrC =>Cout, PrRy => Ry, O1 => TrXNORX, O2 => TrXNORY, N => TrN(3), Cout => TrCout(3), V => TrV(3), Z => TrZ(3),
							  X_bin_pal => TrBinPal(3), X_prime => TrPrime(3), F_active => TrActive(3), en_C => Tren_C(3), en_V => Tren_V(3), en_N => Tren_N(3));
							 
	u5 : UADD PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrRy => Ry, O1 => TrUADDX, O2 => TrUADDY, N => TrN(4), Cout => TrCout(4), V => TrV(4), Z => TrZ(4),
							  X_bin_pal => TrBinPal(4), X_prime => TrPrime(4), F_active => TrActive(4), en_C => Tren_C(4), en_V => Tren_V(4), en_N => Tren_N(4));
							 
	u6 : SADD PORT MAP (I1 => IA, I2 => IB, PrC =>Cout, PrRy => Ry, O1 => TrSADDX, O2 => TrSADDY, N => TrN(5), Cout => TrCout(5), V => TrV(5), Z => TrZ(5),
							  X_bin_pal => TrBinPal(5), X_prime => TrPrime(5), F_active => TrActive(5), en_C => Tren_C(5), en_V => Tren_V(5), en_N => Tren_N(5));
							 
	u7 : UADD_CARRY PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrRy => Ry, Cin => Cout, O1 => TrUADD_CARRYX, O2 => TrUADD_CARRYY, N => TrN(6), Cout => TrCout(6), V => TrV(6), Z => TrZ(6),
							  X_bin_pal => TrBinPal(6), X_prime => TrPrime(6), F_active => TrActive(6), en_C => Tren_C(6), en_V => Tren_V(6), en_N => Tren_N(6));
							 
	u8 : SMUL PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrC =>Cout, O1 => TrSMUL(7 downto 0), O2 => TrSMUL(15 downto 8), N => TrN(7), Cout => TrCout(7), V => TrV(7), Z => TrZ(7),
							  X_bin_pal => TrBinPal(7), X_prime => TrPrime(7), F_active => TrActive(7), en_C => Tren_C(7), en_V => Tren_V(7), en_N => Tren_N(7));
							 
	u9 : UMUL PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrC =>Cout, O1 => TrUMUL(7 downto 0), O2 => TrUMUL(15 downto 8), N => TrN(8), Cout => TrCout(8), V => TrV(8), Z => TrZ(8),
							  X_bin_pal => TrBinPal(8), X_prime => TrPrime(8), F_active => TrActive(8), en_C => Tren_C(8), en_V => Tren_V(8), en_N => Tren_N(8));
							 
	u10 : USUB PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrRy => Ry, O1 => TrUSUBX, O2 => TrUSUBY, N => TrN(9), Cout => TrCout(9), V => TrV(9), Z => TrZ(9),
							  X_bin_pal => TrBinPal(9), X_prime => TrPrime(9), F_active => TrActive(9), en_C => Tren_C(9), en_V => Tren_V(9), en_N => Tren_N(9));

	u11 : RotL PORT MAP (I1 => IA, O1 => TrRotLX, PrV =>V, PrC =>Cout, PrRy => Ry, O2 => TrRotLY, N => TrN(10), Cout => TrCout(10), V => TrV(10), Z => TrZ(10),
							  X_bin_pal => TrBinPal(10), X_prime => TrPrime(10), F_active => TrActive(10), en_C => Tren_C(10), en_V => Tren_V(10), en_N => Tren_N(10));
							 
	u12 : RotL_CARRY PORT MAP (I1 => IA, PrV =>V, Cin => Cout, PrRy => Ry, O1 => TrRotL_CARRYX, O2 => TrRotL_CARRYY, N => TrN(11), Cout => TrCout(11), V => TrV(11), Z => TrZ(11),
							  X_bin_pal => TrBinPal(11), X_prime => TrPrime(11), F_active => TrActive(11), en_C => Tren_C(11), en_V => Tren_V(11), en_N => Tren_N(11));
							 
	u13 : LSR PORT MAP (I1 => IA, PrV =>V, PrRy => Ry, O1 => TrLSRX, O2 => TrLSRY, N => TrN(12), Cout => TrCout(12), V => TrV(12), Z => TrZ(12),
							  X_bin_pal => TrBinPal(12), X_prime => TrPrime(12), F_active => TrActive(12), en_C => Tren_C(12), en_V => Tren_V(12), en_N => Tren_N(12));
							 
	u14 : ASR PORT MAP (I1 => IA, PrV =>V, PrRy => Ry, O1 => TrASRX, O2 => TrASRY, N => TrN(13), Cout => TrCout(13), V => TrV(13), Z => TrZ(13),
							  X_bin_pal => TrBinPal(13), X_prime => TrPrime(13), F_active => TrActive(13), en_C => Tren_C(13), en_V => Tren_V(13), en_N => Tren_N(13));
							 
	u15 : LSL PORT MAP (I1 => IA, PrV =>V, PrRy => Ry, O1 => TrLSLX, O2 => TrLSLY, N => TrN(14), Cout => TrCout(14), V => TrV(14), Z => TrZ(14),
							  X_bin_pal => TrBinPal(14), X_prime => TrPrime(14), F_active => TrActive(14), en_C => Tren_C(14), en_V => Tren_V(14), en_N => Tren_N(14));
							 
	u16 : BCD2BIN PORT MAP (I1 => IA, I2 => IB, PrV =>V, PrN =>N, O1 => TrBCD(7 downto 0), O2 => TrBCD(15 downto 8), N => TrN(15), Cout => TrCout(15), V => TrV(15), Z => TrZ(15),
							  X_bin_pal => TrBinPal(15), X_prime => TrPrime(15), F_active => TrActive(15), en_C => Tren_C(15), en_V => Tren_V(15), en_N => Tren_N(15));					 
		
	Process (OP, Clk, RESET, TrANDX, TrANDY, TrORX, TrORY, TrXORX, TrXORY, TrXNORX, TrXNORY, TrUADDX, TrUADDY, TrSADDX, TrSADDY, TrUADD_CARRYX,
				TrUADD_CARRYY,	TrSMUL, TrUMUL, TrUSUBX, TrUSUBY, TrRotLX, TrRotLY, TrRotL_CARRYX, TrRotL_CARRYY, TrLSRX, TrLSRY, TrASRX, TrASRY, TrLSLX,
				TrLSLY, TrBCD, TrN, TrCout, TrV, TrZ, TrBinPal, TrPrime, TrActive, Tren_C, Tren_V, Tren_N)
	begin
		if (RESET = '1') then
			R <= (OTHERS => '0');
			Cout <= '0';
			Z <= '0';
			V <= '0';
			N <= '0';
			X_prime <= '0';
			X_bin_pal <= '0';	
			F_active <= '0';	
		elsif rising_edge(Clk) then
			if (OP = "0000") then					--AND Operation 
				if (Tren_C(0) = '1') then			
					Cout <= TrCout(0);
				end if;
				if (Tren_V(0) = '1') then			
					V <= TrV(0);
				end if;
				if (Tren_N(0) = '1') then			
					N <= TrN(0);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(0);
					X_bin_pal <= TrBinPal(0);
					X_prime <= TrPrime(0);
					F_active <= TrActive(0);
					if (SEL_OUT = '0') then 
						R <= TrANDX;
					elsif (SEL_OUT = '1') then
						R <= TrANDY;
						Ry <= TrANDY;
					end if;
				end if;

			elsif (OP = "0001") then					--OR Operation 
				if (Tren_C(1) = '1') then			
					Cout <= TrCout(1);
				end if;
				if (Tren_V(1) = '1') then			
					V <= TrV(1);
				end if;
				if (Tren_N(1) = '1') then			
					N <= TrN(1);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(1);
					X_bin_pal <= TrBinPal(1);
					X_prime <= TrPrime(1);
					F_active <= TrActive(1);
					if (SEL_OUT = '0') then 
						R <= TrORX;
					elsif (SEL_OUT = '1') then
						R <= TrORY;
						Ry <= TrORY;
					end if;
				end if;

			elsif (OP = "0010") then					--XOR Operation 
				if (Tren_C(2) = '1') then			
					Cout <= TrCout(2);
				end if;
				if (Tren_V(2) = '1') then			
					V <= TrV(2);
				end if;
				if (Tren_N(2) = '1') then			
					N <= TrN(2);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(2);
					X_bin_pal <= TrBinPal(2);
					X_prime <= TrPrime(2);
					F_active <= TrActive(2);
					if (SEL_OUT = '0') then 
						R <= TrXORX;
					elsif (SEL_OUT = '1') then
						R <= TrXORY;
						Ry <= TrXORY;
					end if;
				end if;
				
			elsif (OP = "0011") then					--XNOR Operation 
				if (Tren_C(3) = '1') then			
					Cout <= TrCout(3);
				end if;
				if (Tren_V(3) = '1') then			
					V <= TrV(3);
				end if;
				if (Tren_N(3) = '1') then			
					N <= TrN(3);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(3);
					X_bin_pal <= TrBinPal(3);
					X_prime <= TrPrime(3);
					F_active <= TrActive(3);
					if (SEL_OUT = '0') then 
						R <= TrXNORX;
					elsif (SEL_OUT = '1') then
						R <= TrXNORY;
						Ry <= TrXNORY;
					end if;
				end if;

			elsif (OP = "0100") then					--Unsigned Addition Operation 
				if (Tren_C(4) = '1') then			
					Cout <= TrCout(4);
				end if;
				if (Tren_V(4) = '1') then			
					V <= TrV(4);
				end if;
				if (Tren_N(4) = '1') then			
					N <= TrN(4);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(4);
					X_bin_pal <= TrBinPal(4);
					X_prime <= TrPrime(4);
					F_active <= TrActive(4);
					if (SEL_OUT = '0') then 
						R <= TrUADDX;
					elsif (SEL_OUT = '1') then
						R <= TrUADDY;
						Ry <= TrUADDY;
					end if;
				end if;
				
			elsif (OP = "0101") then					--Signed Addition Operation 
				if (Tren_C(5) = '1') then			
					Cout <= TrCout(5);
				end if;
				if (Tren_V(5) = '1') then			
					V <= TrV(5);
				end if;
				if (Tren_N(5) = '1') then			
					N <= TrN(5);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(5);
					X_bin_pal <= TrBinPal(5);
					X_prime <= TrPrime(5);
					F_active <= TrActive(5);
					if (SEL_OUT = '0') then 
						R <= TrSADDX;
					elsif (SEL_OUT = '1') then
						R <= TrSADDY;
						Ry <= TrSADDY;
					end if;
				end if;
				
			elsif (OP = "0110") then					--Unsigned Addition with Cin Operation
				if (Tren_C(6) = '1') then			
					Cout <= TrCout(6);
				end if;
				if (Tren_V(6) = '1') then			
					V <= TrV(6);
				end if;
				if (Tren_N(6) = '1') then			
					N <= TrN(6);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(6);
					X_bin_pal <= TrBinPal(6);
					X_prime <= TrPrime(6);
					F_active <= TrActive(6);
					if (SEL_OUT = '0') then 
						R <= TrUADD_CARRYX;
					elsif (SEL_OUT = '1') then
						R <= TrUADD_CARRYY;
						Ry <= TrUADD_CARRYY;
					end if;
				end if;

			elsif (OP = "0111") then					--Signed Multiplication
				if (Tren_C(7) = '1') then			
					Cout <= TrCout(7);
				end if;
				if (Tren_V(7) = '1') then			
					V <= TrV(7);
				end if;
				if (Tren_N(7) = '1') then			
					N <= TrN(7);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(7);
					X_bin_pal <= TrBinPal(7);
					X_prime <= TrPrime(7);
					F_active <= TrActive(7);
					if (SEL_OUT = '0') then 
						R <= TrSMUL(7 downto 0);
					elsif (SEL_OUT = '1') then
						R <= TrSMUL(15 downto 8);
						Ry <= TrSMUL(15 downto 8);
					end if;
				end if;
				
			elsif (OP = "1000") then					--UnSigned Multiplication
				if (Tren_C(8) = '1') then			
					Cout <= TrCout(8);
				end if;
				if (Tren_V(8) = '1') then			
					V <= TrV(8);
				end if;
				if (Tren_N(8) = '1') then			
					N <= TrN(8);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(8);
					X_bin_pal <= TrBinPal(8);
					X_prime <= TrPrime(8);
					F_active <= TrActive(8);
					if (SEL_OUT = '0') then 
						R <= TrUMUL(7 downto 0);
					elsif (SEL_OUT = '1') then
						R <= TrUMUL(15 downto 8);
						Ry <= TrUMUL(15 downto 8);
					end if;
				end if;
				
			elsif (OP = "1001") then					--Unsigned Subtraction
				if (Tren_C(9) = '1') then			
					Cout <= TrCout(9);
				end if;
				if (Tren_V(9) = '1') then			
					V <= TrV(9);
				end if;
				if (Tren_N(9) = '1') then			
					N <= TrN(9);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(9);
					X_bin_pal <= TrBinPal(9);
					X_prime <= TrPrime(9);
					F_active <= TrActive(9);
					if (SEL_OUT = '0') then 
						R <= TrUSUBX;
					elsif (SEL_OUT = '1') then
						R <= TrUSUBY;
						Ry <= TrUSUBY;
					end if;
				end if;

			elsif (OP = "1010") then					--Rotation Left
				if (Tren_C(10) = '1') then			
					Cout <= TrCout(10);
				end if;
				if (Tren_V(10) = '1') then			
					V <= TrV(10);
				end if;
				if (Tren_N(10) = '1') then			
					N <= TrN(10);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(10);
					X_bin_pal <= TrBinPal(10);
					X_prime <= TrPrime(10);
					F_active <= TrActive(10);
					if (SEL_OUT = '0') then 
						R <= TrRotLX;
					elsif (SEL_OUT = '1') then
						R <= TrRotLY;
						Ry <= TrRotLY;
					end if;
				end if;

			elsif (OP = "1011") then					--Rotation Left with Carry
				if (Tren_C(11) = '1') then			
					Cout <= TrCout(11);
				end if;
				if (Tren_V(11) = '1') then			
					V <= TrV(11);
				end if;
				if (Tren_N(11) = '1') then			
					N <= TrN(11);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(11);
					X_bin_pal <= TrBinPal(11);
					X_prime <= TrPrime(11);
					F_active <= TrActive(11);
					if (SEL_OUT = '0') then 
						R <= TrRotL_CARRYX;
					elsif (SEL_OUT = '1') then
						R <= TrRotL_CARRYY;
						Ry <= TrRotL_CARRYY;
					end if;
				end if;

			elsif (OP = "1100") then					--Logic Shift Right
				if (Tren_C(12) = '1') then			
					Cout <= TrCout(12);
				end if;
				if (Tren_V(12) = '1') then			
					V <= TrV(12);
				end if;
				if (Tren_N(12) = '1') then			
					N <= TrN(12);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(12);
					X_bin_pal <= TrBinPal(12);
					X_prime <= TrPrime(12);
					F_active <= TrActive(12);
					if (SEL_OUT = '0') then 
						R <= TrLSRX;
					elsif (SEL_OUT = '1') then
						R <= TrLSRY;
						Ry <= TrLSRY;
					end if;
				end if;

			elsif (OP = "1101") then					--Arithmatic Shift Right
				if (Tren_C(13) = '1') then			
					Cout <= TrCout(13);
				end if;
				if (Tren_V(13) = '1') then			
					V <= TrV(13);
				end if;
				if (Tren_N(13) = '1') then			
					N <= TrN(13);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(13);
					X_bin_pal <= TrBinPal(13);
					X_prime <= TrPrime(13);
					F_active <= TrActive(13);
					if (SEL_OUT = '0') then 
						R <= TrASRX;
					elsif (SEL_OUT = '1') then
						R <= TrASRY;
						Ry <= TrASRY;
					end if;
				end if;

			elsif (OP = "1110") then					--Logic Shift Left
				if (Tren_C(14) = '1') then			
					Cout <= TrCout(14);
				end if;
				if (Tren_V(14) = '1') then			
					V <= TrV(14);
				end if;
				if (Tren_N(14) = '1') then			
					N <= TrN(14);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(14);
					X_bin_pal <= TrBinPal(14);
					X_prime <= TrPrime(14);
					F_active <= TrActive(14);
					if (SEL_OUT = '0') then 
						R <= TrLSLX;
					elsif (SEL_OUT = '1') then
						R <= TrLSLY;
						Ry <= TrLSLY;
					end if;
				end if;

			elsif (OP = "1111") then					--BCD to Binary Conversion
				if (Tren_C(15) = '1') then			
					Cout <= TrCout(15);
				end if;
				if (Tren_V(15) = '1') then			
					V <= TrV(15);
				end if;
				if (Tren_N(15) = '1') then			
					N <= TrN(15);
				end if;
				if (RUN = '1') then			
					Z <= TrZ(15);
					X_bin_pal <= TrBinPal(15);
					X_prime <= TrPrime(15);
					F_active <= TrActive(15);
					if (SEL_OUT = '0') then 
						R <= TrBCD(7 downto 0);
					elsif (SEL_OUT = '1') then
						R <= TrBCD(15 downto 8);
						Ry <= TrBCD(15 downto 8);
					end if;
				end if;
			end if;
		end if;
	end Process;
	
end Structral;