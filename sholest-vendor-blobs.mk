# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,BOARD
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    vendor/motorola/sholest/proprietary/lib/libgps.so:obj/lib/libgps.so \
    vendor/motorola/sholest/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/motorola/sholest/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    vendor/motorola/sholest/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
    vendor/motorola/sholest/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    vendor/motorola/sholest/proprietary/lib/libril-moto-umts-1.so:obj/lib/libril-moto-umts-1.so \
    vendor/motorola/sholest/proprietary/lib/hw/gralloc.omap3.so:obj/lib/hw/gralloc.omap3.so \
    vendor/motorola/sholest/proprietary/lib/hw/lights.sholes.so:obj/lib/hw/lights.sholes.so \
    vendor/motorola/sholest/proprietary/lib/hw/sensors.sholes.so:obj/lib/hw/sensors.sholes.so

# All the blobs necessary 
PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/framework/mot-framework-res.apk:/system/framework/mot-framework-res.apk \
    vendor/motorola/sholest/proprietary/etc/cameraCalFileDef.bin:/system/etc/cameraCalFileDef.bin \
    vendor/motorola/sholest/proprietary/etc/01_Vendor_ti_omx.cfg:/system/etc/01_Vendor_ti_omx.cfg

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/etc/pvasflocal.cfg:/system/etc/pvasflocal.cfg \
    vendor/motorola/sholest/proprietary/etc/gpsconfig.xml:/system/etc/gpsconfig.xml \
    vendor/motorola/sholest/proprietary/etc/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml \
    vendor/motorola/sholest/proprietary/etc/permissions/motorola_platform.xml:/system/etc/permissions/motorola_platform.xml

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/etc/motorola/bplogd.conf:/system/etc/motorola/bplogd.conf \
    vendor/motorola/sholest/proprietary/etc/motorola/12m/key_code_map.txt:/system/etc/motorola/12m/key_code_map.txt \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio4:/system/etc/motorola/bp_nvm_default/File_Audio4 \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_GSM:/system/etc/motorola/bp_nvm_default/File_GSM \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio7:/system/etc/motorola/bp_nvm_default/File_Audio7 \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio3:/system/etc/motorola/bp_nvm_default/File_Audio3 \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables:/system/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio6:/system/etc/motorola/bp_nvm_default/File_Audio6 \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio2:/system/etc/motorola/bp_nvm_default/File_Audio2 \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Logger:/system/etc/motorola/bp_nvm_default/File_Logger \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_GPRS:/system/etc/motorola/bp_nvm_default/File_GPRS \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio5:/system/etc/motorola/bp_nvm_default/File_Audio5 \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio:/system/etc/motorola/bp_nvm_default/File_Audio \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_UMA:/system/etc/motorola/bp_nvm_default/File_UMA \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB \
    vendor/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_user_settings.cfg:/system/etc/motorola/comm_drv/mmins_user_settings.cfg \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_telephony.cfg:/system/etc/motorola/comm_drv/mmins_telephony.cfg \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/PLMN_VERSION.txt:/system/etc/motorola/comm_drv/PLMN_VERSION.txt \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/plmn_text_table.bin:/system/etc/motorola/comm_drv/plmn_text_table.bin \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/commdrv_fs.sh:/system/etc/motorola/comm_drv/commdrv_fs.sh \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_settings.cfg:/system/etc/motorola/comm_drv/mmins_settings.cfg \
    vendor/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg:/system/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/etc/firmware/wl1271.bin:/system/etc/firmware/wl1271.bin \
    vendor/motorola/sholest/proprietary/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    vendor/motorola/sholest/proprietary/etc/wifi/hostapd.conf.templet:/system/etc/wifi/hostapd.conf.templet \
    vendor/motorola/sholest/proprietary/etc/wifi/fw_wlan1271.bin:/system/etc/wifi/fw_wlan1271.bin \
    vendor/motorola/sholest/proprietary/etc/wifi/fw_tiwlan_ap.bin:/system/etc/wifi/fw_tiwlan_ap.bin \
    vendor/motorola/sholest/proprietary/etc/wifi/tiwlan_ap.ini:/system/etc/wifi/tiwlan_ap.ini

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/usr/bin/panic_daemon:/system/bin/panic_daemon \
    vendor/motorola/sholest/proprietary/usr/bin/nvm_daemon:/system/bin/nvm_daemon \
    vendor/motorola/sholest/proprietary/usr/bin/brcm_guci_drv:/system/bin/brcm_guci_drv \
    vendor/motorola/sholest/proprietary/usr/bin/gki_pd_notifier:/system/bin/gki_pd_notifier \
    vendor/motorola/sholest/proprietary/usr/bin/bplogd_daemon:/system/bin/bplogd_daemon \
    vendor/motorola/sholest/proprietary/usr/bin/clean_dex.sh:/system/bin/clean_dex.sh

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/bin/init_prep_keypad.sh:/system/bin/init_prep_keypad.sh \
    vendor/motorola/sholest/proprietary/bin/bootanimation:/system/bin/bootanimation \
    vendor/motorola/sholest/proprietary/bin/dnsmasq_mot:/system/bin/dnsmasq_mot \
    vendor/motorola/sholest/proprietary/bin/tcmd:/system/bin/tcmd \
    vendor/motorola/sholest/proprietary/bin/safe_reboot:/system/bin/safe_reboot \
    vendor/motorola/sholest/proprietary/bin/logfilter-get:/system/bin/logfilter-get \
    vendor/motorola/sholest/proprietary/bin/mot_boot_mode:/system/bin/mot_boot_mode \
    vendor/motorola/sholest/proprietary/bin/battd:/system/bin/battd \
    vendor/motorola/sholest/proprietary/bin/gkilogd:/system/bin/gkilogd \
    vendor/motorola/sholest/proprietary/bin/akmd2:/system/bin/akmd2 \
    vendor/motorola/sholest/proprietary/bin/bthelp:/system/bin/bthelp \
    vendor/motorola/sholest/proprietary/bin/protocol_driver:/system/bin/protocol_driver \
    vendor/motorola/sholest/proprietary/bin/secclkd:/system/bin/secclkd \
    vendor/motorola/sholest/proprietary/bin/dbvc_atvc_property_set:/system/bin/dbvc_atvc_property_set \
    vendor/motorola/sholest/proprietary/bin/logfilter-set:/system/bin/logfilter-set \
    vendor/motorola/sholest/proprietary/bin/watchdogd:/system/bin/watchdogd \
    vendor/motorola/sholest/proprietary/bin/bttest_mot:/system/bin/bttest_mot \
    vendor/motorola/sholest/proprietary/bin/ap_gain_france.bin:/system/bin/ap_gain_france.bin \
    vendor/motorola/sholest/proprietary/bin/gkisystem:/system/bin/gkisystem \
    vendor/motorola/sholest/proprietary/bin/opprofdaemon:/system/bin/opprofdaemon \
    vendor/motorola/sholest/proprietary/bin/rild_tcmd:/system/bin/rild_tcmd \
    vendor/motorola/sholest/proprietary/bin/ap_gain.bin:/system/bin/ap_gain.bin \
    vendor/motorola/sholest/proprietary/bin/pvrsrvinit:/system/bin/pvrsrvinit \
    vendor/motorola/sholest/proprietary/bin/aplogd:/system/bin/aplogd \
    vendor/motorola/sholest/proprietary/bin/location:/system/bin/location \
    vendor/motorola/sholest/proprietary/bin/usbd:/system/bin/usbd \
    vendor/motorola/sholest/proprietary/bin/catcommands:/system/bin/catcommands \
    vendor/motorola/sholest/proprietary/bin/Hostapd:/system/bin/Hostapd \
    vendor/motorola/sholest/proprietary/bin/wlan_cu:/system/bin/wlan_cu \
    vendor/motorola/sholest/proprietary/bin/wlan_loader:/system/bin/wlan_loader \
    vendor/motorola/sholest/proprietary/bin/charge_only_mode:/system/bin/charge_only_mode

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/xbin/ssmgrd:/system/xbin/ssmgrd \
    vendor/motorola/sholest/proprietary/bin/pppd:/system/xbin/pppd

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholesp1a-keypad.kl:/system/usr/keylayout/sholesp1a-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholesp0b-keypad.kl:/system/usr/keylayout/sholesp0b-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/cpcap-key.kl:/system/usr/keylayout/cpcap-key.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholesp2a-keypad.kl:/system/usr/keylayout/sholesp2a-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholesp1b-keypad.kl:/system/usr/keylayout/sholesp1b-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/qtouch-touchscreen.kl:/system/usr/keylayout/qtouch-touchscreen.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/qwerty.kl:/system/usr/keylayout/qwerty.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholes-keypad.kl:/system/usr/keylayout/sholes-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholestabletp1cu-keypad.kl:/system/usr/keylayout/sholestabletp1cu-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholestabletp1skt-keypad.kl:/system/usr/keylayout/sholestabletp1skt-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholestabletp2cu-keypad.kl:/system/usr/keylayout/sholestabletp2cu-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholestabletp2skt-keypad.kl:/system/usr/keylayout/sholestabletp2skt-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholestabletp3cu-keypad.kl:/system/usr/keylayout/sholestabletp3cu-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keylayout/sholestabletp3skt-keypad.kl:/system/usr/keylayout/sholestabletp3skt-keypad.kl \
    vendor/motorola/sholest/proprietary/usr/keychars/sholesp0b-keypad.kcm.bin:/system/usr/keychars/sholesp0b-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholesp1b-keypad.kcm.bin:/system/usr/keychars/sholesp1b-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholesp1a-keypad.kcm.bin:/system/usr/keychars/sholesp1a-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/icestorms0a-keypad.kcm.bin:/system/usr/keychars/icestorms0a-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/qtouch-touchscreen.kl:/system/usr/keychars/qtouch-touchscreen.kl \
    vendor/motorola/sholest/proprietary/usr/keychars/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholes-keypad.kcm.bin:/system/usr/keychars/sholes-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholesp2a-keypad.kcm.bin:/system/usr/keychars/sholesp2a-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholestabletp1cu-keypad.kcm.bin:/system/usr/keychars/sholestabletp1cu-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholestabletp1skt-keypad.kcm.bin:/system/usr/keychars/sholestabletp1skt-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholestabletp2cu-keypad.kcm.bin:/system/usr/keychars/sholestabletp2cu-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholestabletp2skt-keypad.kcm.bin:/system/usr/keychars/sholestabletp2skt-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholestabletp3cu-keypad.kcm.bin:/system/usr/keychars/sholestabletp3cu-keypad.kcm.bin \
    vendor/motorola/sholest/proprietary/usr/keychars/sholestabletp3skt-keypad.kcm.bin:/system/usr/keychars/sholestabletp3skt-keypad.kcm.bin

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/lib/hw/sensors.sholes.so:/system/lib/hw/sensors.sholes.so \
    vendor/motorola/sholest/proprietary/lib/hw/lights.sholes.so:/system/lib/hw/lights.sholes.so \
    vendor/motorola/sholest/proprietary/lib/hw/overlay.omap3.so:/system/lib/hw/overlay.omap3.so \
    vendor/motorola/sholest/proprietary/lib/hw/gralloc.omap3.so:/system/lib/hw/gralloc.omap3.so

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/lib/egl/libGLESv2_POWERVR_SGX530_121.so:/system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
    vendor/motorola/sholest/proprietary/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so:/system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
    vendor/motorola/sholest/proprietary/lib/egl/libEGL_POWERVR_SGX530_121.so:/system/lib/egl/libEGL_POWERVR_SGX530_121.so \
    vendor/motorola/sholest/proprietary/lib/libpvrANDROID_WSEGL.so:/system/lib/libpvrANDROID_WSEGL.so

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/lib/libIMGegl.so:/system/lib/libIMGegl.so \
    vendor/motorola/sholest/proprietary/lib/libsrv_um.so:/system/lib/libsrv_um.so \
    vendor/motorola/sholest/proprietary/lib/libssmgr.so:/system/lib/libssmgr.so \
    vendor/motorola/sholest/proprietary/lib/libsktdrm.so:/system/lib/libsktdrm.so \
    vendor/motorola/sholest/proprietary/lib/libtpa.so:/system/lib/libtpa.so \
    vendor/motorola/sholest/proprietary/lib/libpppd_plugin.so:/system/lib/libpppd_plugin.so \
    vendor/motorola/sholest/proprietary/lib/libpvr2d.so:/system/lib/libpvr2d.so \
    vendor/motorola/sholest/proprietary/lib/libcamera.so:/system/lib/libcamera.so \
    vendor/motorola/sholest/proprietary/lib/libaudio.so:/system/lib/libaudio.so \
    vendor/motorola/sholest/proprietary/lib/libaudiopolicy.so:/system/lib/libaudiopolicy.so \
    vendor/motorola/sholest/proprietary/lib/libgki.so:/system/lib/libgki.so \
    vendor/motorola/sholest/proprietary/lib/libbattd.so:/system/lib/libbattd.so \
    vendor/motorola/sholest/proprietary/lib/libsecclkdlib.so:/system/lib/libsecclkdlib.so \
    vendor/motorola/sholest/proprietary/lib/libglslcompiler.so:/system/lib/libglslcompiler.so \
    vendor/motorola/sholest/proprietary/lib/libmsl_interface.so:/system/lib/libmsl_interface.so \
    vendor/motorola/sholest/proprietary/lib/libmotodbgutils.so:/system/lib/libmotodbgutils.so \
    vendor/motorola/sholest/proprietary/lib/libgps.so:/system/lib/libgps.so \
    vendor/motorola/sholest/proprietary/lib/libmotdb.so:/system/lib/libmotdb.so \
    vendor/motorola/sholest/proprietary/lib/libHPImgApi.so:/system/lib/libHPImgApi.so \
    vendor/motorola/sholest/proprietary/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    vendor/motorola/sholest/proprietary/lib/libtpa_core.so:/system/lib/libtpa_core.so \
    vendor/motorola/sholest/proprietary/lib/libril-moto-umts-1.so:/system/lib/libril-moto-umts-1.so \
    vendor/motorola/sholest/proprietary/lib/libpvasfcommon.so:/system/lib/libpvasfcommon.so \
    vendor/motorola/sholest/proprietary/lib/libpvasflocalpb.so:/system/lib/libpvasflocalpb.so \
    vendor/motorola/sholest/proprietary/lib/libpvasflocalpbreg.so:/system/lib/libpvasflocalpbreg.so \
    vendor/motorola/sholest/proprietary/lib/libopencore_motlocal.so:/system/lib/libopencore_motlocal.so \
    vendor/motorola/sholest/proprietary/lib/libopencore_motlocalreg.so:/system/lib/libopencore_motlocalreg.so \
    vendor/motorola/sholest/proprietary/lib/libopencore_motsktdrm.so:/system/lib/libopencore_motsktdrm.so \
    vendor/motorola/sholest/proprietary/lib/libomx_wmadec_sharedlibrary.so:/system/lib/libomx_wmadec_sharedlibrary.so \
    vendor/motorola/sholest/proprietary/lib/libomx_wmvdec_sharedlibrary.so:/system/lib/libomx_wmvdec_sharedlibrary.so \
    vendor/motorola/sholest/proprietary/lib/libhostapd_client.so:/system/lib/libhostapd_client.so \
    vendor/motorola/sholest/proprietary/lib/libMynetNativeJni.so:/system/lib/libMynetNativeJni.so \
    vendor/motorola/sholest/proprietary/lib/libWifiAPHardware.so:/system/lib/libWifiAPHardware.so \
    vendor/motorola/sholest/proprietary/lib/libWifiAPNativeJni.so:/system/lib/libWifiAPNativeJni.so

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/lib/modules/netmux.ko:/system/lib/modules/netmux.ko \
    vendor/motorola/sholest/proprietary/lib/modules/output.ko:/system/lib/modules/output.ko \
    vendor/motorola/sholest/proprietary/lib/modules/pcbc.ko:/system/lib/modules/pcbc.ko \
    vendor/motorola/sholest/proprietary/lib/modules/wl127x-test.ko:/system/lib/modules/wl127x-test.ko \
    vendor/motorola/sholest/proprietary/lib/modules/sec.ko:/system/lib/modules/sec.ko \
    vendor/motorola/sholest/proprietary/lib/modules/modem_pm_driver.ko:/system/lib/modules/modem_pm_driver.ko \
    vendor/motorola/sholest/proprietary/lib/modules/tiwlan_drv.ko:/system/lib/modules/tiwlan_drv.ko \
    vendor/motorola/sholest/proprietary/lib/modules/tiap_drv.ko:/system/lib/modules/tiap_drv.ko \
    vendor/motorola/sholest/proprietary/lib/modules/hid-dummy.ko:/system/lib/modules/hid-dummy.ko \
    vendor/motorola/sholest/proprietary/lib/modules/netmux_linkdriver.ko:/system/lib/modules/netmux_linkdriver.ko

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/lib/dsp/wmadec_sn.dll64P:/system/lib/dsp/wmadec_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/wmv9dec_sn.dll64P:/system/lib/dsp/wmv9dec_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/nbamrenc_sn.dll64P:/system/lib/dsp/nbamrenc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/wbamrenc_sn.dll64P:/system/lib/dsp/wbamrenc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/usn.dll64P:/system/lib/dsp/usn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/ringio.dll64P:/system/lib/dsp/ringio.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/postprocessor_dualout.dll64P:/system/lib/dsp/postprocessor_dualout.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/mpeg4ingenc_sn.dll64P:/system/lib/dsp/mpeg4ingenc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/mpeg4ingdec_sn.dll64P:/system/lib/dsp/mpeg4ingdec_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/mpeg4aacenc_sn.dll64P:/system/lib/dsp/mpeg4aacenc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/mp4vdec_sn.dll64P:/system/lib/dsp/mp4vdec_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/m4venc_sn.dll64P:/system/lib/dsp/m4venc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/jpegenc_sn.dll64P:/system/lib/dsp/jpegenc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/h264venc_sn.dll64P:/system/lib/dsp/h264venc_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/h264vdec_sn.dll64P:/system/lib/dsp/h264vdec_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/h264ingdec_sn.dll64P:/system/lib/dsp/h264ingdec_sn.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/conversions.dll64P:/system/lib/dsp/conversions.dll64P \
    vendor/motorola/sholest/proprietary/lib/dsp/baseimage.dof:/system/lib/dsp/baseimage.dof

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/tts/lang_pico/en-US_lh0_sg.bin:/system/tts/lang_pico/en-US_lh0_sg.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/fr-FR_nk0_sg.bin:/system/tts/lang_pico/fr-FR_nk0_sg.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/de-DE_gl0_sg.bin:/system/tts/lang_pico/de-DE_gl0_sg.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/de-DE_ta.bin:/system/tts/lang_pico/de-DE_ta.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/en-GB_ta.bin:/system/tts/lang_pico/en-GB_ta.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/es-ES_ta.bin:/system/tts/lang_pico/es-ES_ta.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/en-GB_kh0_sg.bin:/system/tts/lang_pico/en-GB_kh0_sg.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/it-IT_cm0_sg.bin:/system/tts/lang_pico/it-IT_cm0_sg.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/es-ES_zl0_sg.bin:/system/tts/lang_pico/es-ES_zl0_sg.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/fr-FR_ta.bin:/system/tts/lang_pico/fr-FR_ta.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/en-US_ta.bin:/system/tts/lang_pico/en-US_ta.bin \
    vendor/motorola/sholest/proprietary/tts/lang_pico/it-IT_ta.bin:/system/tts/lang_pico/it-IT_ta.bin

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/app/PhoneConfig.apk:/system/app/PhoneConfig.apk \
    vendor/motorola/sholest/proprietary/app/ProgramMenu.apk:/system/app/ProgramMenu.apk \
    vendor/motorola/sholest/proprietary/app/ProgramMenuSystem.apk:/system/app/ProgramMenuSystem.apk \
    vendor/motorola/sholest/proprietary/app/PersonalPortal.apk:/system/app/PersonalPortal.apk \
    vendor/motorola/sholest/proprietary/app/QuickOffice.apk:/system/app/QuickOffice.apk \
    vendor/motorola/sholest/proprietary/app/Mynet.apk:/system/app/Mynet.apk

PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/app/FMRadio.apk:/system/app/FMRadio.apk \
    vendor/motorola/sholest/proprietary/bin/fmradioserver:/system/bin/fmradioserver \
    vendor/motorola/sholest/proprietary/etc/fm_rx_init_1273.2.bts:/system/etc/fm_rx_init_1273.2.bts \
    vendor/motorola/sholest/proprietary/etc/fmc_init_1273.2.bts:/system/etc/fmc_init_1273.2.bts \
    vendor/motorola/sholest/proprietary/lib/libfmradio.so:/system/lib/libfmradio.so \
    vendor/motorola/sholest/proprietary/lib/libfmradio_jni.so:/system/lib/libfmradio_jni.so \
    vendor/motorola/sholest/proprietary/lib/libfmradiostackservice.so:/system/lib/libfmradiostackservice.so

ifeq ($(SHOLEST_KOREAN_IME),true)
PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/app/KoreanIME.apk:/system/app/KoreanIME.apk \
    vendor/motorola/sholest/proprietary/lib/libjni_koreanime.so:/system/lib/libjni_koreanime.so
endif

ifneq ($(SHOLEST_BUILD_OMX),true)
PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/lib/libOMX.TI.AMR.encode.so:/system/lib/libOMX.TI.AMR.encode.so \
    vendor/motorola/sholest/proprietary/lib/libOMX.TI.WBAMR.encode.so:/system/lib/libOMX.TI.WBAMR.encode.so \
    vendor/motorola/sholest/proprietary/lib/libOMX.TI.AAC.encode.so:/system/lib/libOMX.TI.AAC.encode.so \
    vendor/motorola/sholest/proprietary/lib/libOMX.TI.JPEG.Encoder.so:/system/lib/libOMX.TI.JPEG.Encoder.so \
    vendor/motorola/sholest/proprietary/lib/libOMX.TI.Video.Decoder.so:/system/lib/libOMX.TI.Video.Decoder.so \
    vendor/motorola/sholest/proprietary/lib/libOMX.TI.Video.encoder.so:/system/lib/libOMX.TI.Video.encoder.so \
    vendor/motorola/sholest/proprietary/lib/libOMX_Core.so:/system/lib/libOMX_Core.so \
    vendor/motorola/sholest/proprietary/lib/libLCML.so:/system/lib/libLCML.so \
    vendor/motorola/sholest/proprietary/lib/libVendor_ti_omx.so:/system/lib/libVendor_ti_omx.so \
    vendor/motorola/sholest/proprietary/lib/libVendor_ti_omx_config_parser.so:/system/lib/libVendor_ti_omx_config_parser.so
endif

ifneq ($(SHOLEST_BUILD_USB_APK),true)
PRODUCT_COPY_FILES += \
    vendor/motorola/sholest/proprietary/app/Usb.apk:/system/app/Usb.apk
endif
