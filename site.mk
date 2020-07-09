GLUON_FEATURES := \
        autoupdater \
        ebtables-filter-multicast \
        ebtables-filter-ra-dhcp \
        ebtables-limit-arp \
	config-mode-geo-location-osm \
	config-mode-domain-select \
        mesh-batman-adv-15 \
        mesh-vpn-fastd \
        respondd \
        status-page \
        web-advanced \
        web-wizard

GLUON_SITE_PACKAGES := \
	-gluon-web-autoupdater \
	ffho-ap-timer \
	ffho-autoupdater-wifi-fallback \
	ffho-banner \
	ffho-web-ap-timer \
	ffho-web-autoupdater \
	ffho-domain-migration \
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

WLAN := kmod-ath9k

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
DEFAULT_GLUON_RELEASE := 1.4.1~exp$(shell date '+%Y%m%d')
DEFAULT_GLUON_PRIORITY := 0

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= $(DEFAULT_GLUON_PRIORITY)
GLUON_REGION ?= eu
GLUON_LANGS ?= en de
GLUON_ATH10K_MESH ?= 11s
GLUON_DEPRECATED ?= full
GLUON_MULTIDOMAIN=1
