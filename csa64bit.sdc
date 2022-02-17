###################################################################

# Created by write_sdc on Mon Feb 14 01:32:10 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_delay 5  -to [get_ports clk_out]
set_max_delay 5  -from [list [get_ports clk] [get_ports rst]]