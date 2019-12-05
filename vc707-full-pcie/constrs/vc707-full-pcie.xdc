# SGMII eeference clock 125MHz
create_clock -period 8.000 -name sgmii_mgt_clk_clk_p -waveform {0.000 4.000} [get_ports sgmii_mgt_clk_clk_p]

# DDR3- eeference clock 200MHz
create_clock -period 5.000 -name sys_diff_clock_clk_p -waveform {0.000 2.500} [get_ports sys_diff_clock_clk_p]

# PCI Express reference clock 100MHz
create_clock -period 10.000 -name pcie_ref_clk_p -waveform {0.000 5.000} [get_ports pcie_ref_clk_p]
set_property PACKAGE_PIN AB8 [get_ports {pcie_ref_clk_p[0]}]
set_property PACKAGE_PIN AB7 [get_ports {pcie_ref_clk_n[0]}]

# PCI Express reset (perst)
set_property PACKAGE_PIN AV35 [get_ports pcie_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports pcie_rst_n]


set_property PACKAGE_PIN Y3 [get_ports {pcie_exp_rxn[0]}]
set_property PACKAGE_PIN Y4 [get_ports {pcie_exp_rxp[0]}]
set_property PACKAGE_PIN W1 [get_ports {pcie_exp_txn[0]}]
set_property PACKAGE_PIN W2 [get_ports {pcie_exp_txp[0]}]

set_property PACKAGE_PIN AA5 [get_ports {pcie_exp_rxn[1]}]
set_property PACKAGE_PIN AA6 [get_ports {pcie_exp_rxp[1]}]
set_property PACKAGE_PIN AA1 [get_ports {pcie_exp_txn[1]}]
set_property PACKAGE_PIN AA2 [get_ports {pcie_exp_txp[1]}]

set_property PACKAGE_PIN AB3 [get_ports {pcie_exp_rxn[2]}]
set_property PACKAGE_PIN AB4 [get_ports {pcie_exp_rxp[2]}]
set_property PACKAGE_PIN AC1 [get_ports {pcie_exp_txn[2]}]
set_property PACKAGE_PIN AC2 [get_ports {pcie_exp_txp[2]}]

set_property PACKAGE_PIN AC5 [get_ports {pcie_exp_rxn[3]}]
set_property PACKAGE_PIN AC6 [get_ports {pcie_exp_rxp[3]}]
set_property PACKAGE_PIN AE1 [get_ports {pcie_exp_txn[3]}]
set_property PACKAGE_PIN AE2 [get_ports {pcie_exp_txp[3]}]

set_property PACKAGE_PIN AD3 [get_ports {pcie_exp_rxn[4]}]
set_property PACKAGE_PIN AD4 [get_ports {pcie_exp_rxp[4]}]
set_property PACKAGE_PIN AG1 [get_ports {pcie_exp_txn[4]}]
set_property PACKAGE_PIN AG2 [get_ports {pcie_exp_txp[4]}]

set_property PACKAGE_PIN AE5 [get_ports {pcie_exp_rxn[5]}]
set_property PACKAGE_PIN AE6 [get_ports {pcie_exp_rxp[5]}]
set_property PACKAGE_PIN AH3 [get_ports {pcie_exp_txn[5]}]
set_property PACKAGE_PIN AH4 [get_ports {pcie_exp_txp[5]}]

set_property PACKAGE_PIN AF3 [get_ports {pcie_exp_rxn[6]}]
set_property PACKAGE_PIN AF4 [get_ports {pcie_exp_rxp[6]}]
set_property PACKAGE_PIN AJ1 [get_ports {pcie_exp_txn[6]}]
set_property PACKAGE_PIN AJ2 [get_ports {pcie_exp_txp[6]}]

set_property PACKAGE_PIN AG5 [get_ports {pcie_exp_rxn[7]}]
set_property PACKAGE_PIN AG6 [get_ports {pcie_exp_rxp[7]}]
set_property PACKAGE_PIN AK3 [get_ports {pcie_exp_txn[7]}]
set_property PACKAGE_PIN AK4 [get_ports {pcie_exp_txp[7]}]