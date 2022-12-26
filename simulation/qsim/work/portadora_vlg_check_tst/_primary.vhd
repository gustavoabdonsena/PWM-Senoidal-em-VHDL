library verilog;
use verilog.vl_types.all;
entity portadora_vlg_check_tst is
    port(
        wave            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end portadora_vlg_check_tst;
