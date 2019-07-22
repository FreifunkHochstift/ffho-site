GLUON_FEATURES := \
        autoupdater \
        ebtables-filter-multicast \
        ebtables-filter-ra-dhcp \
        ebtables-limit-arp \
	config-mode-geo-location-osm \
        mesh-batman-adv-15 \
        mesh-vpn-fastd \
        radvd \
        respondd \
        status-page \
        web-advanced \
        web-wizard

GLUON_SITE_PACKAGES := \
	-gluon-web-autoupdater \
	ffho-ap-timer \
	ffho-autoupdater-wifi-fallback \
	ffho-banner \
	ffho-config-mode-site-select \
	ffho-web-ap-timer \
	ffho-web-autoupdater \
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
DEFAULT_GLUON_RELEASE := 1.2.2~exp$(shell date '+%Y%m%d')
DEFAULT_GLUON_PRIORITY := 0

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= $(DEFAULT_GLUON_PRIORITY)
GLUON_REGION ?= eu
GLUON_LANGS ?= en de
GLUON_ATH10K_MESH ?= 11s
