library verilog;
use verilog.vl_types.all;
entity portadora_vlg_sample_tst is
    port(
        ctt             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end portadora_vlg_sample_tst;
