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
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Cin : in  STD_LOGIC;
           OPCODE : in  STD_LOGIC_VECTOR (3 downto 0);
           X : out  STD_LOGIC_VECTOR (7 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0);
           Z : inout  STD_LOGIC;
           Cout : inout  STD_LOGIC;
           V : inout  STD_LOGIC;
           F_active : out  STD_LOGIC;
           X_bin_pal : out  STD_LOGIC;
           X_prime : out  STD_LOGIC;
           N : out  STD_LOGIC);
end ALU;

architecture Structral of ALU is

--------------------------Components--------------------------
	component AND8 is
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
	end component;
		
	component OR8 is
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
	end component;
	
	component XOR8 is
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
	end component;
	
	component XNOR8 is
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
	end component;
	
	component UADD is
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
	end component;
	
	component SADD is
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
	end component;
	
	component UADD_CARRY is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
           I2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  Cin : in  STD_LOGIC;
           O1 : inout  STD_LOGIC_VECTOR (7 downto 0);
			  O2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  N : out STD_LOGIC;
			  Cout : inout STD_LOGIC;
			  V : inout STD_LOGIC;
			  Z : inout STD_LOGIC;
			  X_bin_pal : out STD_LOGIC;
			  X_prime : out STD_LOGIC;
			  F_active : out STD_LOGIC);
	end component;
	
	component SMUL is
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
	end component;
	
	component UMUL is
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
	end component;
	
	component USUB is
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
	end component;
		
	component RotL is
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
	end component;
	
	component RotL_CARRY is
    Port ( I1 : in  STD_LOGIC_VECTOR (7 downto 0);
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
	end component;
	
	component LSR is
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
	end component;
	
	component ASR is
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
	end component;
	
	component LSL is
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
	end component;
	
	component BCD2BIN is
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
	end component;
-------------------------------------------------------------
---------------------------Signals---------------------------
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
-------------------------------------------------------------------

begin
	u1 : AND8 PORT MAP (I1 => A, I2 => B, O1 => TrANDX, O2 => TrANDY, N => TrN(0), Cout => TrCout(0),
							  V => TrV(0), Z => TrZ(0), X_bin_pal => TrBinPal(0), X_prime => TrPrime(0), F_active => TrActive(0));
							  
	u2 : OR8 port map (I1 => A, I2 => B, O1 => TrORX, O2 => TrORY, N => TrN(1), Cout => TrCout(1),
							 V => TrV(1), Z => TrZ(1), X_bin_pal => TrBinPal(1), X_prime => TrPrime(1), F_active => TrActive(1));
							 
	u3 : XOR8 port map (I1 => A, I2 => B, O1 => TrXORX, O2 => TrXORY, N => TrN(2), Cout => TrCout(2),
							  V => TrV(2), Z => TrZ(2), X_bin_pal => TrBinPal(2), X_prime => TrPrime(2), F_active => TrActive(2));
							  
	u4 : XNOR8 port map (I1 => A, I2 => B, O1 => TrXNORX, O2 => TrXNORY, N => TrN(3), Cout => TrCout(3),
								V => TrV(3), Z => TrZ(3), X_bin_pal => TrBinPal(3), X_prime => TrPrime(3), F_active => TrActive(3));
							  
	u5 : UADD port map (I1 => A, I2 => B, O1 => TrUADDX, O2 => TrUADDY, N => TrN(4), Cout => TrCout(4),
								V => TrV(4), Z => TrZ(4), X_bin_pal => TrBinPal(4), X_prime => TrPrime(4), F_active => TrActive(4));
															  
	u6 : SADD port map (I1 => A, I2 => B, O1 => TrSADDX, O2 => TrSADDY, N => TrN(5), Cout => TrCout(5),
								V => TrV(5), Z => TrZ(5), X_bin_pal => TrBinPal(5), X_prime => TrPrime(5), F_active => TrActive(5));
								
	u7 : UADD_CARRY port map (I1 => A, I2 => B, Cin => Cin, O1 => TrUADD_CARRYX, O2 => TrUADD_CARRYY, N => TrN(6), Cout => TrCout(6),
								V => TrV(6), Z => TrZ(6), X_bin_pal => TrBinPal(6), X_prime => TrPrime(6), F_active => TrActive(6));
								
	u8 : SMUL port map (I1 => A, I2 => B, O1 => TrSMUL(7 downto 0), O2 => TrSMUL(15 downto 8), N => TrN(7), Cout => TrCout(7),
								V => TrV(7), Z => TrZ(7), X_bin_pal => TrBinPal(7), X_prime => TrPrime(7), F_active => TrActive(7));
								
	u9 : UMUL port map (I1 => A, I2 => B, O1 => TrUMUL(7 downto 0), O2 => TrUMUL(15 downto 8), N => TrN(8), Cout => TrCout(8),
								V => TrV(8), Z => TrZ(8), X_bin_pal => TrBinPal(8), X_prime => TrPrime(8), F_active => TrActive(8));
								
	u10 : USUB port map (I1 => A, I2 => B, O1 => TrUSUBX, O2 => TrUSUBY, N => TrN(9), Cout => TrCout(9),
								V => TrV(9), Z => TrZ(9), X_bin_pal => TrBinPal(9), X_prime => TrPrime(9), F_active => TrActive(9));
																						
	u11 : RotL port map (I1 => A, O1 => TrRotLX, O2 => TrRotLY, N => TrN(10), Cout => TrCout(10),
								V => TrV(10), Z => TrZ(10), X_bin_pal => TrBinPal(10), X_prime => TrPrime(10), F_active => TrActive(10));
								
	u12 : RotL_CARRY port map (I1 => A, Cin => Cin, O1 => TrRotL_CARRYX, O2 => TrRotL_CARRYY, N => TrN(11), Cout => TrCout(11),
								V => TrV(11), Z => TrZ(11), X_bin_pal => TrBinPal(11), X_prime => TrPrime(11), F_active => TrActive(11));								
								
	u13 : LSR port map (I1 => A, O1 => TrLSRX, O2 => TrLSRY, N => TrN(12), Cout => TrCout(12),
								V => TrV(12), Z => TrZ(12), X_bin_pal => TrBinPal(12), X_prime => TrPrime(12), F_active => TrActive(12));
								
	u14 : ASR port map (I1 => A, O1 => TrASRX, O2 => TrASRY, N => TrN(13), Cout => TrCout(13),
								V => TrV(13), Z => TrZ(13), X_bin_pal => TrBinPal(13), X_prime => TrPrime(13), F_active => TrActive(13));
								
	u15 : LSL port map (I1 => A, O1 => TrLSLX, O2 => TrLSLY, N => TrN(14), Cout => TrCout(14),
								V => TrV(14), Z => TrZ(14), X_bin_pal => TrBinPal(14), X_prime => TrPrime(14), F_active => TrActive(14));
								
	u16 : BCD2BIN port map (I1 => A, I2 => B, O1 => TrBCD(7 downto 0), O2 => TrBCD(15 downto 8), N => TrN(15), Cout => TrCout(15),
								V => TrV(15), Z => TrZ(15), X_bin_pal => TrBinPal(15), X_prime => TrPrime(15), F_active => TrActive(15));							
															  
	Process (OPCODE, TrANDX, TrANDY, TrORX, TrORY, TrXORX, TrXORY, TrXNORX, TrXNORY, TrUADDX, TrUADDY, TrSADDX, TrSADDY, TrUADD_CARRYX, TrUADD_CARRYY,
				TrSMUL, TrUMUL, TrUSUBX, TrUSUBY, TrRotLX, TrRotLY, TrRotL_CARRYX, TrRotL_CARRYY, TrLSRX, TrLSRY, TrASRX, TrASRY, TrLSLX, TrLSLX,
				TrLSLY, TrBCD, TrN, TrCout, TrV, TrZ, TrBinPal, TrPrime, TrActive)
	begin
		if (OPCODE = "0000") then					--AND Operation 
			X <= TrANDX;
			Y <= TrANDY;
			N <= TrN(0);
			Cout <= TrCout(0);
			V <= TrV(0);
			Z <= TrZ(0);
			X_bin_pal <= TrBinPal(0);
			X_prime <= TrPrime(0);
			F_active <= TrActive(0);
		elsif (OPCODE = "0001") then 				--OR Operation
			X <= TrORX;
			Y <= TrORY;
			N <= TrN(1);
			Cout <= TrCout(1);
			V <= TrV(1);
			Z <= TrZ(1);
			X_bin_pal <= TrBinPal(1);
			X_prime <= TrPrime(1);
			F_active <= TrActive(1);
		elsif (OPCODE = "0010") then				--XOR Operation
			X <= TrXORX;
			Y <= TrXORY;
			N <= TrN(2);
			Cout <= TrCout(2);
			V <= TrV(2);
			Z <= TrZ(2);
			X_bin_pal <= TrBinPal(2);
			X_prime <= TrPrime(2);
			F_active <= TrActive(2);
		elsif (OPCODE = "0011") then 				--XNOR Operation
			X <= TrXNORX;
			Y <= TrXNORY;
			N <= TrN(3);
			Cout <= TrCout(3);
			V <= TrV(3);
			Z <= TrZ(3);
			X_bin_pal <= TrBinPal(3);
			X_prime <= TrPrime(3);
			F_active <= TrActive(3);
		elsif (OPCODE = "0100") then 				--Unsigned Addition Operation
			X <= TrUADDX;
			Y <= TrUADDY;
			N <= TrN(4);
			Cout <= TrCout(4);
			V <= TrV(4);
			Z <= TrZ(4);
			X_bin_pal <= TrBinPal(4);
			X_prime <= TrPrime(4);
			F_active <= TrActive(4);
		elsif (OPCODE = "0101") then 				--Signed Addition Operation
			X <= TrSADDX;
			Y <= TrSADDY;
			N <= TrN(5);
			Cout <= TrCout(5);
			V <= TrV(5);
			Z <= TrZ(5);
			X_bin_pal <= TrBinPal(5);
			X_prime <= TrPrime(5);
			F_active <= TrActive(5);
		elsif (OPCODE = "0110") then 				--Usigned Addition with Cin Operation
			X <= TrUADD_CARRYX;
			Y <= TrUADD_CARRYY;
			N <= TrN(6);
			Cout <= TrCout(6);
			V <= TrV(6);
			Z <= TrZ(6);
			X_bin_pal <= TrBinPal(6);
			X_prime <= TrPrime(6);
			F_active <= TrActive(6);		
		elsif (OPCODE = "0111") then 				--Signed Multiplication
			X <= TrSMUL(7 downto 0);
			Y <= TrSMUL(15 downto 8);
			N <= TrN(6);
			Cout <= TrCout(7);
			V <= TrV(7);
			Z <= TrZ(7);
			X_bin_pal <= TrBinPal(7);
			X_prime <= TrPrime(7);
			F_active <= TrActive(7);			
		elsif (OPCODE = "1000") then 				--Usigned Multiplication
			X <= TrUMUL(7 downto 0);
			Y <= TrUMUL(15 downto 8);
			N <= TrN(8);
			Cout <= TrCout(8);
			V <= TrV(8);
			Z <= TrZ(8);
			X_bin_pal <= TrBinPal(8);
			X_prime <= TrPrime(8);
			F_active <= TrActive(8);		
		elsif (OPCODE = "1001") then 				--Unsigned Subtraction
			X <= TrUSUBX;
			Y <= TrUSUBY;
			N <= TrN(9);
			Cout <= TrCout(9);
			V <= TrV(9);
			Z <= TrZ(9);
			X_bin_pal <= TrBinPal(9);
			X_prime <= TrPrime(9);
			F_active <= TrActive(9);		
		elsif (OPCODE = "1010") then 				--Rotation Left
			X <= TrRotLX;
			Y <= TrRotLY;
			N <= TrN(10);
			Cout <= TrCout(10);
			V <= TrV(10);
			Z <= TrZ(10);
			X_bin_pal <= TrBinPal(10);
			X_prime <= TrPrime(10);
			F_active <= TrActive(10);
		elsif (OPCODE = "1011") then 				--Rotation Left with Carry
			X <= TrRotL_CARRYX;
			Y <= TrRotL_CARRYY;
			N <= TrN(11);
			Cout <= TrCout(11);
			V <= TrV(11);
			Z <= TrZ(11);
			X_bin_pal <= TrBinPal(11);
			X_prime <= TrPrime(11);
			F_active <= TrActive(11);
		elsif (OPCODE = "1100") then 				--Logic Shift Right
			X <= TrLSRX;
			Y <= TrLSRY;
			N <= TrN(12);
			Cout <= TrCout(12);
			V <= TrV(12);
			Z <= TrZ(12);
			X_bin_pal <= TrBinPal(12);
			X_prime <= TrPrime(12);
			F_active <= TrActive(12);
		elsif (OPCODE = "1101") then 				--Arithmatic Shift Right
			X <= TrASRX;
			Y <= TrASRY;
			N <= TrN(13);
			Cout <= TrCout(13);
			V <= TrV(13);
			Z <= TrZ(13);
			X_bin_pal <= TrBinPal(13);
			X_prime <= TrPrime(13);
			F_active <= TrActive(13);
		elsif (OPCODE = "1110") then 				--Logic Shift Left
			X <= TrLSLX;
			Y <= TrLSLY;
			N <= TrN(14);
			Cout <= TrCout(14);
			V <= TrV(14);
			Z <= TrZ(14);
			X_bin_pal <= TrBinPal(14);
			X_prime <= TrPrime(14);
			F_active <= TrActive(14);
		elsif (OPCODE = "1111") then 				--BCD to Binary Conversion
			X <= TrBCD(7 downto 0);
			Y <= TrBCD(15 downto 8);
			N <= TrN(15);
			Cout <= TrCout(15);
			V <= TrV(15);
			Z <= TrZ(15);
			X_bin_pal <= TrBinPal(15);
			X_prime <= TrPrime(15);
			F_active <= TrActive(15);
		end if;
	end Process;
	
end Structral;