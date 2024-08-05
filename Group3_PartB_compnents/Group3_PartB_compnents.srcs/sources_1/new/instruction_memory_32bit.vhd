library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;  

-- Entity declaration for the Instruction Memory
entity instruction_memory_32bit is
  port (
    inst_add: in std_logic_vector(5 downto 0);  -- 6-bit instruction address input (32 locations)
    instruction: out std_logic_vector(31 downto 0)  -- 32-bit instruction output
  );
end instruction_memory_32bit;

architecture Behavioral of instruction_memory_32bit is
  -- Internal signal for ROM address
  signal rom_addr: std_logic_vector(5 downto 0);

  -- Type declaration for ROM, an array of 32 locations each 32 bits wide
  type ROM_type is array (0 to 31) of std_logic_vector(31 downto 0);

  -- ROM data constant initialization - 32 bits instruction set architecture
  constant rom_data: ROM_type := (
    "00000000001000100100000000100000",  -- ADD $t0, $t1, $t2
    "00000000100001010101100000100010",  -- SUB $t3, $t4, $t5
    "00000000111010000111000000100100",  -- AND $t6, $t7, $t8
    "00000001000010010101000000100101",  -- OR $t9, $t0, $t1
    "00000000011001000001000000100110",  -- XOR $t2, $t3, $t4
    "00000000110001110010100000100111",  -- NOR $t5, $t6, $t7
    "00000000000000010100010000000000",  -- SLL $t0, $t1, 4
    "00000000000000110001001000000010",  -- SRL $t2, $t3, 2
    "00000000000001011010001100000011",  -- SRA $t4, $t5, 3
    "00000000111010000011000000101010",  -- SLT $t6, $t7, $t8
    "00100000010000010000000000001010",  -- ADDI $t1, $t2, 10
    "00110000100000110000000000001111",  -- ANDI $t3, $t4, 0xF
    "00110100110001010000000011111111",  -- ORI $t5, $t6, 0xFF
    "00111001000001110000000010100101",  -- XORI $t7, $t8, 0xA5
    "00111100000010000001001000110100",  -- LUI $t0, 0x1234
    "10001100011000100000000000000100",  -- LW $t2, 4($t3)
    "10101100101001000000000000001000",  -- SW $t4, 8($t5)
    "10000000111001100000000000001100",  -- LB $t6, 12($t7)
    "10100001001010000000000000010000",  -- SB $t8, 16($t9)
    "00010001000000010000000000000001",  -- BEQ $t0, $t1, Label1
    "00010100010000110000000000000010",  -- BNE $t2, $t3, Label2
    "00011000100000000000000000000011",  -- BLEZ $t4, Label3
    "00011100101000000000000000000100",  -- BGTZ $t5, Label4
    "00101000111001100000000000010100",  -- SLTI $t6, $t7, 20
    "00101101001010000000000000011110",  -- SLTIU $t8, $t9, 30
    "00001000000000000000000000000000",  -- J Label5
    "00001100000000000000000000000000",  -- JAL Label6
    "00000000000000000000000000000000",  -- NOP
    "00000000000000000000000000000000",  -- NOP
    "00000000000000000000000000000000",  -- NOP
    "00000000000000000000000000000000",  -- NOP
    "00000000000000000000000000000000"   -- NOP
  );

begin
  -- Assign the input address to the internal ROM address signal
  rom_addr <= inst_add;

  -- Fetch the instruction from ROM using the address and assign it to the output
  instruction <= rom_data(to_integer(unsigned(rom_addr)));

end Behavioral;