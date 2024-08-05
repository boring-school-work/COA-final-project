LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY tb_MIPS_32bit IS
END tb_MIPS_32bit;

ARCHITECTURE behavior OF tb_MIPS_32bit is
    -- Component Declaration for the single-cycle MIPS Processor
    COMPONENT MIPS_VHDL_32BIT
    PORT(
        clk : IN  std_logic;
        reset : IN  std_logic;
        pc_out : OUT  std_logic_vector(5 downto 0);
        alu_result : OUT  std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    -- Inputs
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    -- Inputs
    signal pc_out : std_logic_vector(5 downto 0);
    signal alu_result : std_logic_vector(31 downto 0);
    -- Clock period definitions
    constant clk_period : time := 10 ps;

BEGIN
    -- Instantiate the single-cycle MIPS Processor
    uut: MIPS_VHDL_32BIT PORT MAP (
        clk => clk,
        reset => reset,
        pc_out => pc_out,
        alu_result => alu_result
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/5;
        clk <= '1';
        wait for clk_period/5;
    end process;

    -- Stimulus process
    stim_proc: process
    begin  
        -- Reset the system
        reset <= '1';
        wait for clk_period*10;
        reset <= '0';

        -- Wait for a few clock cycles for each instruction to be executed
        wait for clk_period*10;
        
        -- Reset again to see the processor execute the instructions from the start
        reset <= '1';
        wait for clk_period*10;
        reset <= '0';

        -- Wait for a certain number of clock cycles to observe the program execution
        wait for clk_period*100;


        -- End of stimulus
        wait;
    end process;

END behavior;
