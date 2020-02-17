#!/usr/bin/python
# -*- coding: utf-8 -*-

import os,sys

if not 'GLUON_SITEDIR' in os.environ:
    print "GLUON_SITEDIR not set"
    sys.exit(1)

execfile(os.environ['GLUON_SITEDIR'] + "/extra/sites.conf")
execfile(os.environ['GLUON_SITEDIR'] + "/extra/groups.conf")
DOMAINS=os.environ['GLUON_SITEDIR'] + "/domains/"
TEMPLATE = ""
with open(os.environ['GLUON_SITEDIR'] + "/extra/template.conf") as f:
    TEMPLATE = f.readlines()

if not os.path.isdir(os.environ['GLUON_SITEDIR'] + "/domains"):
    try:
        os.mkdir(os.environ['GLUON_SITEDIR'] + "/domains")
    except OSError:
        print ("Creation of the directory %s failed" % os.environ['GLUON_SITEDIR'] + "/domains")

# generate domain specific site confs
for s in sites:
    with open(DOMAINS + s['site_code'] + ".conf", "w") as f:
        for line in TEMPLATE:
            # Substitute values
            line = line.replace('%SN', s['site_name'])
            line = line.replace('%SC', s['site_code'])
            line = line.replace('%SS', s['ssid'])
            line = line.replace('%DS', groups[s['group']]['%%DS'])
            line = line.replace('%V4', groups[s['group']]['%%V4'])
            line = line.replace('%V6', groups[s['group']]['%%V6'])
            line = line.replace('%N4', groups[s['group']]['%%N4'])
            line = line.replace('%ID', groups[s['group']]['%%ID'])
            line = line.replace('%GN', s['group'])
            if 'hide' in s:
                line = line.replace('%HIDE', s['hide'])
            else:
                line = line.replace('%HIDE', 'false')
            f.write(line)
