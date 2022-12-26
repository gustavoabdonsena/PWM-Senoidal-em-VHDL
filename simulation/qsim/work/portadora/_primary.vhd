library verilog;
use verilog.vl_types.all;
entity portadora is
    port(
        ctt             : in     vl_logic_vector(7 downto 0);
        wave            : out    vl_logic_vector(7 downto 0)
    );
end portadora;
