# ---- zegar systemowy 100 MHz (LVDS 1V8) ----
set_property PACKAGE_PIN D7 [get_ports CLK_100MHz_P]
set_property PACKAGE_PIN D6 [get_ports CLK_100MHz_N]
set_property IOSTANDARD LVDS [get_ports CLK_100MHz_*]
create_clock -period 10.000 -name Clk_100MHz [get_ports CLK_100MHz_P]

# ---- przyciski: PB0 = w gore, PB1 = w dol, PB3 = reset ----
set_property PACKAGE_PIN AB6 [get_ports {PL_USER_PB[0]}]
set_property PACKAGE_PIN AB7 [get_ports {PL_USER_PB[1]}]
set_property PACKAGE_PIN AB2 [get_ports {PL_USER_PB[2]}]
set_property PACKAGE_PIN AC6 [get_ports {PL_USER_PB[3]}]
set_property IOSTANDARD LVCMOS12 [get_ports PL_USER_PB*]

# ---- diody LED (podglad binarny licznika) ----
set_property PACKAGE_PIN AF5 [get_ports {PL_USER_LED[0]}]
set_property PACKAGE_PIN AE7 [get_ports {PL_USER_LED[1]}]
set_property PACKAGE_PIN AH2 [get_ports {PL_USER_LED[2]}]
set_property PACKAGE_PIN AE5 [get_ports {PL_USER_LED[3]}]
set_property PACKAGE_PIN AH1 [get_ports {PL_USER_LED[4]}]
set_property PACKAGE_PIN AE4 [get_ports {PL_USER_LED[5]}]
set_property PACKAGE_PIN AG1 [get_ports {PL_USER_LED[6]}]
set_property PACKAGE_PIN AF2 [get_ports {PL_USER_LED[7]}]
set_property IOSTANDARD LVCMOS12 [get_ports PL_USER_LED*]

# ---- plytka rozszerzen (RPi): OLED I2C ----
set_property PACKAGE_PIN AE12 [get_ports OLED_SCL]
set_property PACKAGE_PIN AF12 [get_ports OLED_SDA]
set_property IOSTANDARD LVCMOS33 [get_ports OLED_*]

# ---- plytka rozszerzen (RPi): PS/2 A ----
set_property PACKAGE_PIN AB10 [get_ports PS2A_Data]
set_property PACKAGE_PIN AB9  [get_ports PS2A_Clk]
set_property IOSTANDARD LVCMOS33 [get_ports PS2A_*]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
