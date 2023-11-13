LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY gateXOR;
USE gateXOR.all;

ENTITY CRC_8 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- 16-bit dataword
    r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  -- remainder is the output
  );
END CRC_8;

ARCHITECTURE logicFunction OF CRC_8 IS
  -- Level 1
  SIGNAL a13_0, a5_3, a7_1, a6_1, a15_11, a4_2, a13_7, a0_10, a12_14, a9_7, a14_8, a3_11, a2_5, a4_6, a8_15: STD_LOGIC;

  -- Level 2
  SIGNAL a6_1_4_2, a13_0_5_3, a7_1_12, a15_11_5_3, a5_3_0_10, a15_11_4_2, a9_7_12, a14_8_6_1, a3_11_10, a13_0_9_7, a2_5_10, a9_7_4_6, a13_0_14_8: STD_LOGIC;

  -- Level 3
  SIGNAL a15_11_5_3_13_7, a5_3_0_10_12_14, a9_7_4_6_8_15: STD_LOGIC;

  COMPONENT gateXOR2
    PORT (x0, x1: IN STD_LOGIC; y: OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT gateXOR3
    PORT (x0, x1, x2: IN STD_LOGIC; y: OUT STD_LOGIC);
  END COMPONENT;

BEGIN
  -- Level 1
  xor_a13_0: gateXOR2 PORT MAP(a(13), a(0), a13_0);         -- a13 xor a0
  xor_a5_3: gateXOR2 PORT MAP(a(5), a(3), a5_3);           -- a5 xor a3
  xor_a7_1: gateXOR2 PORT MAP(a(7), a(1), a7_1);           -- a7 xor a1
  xor_a6_1: gateXOR2 PORT MAP(a(6), a(1), a6_1);           -- a6 xor a1
  xor_a15_11: gateXOR2 PORT MAP(a(15), a(11), a15_11);     -- a15 xor a11
  xor_a4_2: gateXOR2 PORT MAP(a(4), a(2), a4_2);           -- a4 xor a2
  xor_a13_7: gateXOR2 PORT MAP(a(13), a(7), a13_7);        -- a13 xor a7
  xor_a0_10: gateXOR2 PORT MAP(a(0), a(10), a0_10);        -- a0 xor a10
  xor_a12_14: gateXOR2 PORT MAP(a(12), a(14), a12_14);     -- a12 xor a14
  xor_a9_7: gateXOR2 PORT MAP(a(9), a(7), a9_7);           -- a9 xor a7
  xor_a14_8: gateXOR2 PORT MAP(a(14), a(8), a14_8);        -- a14 xor a8
  xor_a3_11: gateXOR2 PORT MAP(a(3), a(11), a3_11);        -- a3 xor a11
  xor_a2_5: gateXOR2 PORT MAP(a(2), a(5), a2_5);           -- a2 xor a5
  xor_a4_6: gateXOR2 PORT MAP(a(4), a(6), a4_6);           -- a4 xor a6
  xor_a8_15: gateXOR2 PORT MAP(a(8), a(15), a8_15);        -- a8 xor a15

  -- Level 2
  xor_a6_1_4_2: 				gateXOR2 PORT MAP(a6_1,    a4_2,  a6_1_4_2);     -- a6_1 xor a4_2
  xor_a13_0_5_3: 				gateXOR2 PORT MAP(a13_0,   a5_3,  a13_0_5_3);
  xor_a7_1_12: 				gateXOR2 PORT MAP(a7_1,    a(12), a7_1_12);
  xor_a15_11_5_3:			   gateXOR2 PORT MAP(a15_11,  a5_3,  a15_11_5_3);
  xor_a5_3_0_10:           gateXOR2 PORT MAP(a5_3,    a0_10, a5_3_0_10);
  xor_a15_11_4_2:          gateXOR2 PORT MAP(a15_11,  a4_2,  a15_11_4_2);
  xor_a9_7_12:             gateXOR2 PORT MAP(a9_7,    a(12), a9_7_12);
  xor_a14_8_6_1:           gateXOR2 PORT MAP(a14_8,   a6_1,  a14_8_6_1);
  xor_a3_11_10:            gateXOR2 PORT MAP(a3_11,   a(10), a3_11_10);
  xor_a13_0_9_7:           gateXOR2 PORT MAP(a13_0,   a9_7,  a13_0_9_7);
  xor_a2_5_10:             gateXOR2 PORT MAP(a2_5,    a(10), a2_5_10);
  xor_a13_0_14_8:          gateXOR2 PORT MAP(a13_0,   a14_8, a13_0_14_8);
  xor_a9_7_4_6:            gateXOR2 PORT MAP(a9_7,   a4_6, a9_7_4_6);


  -- Level 3
  xor_a15_11_5_3_13_7: gateXOR2 PORT MAP(a15_11_5_3, a13_7,  a15_11_5_3_13_7);
  xor_a5_3_0_10_12_14: gateXOR2 PORT MAP(a5_3_0_10,  a12_14, a5_3_0_10_12_14);
  xor_a9_7_4_6_8_15:   gateXOR2 PORT MAP(a9_7_4_6,   a8_15,  a9_7_4_6_8_15);

  -- Remainder
  xor_r0: gateXOR2 PORT MAP(a6_1_4_2,  a13_0_14_8, r(0));
  xor_r1: gateXOR2 PORT MAP(a13_0_5_3, a9_7_4_6_8_15, r(1));
  xor_r2: gateXOR2 PORT MAP(a13_0_9_7, a2_5_10, r(2));
  xor_r3: gateXOR2 PORT MAP(a14_8_6_1, a3_11_10, r(3));
  xor_r4: gateXOR2 PORT MAP(a15_11_4_2, a9_7_12, r(4));
  xor_r5: gateXOR2 PORT MAP(a6_1_4_2,  a5_3_0_10_12_14, r(5));
  xor_r6: gateXOR2 PORT MAP(a6_1_4_2,  a15_11_5_3_13_7, r(6));
  xor_r7: gateXOR2 PORT MAP(a13_0_5_3, a7_1_12, r(7));

END logicFunction;