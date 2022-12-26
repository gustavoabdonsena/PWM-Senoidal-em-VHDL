library verilog;
use verilog.vl_types.all;
entity comparador_vlg_sample_tst is
    port(
        input_minus     : in     vl_logic_vector(7 downto 0);
        input_plus      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end comparador_vlg_sample_tst;
