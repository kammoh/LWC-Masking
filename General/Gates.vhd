-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module AND (General/Gates.v:31)
entity AND_module is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module AND (General/Gates.v:31)
architecture from_verilog of AND_module is
begin
  Y <= A and B;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module AND2_X1 (General/Gates.v:218)
entity AND2_X1 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module AND2_X1 (General/Gates.v:218)
architecture from_verilog of AND2_X1 is
begin
  ZN <= A1 and A2;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module BUFF (General/Gates.v:114)
entity BUFF is
  port (
    A : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module BUFF (General/Gates.v:114)
architecture from_verilog of BUFF is
begin
  Y <= A;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module BUF_X1 (General/Gates.v:178)
entity BUF_X1 is
  port (
    A : in std_logic;
    Z : out std_logic
  );
end entity; 

-- Generated from Verilog module BUF_X1 (General/Gates.v:178)
architecture from_verilog of BUF_X1 is
begin
  Z <= A;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DFF (General/Gates.v:125)
entity DFF is
  port (
    C : in std_logic;
    D : in std_logic;
    Q : out std_logic
  );
end entity; 

-- Generated from Verilog module DFF (General/Gates.v:125)
architecture from_verilog of DFF is
  signal Q_Reg : std_logic;
begin
  Q <= Q_Reg;
  
  -- Generated from initial process in DFF (General/Gates.v:125)
  process is
  begin
    Q_Reg <= '0';
    wait;
  end process;
  
  -- Generated from always process in DFF (General/Gates.v:131)
  process (C) is
  begin
    if rising_edge(C) then
      Q_Reg <= D;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DFF_X (General/Gates.v:140)
entity DFF_X is
  port (
    C : in std_logic;
    D : in std_logic;
    Q : out std_logic;
    QN : out std_logic
  );
end entity; 

-- Generated from Verilog module DFF_X (General/Gates.v:140)
architecture from_verilog of DFF_X is
  signal Q_Reg : std_logic;
begin
  Q <= Q_Reg;
  QN <= not Q_Reg;
  
  -- Generated from initial process in DFF_X (General/Gates.v:140)
  process is
  begin
    Q_Reg <= '0';
    wait;
  end process;
  
  -- Generated from always process in DFF_X (General/Gates.v:147)
  process (C) is
  begin
    if rising_edge(C) then
      Q_Reg <= D;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DFF_X1 (General/Gates.v:390)
entity DFF_X1 is
  port (
    CK : in std_logic;
    D : in std_logic;
    Q : out std_logic;
    QN : out std_logic
  );
end entity; 

-- Generated from Verilog module DFF_X1 (General/Gates.v:390)
architecture from_verilog of DFF_X1 is
  signal Q_Reg : std_logic;
begin
  Q <= Q_Reg;
  QN <= not Q_Reg;
  
  -- Generated from initial process in DFF_X1 (General/Gates.v:390)
  process is
  begin
    Q_Reg <= '0';
    wait;
  end process;
  
  -- Generated from always process in DFF_X1 (General/Gates.v:397)
  process (CK) is
  begin
    if rising_edge(CK) then
      Q_Reg <= D;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DFF_X2 (General/Gates.v:408)
entity DFF_X2 is
  port (
    CK : in std_logic;
    D : in std_logic;
    Q : out std_logic;
    QN : out std_logic
  );
end entity; 

-- Generated from Verilog module DFF_X2 (General/Gates.v:408)
architecture from_verilog of DFF_X2 is
  signal Q_Reg : std_logic;
begin
  Q <= Q_Reg;
  QN <= not Q_Reg;
  
  -- Generated from initial process in DFF_X2 (General/Gates.v:408)
  process is
  begin
    Q_Reg <= '0';
    wait;
  end process;
  
  -- Generated from always process in DFF_X2 (General/Gates.v:415)
  process (CK) is
  begin
    if rising_edge(CK) then
      Q_Reg <= D;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DFF_X4 (General/Gates.v:426)
entity DFF_X4 is
  port (
    CK : in std_logic;
    D : in std_logic;
    Q : out std_logic;
    QN : out std_logic
  );
end entity; 

-- Generated from Verilog module DFF_X4 (General/Gates.v:426)
architecture from_verilog of DFF_X4 is
  signal Q_Reg : std_logic;
begin
  Q <= Q_Reg;
  QN <= not Q_Reg;
  
  -- Generated from initial process in DFF_X4 (General/Gates.v:426)
  process is
  begin
    Q_Reg <= '0';
    wait;
  end process;
  
  -- Generated from always process in DFF_X4 (General/Gates.v:433)
  process (CK) is
  begin
    if rising_edge(CK) then
      Q_Reg <= D;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module INV_X1 (General/Gates.v:189)
entity INV_X1 is
  port (
    A : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module INV_X1 (General/Gates.v:189)
architecture from_verilog of INV_X1 is
begin
  ZN <= not A;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module INV_X2 (General/Gates.v:198)
entity INV_X2 is
  port (
    A : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module INV_X2 (General/Gates.v:198)
architecture from_verilog of INV_X2 is
begin
  ZN <= not A;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module INV_X4 (General/Gates.v:207)
entity INV_X4 is
  port (
    A : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module INV_X4 (General/Gates.v:207)
architecture from_verilog of INV_X4 is
begin
  ZN <= not A;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module Latch_X (General/Gates.v:158)
entity Latch_X is
  port (
    D : in std_logic;
    E : in std_logic;
    Q : out std_logic;
    QN : out std_logic
  );
end entity; 

-- Generated from Verilog module Latch_X (General/Gates.v:158)
architecture from_verilog of Latch_X is
  signal Q_Reg : std_logic;
begin
  Q <= Q_Reg;
  QN <= not Q_Reg;
  
  -- Generated from initial process in Latch_X (General/Gates.v:158)
  process is
  begin
    Q_Reg <= '0';
    wait;
  end process;
  
  -- Generated from always process in Latch_X (General/Gates.v:165)
  process (E) is
  begin
    if E = '1' then
      Q_Reg <= D;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module MUX2_X1 (General/Gates.v:444)
entity MUX2_X1 is
  port (
    A : in std_logic;
    B : in std_logic;
    S : in std_logic;
    Z : out std_logic
  );
end entity; 

-- Generated from Verilog module MUX2_X1 (General/Gates.v:444)
architecture from_verilog of MUX2_X1 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:451
  signal tmp_ivl_2 : std_logic;  -- Temporary created at General/Gates.v:451
  signal tmp_ivl_4 : std_logic;  -- Temporary created at General/Gates.v:451
begin
  tmp_ivl_0 <= not S;
  tmp_ivl_2 <= tmp_ivl_0 and A;
  tmp_ivl_4 <= S and B;
  Z <= tmp_ivl_2 or tmp_ivl_4;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module MUX2_X2 (General/Gates.v:455)
entity MUX2_X2 is
  port (
    A : in std_logic;
    B : in std_logic;
    S : in std_logic;
    Z : out std_logic
  );
end entity; 

-- Generated from Verilog module MUX2_X2 (General/Gates.v:455)
architecture from_verilog of MUX2_X2 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:462
  signal tmp_ivl_2 : std_logic;  -- Temporary created at General/Gates.v:462
  signal tmp_ivl_4 : std_logic;  -- Temporary created at General/Gates.v:462
begin
  tmp_ivl_0 <= not S;
  tmp_ivl_2 <= tmp_ivl_0 and A;
  tmp_ivl_4 <= S and B;
  Z <= tmp_ivl_2 or tmp_ivl_4;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NAND (General/Gates.v:43)
entity NAND_module is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module NAND (General/Gates.v:43)
architecture from_verilog of NAND_module is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:49
begin
  tmp_ivl_0 <= A and B;
  Y <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NAND2_X1 (General/Gates.v:358)
entity NAND2_X1 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module NAND2_X1 (General/Gates.v:358)
architecture from_verilog of NAND2_X1 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:364
begin
  tmp_ivl_0 <= A1 and A2;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NAND2_X2 (General/Gates.v:368)
entity NAND2_X2 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module NAND2_X2 (General/Gates.v:368)
architecture from_verilog of NAND2_X2 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:374
begin
  tmp_ivl_0 <= A1 and A2;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NAND2_X4 (General/Gates.v:378)
entity NAND2_X4 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module NAND2_X4 (General/Gates.v:378)
architecture from_verilog of NAND2_X4 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:384
begin
  tmp_ivl_0 <= A1 and A2;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NOR (General/Gates.v:67)
entity NOR_module is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module NOR (General/Gates.v:67)
architecture from_verilog of NOR_module is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:73
begin
  tmp_ivl_0 <= A or B;
  Y <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NOR2_X1 (General/Gates.v:326)
entity NOR2_X1 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module NOR2_X1 (General/Gates.v:326)
architecture from_verilog of NOR2_X1 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:332
begin
  tmp_ivl_0 <= A1 or A2;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NOR2_X2 (General/Gates.v:336)
entity NOR2_X2 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module NOR2_X2 (General/Gates.v:336)
architecture from_verilog of NOR2_X2 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:342
begin
  tmp_ivl_0 <= A1 or A2;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NOR2_X4 (General/Gates.v:346)
entity NOR2_X4 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module NOR2_X4 (General/Gates.v:346)
architecture from_verilog of NOR2_X4 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:352
begin
  tmp_ivl_0 <= A1 or A2;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module NOT (General/Gates.v:103)
entity NOT_module is
  port (
    A : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module NOT (General/Gates.v:103)
architecture from_verilog of NOT_module is
begin
  Y <= not A;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module OR (General/Gates.v:55)
entity OR_module is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module OR (General/Gates.v:55)
architecture from_verilog of OR_module is
begin
  Y <= A or B;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module OR2_X1 (General/Gates.v:294)
entity OR2_X1 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module OR2_X1 (General/Gates.v:294)
architecture from_verilog of OR2_X1 is
begin
  ZN <= A1 or A2;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module OR2_X2 (General/Gates.v:304)
entity OR2_X2 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module OR2_X2 (General/Gates.v:304)
architecture from_verilog of OR2_X2 is
begin
  ZN <= A1 or A2;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module OR2_X4 (General/Gates.v:314)
entity OR2_X4 is
  port (
    A1 : in std_logic;
    A2 : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module OR2_X4 (General/Gates.v:314)
architecture from_verilog of OR2_X4 is
begin
  ZN <= A1 or A2;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XNOR (General/Gates.v:91)
entity XNOR_module is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module XNOR (General/Gates.v:91)
architecture from_verilog of XNOR_module is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:97
begin
  tmp_ivl_0 <= A xor B;
  Y <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XNOR2_X1 (General/Gates.v:262)
entity XNOR2_X1 is
  port (
    A : in std_logic;
    B : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module XNOR2_X1 (General/Gates.v:262)
architecture from_verilog of XNOR2_X1 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:268
begin
  tmp_ivl_0 <= A xor B;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XNOR2_X2 (General/Gates.v:272)
entity XNOR2_X2 is
  port (
    A : in std_logic;
    B : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module XNOR2_X2 (General/Gates.v:272)
architecture from_verilog of XNOR2_X2 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:278
begin
  tmp_ivl_0 <= A xor B;
  ZN <= not tmp_ivl_0;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XOR (General/Gates.v:79)
entity XOR_module is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
  );
end entity; 

-- Generated from Verilog module XOR (General/Gates.v:79)
architecture from_verilog of XOR_module is
begin
  Y <= A xor B;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XOR2_X1 (General/Gates.v:230)
entity XOR2_X1 is
  port (
    A : in std_logic;
    B : in std_logic;
    Z : out std_logic
  );
end entity; 

-- Generated from Verilog module XOR2_X1 (General/Gates.v:230)
architecture from_verilog of XOR2_X1 is
begin
  Z <= A xor B;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XOR2_X2 (General/Gates.v:240)
entity XOR2_X2 is
  port (
    A : in std_logic;
    B : in std_logic;
    Z : out std_logic
  );
end entity; 

-- Generated from Verilog module XOR2_X2 (General/Gates.v:240)
architecture from_verilog of XOR2_X2 is
begin
  Z <= A xor B;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XOR2_X4 (General/Gates.v:250)
entity XOR2_X4 is
  port (
    A : in std_logic;
    B : in std_logic;
    Z : out std_logic
  );
end entity; 

-- Generated from Verilog module XOR2_X4 (General/Gates.v:250)
architecture from_verilog of XOR2_X4 is
begin
  Z <= A xor B;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module XnOR2_X4 (General/Gates.v:282)
entity XnOR2_X4 is
  port (
    A : in std_logic;
    B : in std_logic;
    ZN : out std_logic
  );
end entity; 

-- Generated from Verilog module XnOR2_X4 (General/Gates.v:282)
architecture from_verilog of XnOR2_X4 is
  signal tmp_ivl_0 : std_logic;  -- Temporary created at General/Gates.v:288
begin
  tmp_ivl_0 <= A xor B;
  ZN <= not tmp_ivl_0;
end architecture;

