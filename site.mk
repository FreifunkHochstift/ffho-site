GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-respondd \
	ffho-ap-timer \
	gluon-autoupdater \
	ffho-autoupdater-wifi-fallback \
	ffho-banner \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	ffho-config-mode-site-select \
	ffho-debug \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-source-filter \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	gluon-web-admin \
	ffho-web-ap-timer \
	ffho-web-autoupdater \
	gluon-web-logging \
	gluon-web-network \
	gluon-web-wifi-config \
	iwinfo \
	haveged

USB_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb-hid

USB_NIC := \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-rtl8150 \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-dm9601-ether

WLAN := \
	kmod-ath9k \
	kmod-ath10k-ct \
	ath10k-firmware-qca988x-ct

ifeq ($(GLUON_TARGET),x86-generic)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		kmod-usb-ohci-pci \
		$(USB_NIC) \
		$(WLAN)
endif

ifeq ($(GLUON_TARGET),x86-64)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		$(USB_NIC) \
		$(WLAN)
endif

# 0.2~1 < 0.2 < 0.2+1 < 0.2-1 < 0.2.1 < 0.3
DEFAULT_GLUON_RELEASE := 1.1.0~exp$(shell date '+%Y%m%d')
DEFAULT_GLUON_PRIORITY := 0

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= $(DEFAULT_GLUON_PRIORITY)
GLUON_REGION ?= eu
GLUON_LANGS ?= en de
GLUON_ATH10K_MESH ?= 11s
