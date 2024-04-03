#!/bin/bash

# Compiling AdGuard DNS filter
hostlist-compiler -c configuration.json -o Filters/filter.txt --verbose

# Compiling AdGuard DNS Popup Hosts filter
hostlist-compiler -c configuration_popup_filter.json -o Filters/adguard_popup_filter.txt --verbose
node popup_filter_build.js Filters/adguard_popup_filter.txt