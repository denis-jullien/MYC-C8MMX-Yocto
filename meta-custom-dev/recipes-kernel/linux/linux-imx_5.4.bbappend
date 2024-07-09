FILESEXTRAPATHS_prepend := "${THISDIR}/linux-imx:"
SRC_URI += " \
file://FTDI-SIO.config \
file://newheaven_mipi_dsi.dts;subdir=git/arch/arm/boot/dts/myir"

DELTA_KERNEL_DEFCONFIG_prepend = "FTDI-SIO.config "
KERNEL_DEVICETREE += "newheaven_mipi_dsi.dtb "

do_merge_delta_config_append(){
    bbwarn "Is this working ? asking from ${WORKDIR} ..."
}
# This is not working
# maybe see https://developer.toradex.com/linux-bsp/os-development/build-yocto/custom-meta-layers-recipes-and-images-in-yocto-project-hello-world-examples/#customize-the-kernel ?
do_configure_append(){
#    cp ${WORKDIR}/newheaven_mipi_dsi.dts ${S}/arch/arm/boot/dts/myir
    echo "dtb-$(CONFIG_ARCH_MXC) += newheaven_mipi_dsi.dtb" >> ${S}/arch/arm/boot/dts/myir/Makefile
}