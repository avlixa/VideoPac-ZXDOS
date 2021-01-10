-- generated with romgen v3.0 by MikeJ
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity rom_test is
	port (
		addr		: in    std_logic_vector(10 downto 0);
		data		: out   std_logic_vector(7 downto 0)
	);
end;

architecture rtl of rom_test is


	type ROM_ARRAY is array(0 to 2047) of std_logic_vector(7 downto 0);
	constant ROM : ROM_ARRAY := (
		x"44",x"C3",x"04",x"09",x"84",x"0C",x"04",x"1A", -- 0x0000
		x"84",x"0D",x"04",x"44",x"93",x"34",x"1C",x"B8", -- 0x0008
		x"A0",x"23",x"40",x"90",x"34",x"27",x"34",x"76", -- 0x0010
		x"23",x"99",x"62",x"45",x"B8",x"A3",x"23",x"46", -- 0x0018
		x"90",x"42",x"96",x"21",x"23",x"E6",x"62",x"45", -- 0x0020
		x"B8",x"A3",x"23",x"4E",x"90",x"34",x"1C",x"B8", -- 0x0028
		x"40",x"B9",x"89",x"94",x"77",x"B8",x"50",x"94", -- 0x0030
		x"77",x"B8",x"60",x"B9",x"9D",x"94",x"77",x"B8", -- 0x0038
		x"70",x"94",x"77",x"34",x"27",x"42",x"96",x"45", -- 0x0040
		x"23",x"E6",x"62",x"45",x"B8",x"A3",x"23",x"76", -- 0x0048
		x"90",x"42",x"96",x"51",x"23",x"E6",x"62",x"45", -- 0x0050
		x"B8",x"A3",x"23",x"66",x"90",x"42",x"96",x"5D", -- 0x0058
		x"23",x"E6",x"62",x"45",x"B8",x"A3",x"23",x"56", -- 0x0060
		x"90",x"42",x"96",x"69",x"23",x"E6",x"62",x"45", -- 0x0068
		x"B8",x"A3",x"23",x"7E",x"90",x"84",x"16",x"BA", -- 0x0070
		x"04",x"BB",x"04",x"F9",x"A3",x"90",x"18",x"19", -- 0x0078
		x"EA",x"7B",x"18",x"18",x"BA",x"02",x"EB",x"7B", -- 0x0080
		x"83",x"67",x"10",x"CD",x"FF",x"DD",x"FF",x"ED", -- 0x0088
		x"FF",x"FD",x"FF",x"67",x"18",x"D5",x"FF",x"E5", -- 0x0090
		x"FF",x"F5",x"FF",x"05",x"0E",x"67",x"50",x"0D", -- 0x0098
		x"0E",x"CD",x"0E",x"E5",x"0E",x"5D",x"0E",x"67", -- 0x00A0
		x"58",x"15",x"0E",x"F5",x"0E",x"9D",x"0E",x"A5", -- 0x00A8
		x"0E",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x00F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0100
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0108
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0110
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0118
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0120
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0128
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0130
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0138
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0140
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0148
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0150
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0158
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0160
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0168
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0170
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0178
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0180
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0188
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0190
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0198
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x01F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0200
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0208
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0210
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0218
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0220
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0228
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0230
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0238
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0240
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0248
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0250
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0258
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0260
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0268
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0270
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0278
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0280
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0288
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0290
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0298
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x02F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0300
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0308
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0310
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0318
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0320
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0328
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0330
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0338
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0340
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0348
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0350
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0358
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0360
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0368
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0370
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0378
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0380
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0388
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0390
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0398
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x03F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0400
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0408
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0410
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0418
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0420
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0428
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0430
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0438
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0440
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0448
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0450
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0458
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0460
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0468
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0470
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0478
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0480
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0488
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0490
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0498
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x04F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0500
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0508
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0510
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0518
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0520
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0528
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0530
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0538
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0540
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0548
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0550
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0558
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0560
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0568
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0570
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0578
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0580
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0588
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0590
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0598
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x05F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0600
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0608
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0610
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0618
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0620
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0628
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0630
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0638
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0640
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0648
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0650
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0658
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0660
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0668
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0670
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0678
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0680
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0688
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0690
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0698
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x06F8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0700
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0708
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0710
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0718
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0720
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0728
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0730
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0738
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0740
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0748
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0750
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0758
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0760
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0768
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0770
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0778
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0780
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0788
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0790
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x0798
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07A0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07A8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07B0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07B8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07C0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07C8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07D0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07D8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07E0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07E8
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF", -- 0x07F0
		x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF",x"FF"  -- 0x07F8
	);
begin

	process(ADDR)
	begin
			data <= ROM(to_integer(unsigned(addr(7 downto 0))));
	end process;
	
end RTL;
