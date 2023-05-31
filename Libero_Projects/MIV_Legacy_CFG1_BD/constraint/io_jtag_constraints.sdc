create_clock -name { TCK } \
-period 166.67 \
-waveform { 0 83.33 } \
[ get_ports { TCK } ]

# JTAG and Mi-V clocks are independent - adding asynchronous clock group
set_clock_groups -name {async1} -asynchronous -group [ get_clocks { SYS_CLK} ] -group [ get_clocks { TCK } ]