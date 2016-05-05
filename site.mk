GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-respondd \
	ffho-autoupdater \
	ffho-autoupdater-wifi-fallback \
	ffho-autoupdater-wifi-fallback-legacy \
	ffho-banner \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	ffho-config-mode-geo-location \
	gluon-config-mode-hostname \
	ffho-config-mode-mesh-vpn \
	ffho-config-mode-site-select \
	ffho-debug \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	ffho-ebtables-net-rules \
	gluon-luci-admin \
	ffho-luci-autoupdater-wifi-fallback \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-mesh-vpn-fastd \
	gluon-next-node \
	ffho-node-tuning \
	gluon-radvd \
	ffho-respondd-config \
	gluon-setup-mode \
	ffho-site-auto-select \
	ffho-status-page \
	ffho-txpower-fix \
	ffho-wifi-blackout-workaround \
	iwinfo \
	iptables \
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

ifeq ($(GLUON_TARGET),x86-generic)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		kmod-usb-ohci-pci \
		$(USB_NIC)
endif

ifeq ($(GLUON_TARGET),x86-64)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		$(USB_NIC) \
		kmod-igb #APU2
endif

# 0.2~1 < 0.2 < 0.2+1 < 0.2-1 < 0.2.1 < 0.3
DEFAULT_GLUON_RELEASE := 0.7.2~exp$(shell date '+%Y%m%d')
DEFAULT_GLUON_PRIORITY := 0

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= $(DEFAULT_GLUON_PRIORITY)
GLUON_LANGS ?= en de
