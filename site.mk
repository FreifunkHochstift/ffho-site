GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	ffpb-banner \
	ffpb-debug \
	ffpb-node-tuning \
	ffpb-ebtables-net-rules \
	ffpb-openwrt-migration-tools \
	ffpb-alfred-config \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
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
	gluon-status-page \
	iwinfo \
	iptables \
	haveged


# 0.2~1 < 0.2 < 0.2+1 < 0.2-1 < 0.2.1 < 0.3
DEFAULT_GLUON_RELEASE := 0.6.5~exp$(shell date '+%Y%m%d')
DEFAULT_GLUON_PRIORITY := 0

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= $(DEFAULT_GLUON_PRIORITY)
GLUON_LANGS ?= en de
