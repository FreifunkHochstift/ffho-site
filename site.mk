GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	ffho-banner \
	ffho-debug \
	ffho-node-tuning \
	ffho-ebtables-net-rules \
	ffho-alfred-config \
	ffho-txpower-fix \
	ffho-site-auto-select \
	gluon-alfred \
	gluon-respondd \
	ffho-autoupdater \
	ffho-autoupdater-wifi-fallback \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-contact-info \
	ffho-config-mode-mesh-vpn \
	ffho-config-mode-geo-location \
	ffho-config-mode-site-select \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	ffho-status-page \
	iwinfo \
	iptables \
	haveged


# 0.2~1 < 0.2 < 0.2+1 < 0.2-1 < 0.2.1 < 0.3
DEFAULT_GLUON_RELEASE := 0.7.0~exp$(shell date '+%Y%m%d')
DEFAULT_GLUON_PRIORITY := 0

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= $(DEFAULT_GLUON_PRIORITY)
GLUON_LANGS ?= en de
