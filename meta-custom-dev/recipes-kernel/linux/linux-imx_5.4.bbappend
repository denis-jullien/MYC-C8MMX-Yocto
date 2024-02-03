FILESEXTRAPATHS_prepend := "${THISDIR}/linux-imx:"
SRC_URI += " \
file://FTDI-SIO.config"

DELTA_KERNEL_DEFCONFIG_prepend = "FTDI-SIO.config "

do_merge_delta_config_append(){
    bbwarn "Is this working ? asking from ${WORKDIR} ..."
}