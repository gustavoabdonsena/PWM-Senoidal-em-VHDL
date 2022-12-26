library verilog;
use verilog.vl_types.all;
entity comparador is
    port(
        input_minus     : in     vl_logic_vector(7 downto 0);
        input_plus      : in     vl_logic_vector(7 downto 0);
        output_signal   : out    vl_logic
    );
end comparador;
