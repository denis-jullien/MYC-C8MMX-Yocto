FILESEXTRAPATHS_prepend := "${THISDIR}/linux-imx:"
SRC_URI += " \
file://FTDI-SIO.config \
file://newheaven_mipi_dsi.dts;subdir=git/arch/arm64/boot/dts/myir"

DELTA_KERNEL_DEFCONFIG_prepend = "FTDI-SIO.config "
KERNEL_DEVICETREE += "myir/newheaven_mipi_dsi.dtb "

do_merge_delta_config_append(){
    bbwarn "Is this working ? asking from ${WORKDIR} ..."
}

#https://stackoverflow.com/questions/37744110/how-do-i-escape-a-in-bitbake-yocto
do_configure_append(){
#    cp ${WORKDIR}/newheaven_mipi_dsi.dts ${S}/arch/arm64/boot/dts/myir
    /bin/echo -e "dtb-\x24(CONFIG_ARCH_MXC) += newheaven_mipi_dsi.dtb" >> ${S}/arch/arm64/boot/dts/myir/Makefile
}