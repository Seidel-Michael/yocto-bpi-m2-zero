# yocto-bpi-m2-zero


parted /dev/mmcblk0  resizepart 2 100%
resize2fs /dev/mmcblk0p2
date -s 2021.01.26-21:03:32
old Remote -SSH Version