#!/bin/bash

cat >~/.justfile<<EOF
# List available recipes
default:
  @just --list --unsorted

# Enable passive mode in AMD P-State CPU Performance Scaling Driver
amd-p-state-enable:
  sudo grubby --update-kernel=ALL --args=amd_pstate=passive
  @echo Reboot the system to apply the changes.

# Disable passive mode in AMD P-State CPU Performance Scaling Driver
amd-p-state-disable:
  sudo grubby --update-kernel=ALL --remove-args=amd_pstate=passive
  @echo Reboot the system to apply the changes.

# Show CPU cores frequencies
amd-p-state-test:
  @watch -n1 "grep \"^[c]pu MHz\" /proc/cpuinfo"

#Enable Gnome Wayland fractional scaling
wayland-fractional-scaling:
  gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
  @echo A restart might be required in order to see the new options.
EOF