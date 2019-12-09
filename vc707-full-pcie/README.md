# VC707-Full-PCIe

## How Create Petalinux Project

### Prerequisites

* source Petalinux settings.sh file
* source Vivado settinngs64.sh file

`source <path-to-installed-Xilinx-Vivado>/settings64.sh`

##### Create Petalinux Project
`petalinux-create --type project --template microblaze --name vc707-full-pcie-ptlnx`

##### Configure Petalinux Project
`cd vc707-full-pcie-ptlnx/`
`petalinux-config --get-hw-description=../vc707-full-pcie/vc707-full-pcie.exports`
change template to kc705-full in dts menuconfig

save and exit

run config again
`petalinux-config`


remove kc705-full and leave blank


##### Build and Petalinux Project

`petalinux-build`
`petalinux-package --boot --fpga ../vc707-full-pcie/vc707-full-pcie.exports/vc707_full_pcie.bit --u-boot --kernel`

##### Create Prebuilt Project
`petalinux-package --prebuilt --fpga ../vc707-full-pcie/vc707-full-pcie.exports/vc707_full_pcie.bit`

##### Test on Qemu
petalinux-boot --qemu --prebuilt 3

##### Test on Board
petalinux-boot --jtag --prebuilt 3
