#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root"
    exit 1
fi

echo "Stopping Root0 system hardening services..."

# Stop all Root0 services
systemctl stop root0-network-ipv4-icmp.service
systemctl stop root0-network-ipv4-syn-cookies.service
systemctl stop root0-network-ipv4-martians.service
systemctl stop root0-network-ipv4-rp-filter.service
systemctl stop root0-network-ipv4-accept-redirects.service
systemctl stop root0-network-ipv4-tcp-timestamps.service
systemctl stop root0-network-ipv4-tor-routes.service
systemctl stop root0-network-ipv6-disable.service
systemctl stop root0-network-ipv4-ignore-broadcasts.service
systemctl stop root0-network-ipv4-ignore-bogus.service
systemctl stop root0-network-ipv4-syn-backlog.service
systemctl stop root0-network-ipv4-synack-retries.service
systemctl stop root0-network-ipv4-tw-buckets.service
systemctl stop root0-network-ipv4-tcp-sack.service

systemctl stop root0-kernel-dmesg.service
systemctl stop root0-kernel-kptr.service
systemctl stop root0-kernel-yama-ptrace.service
systemctl stop root0-kernel-sysrq.service
systemctl stop root0-kernel-core-pid.service
systemctl stop root0-kernel-panic.service
systemctl stop root0-kernel-perf.service
systemctl stop root0-kernel-userns.service

systemctl stop root0-fs-protected-hardlinks.service
systemctl stop root0-fs-protected-symlinks.service
systemctl stop root0-fs-suid-dump.service

systemctl stop root0-tty-ldisc.service

systemctl stop root0-memory-unprivileged-bpf.service
systemctl stop root0-memory-aslr.service
systemctl stop root0-memory-mmap-min.service
systemctl stop root0-memory-swappiness.service
systemctl stop root0-memory-dirty-ratio.service
systemctl stop root0-memory-oom.service

echo "Disabling Root0 system hardening services..."

# Disable all Root0 services
systemctl disable root0-network-ipv4-icmp.service
systemctl disable root0-network-ipv4-syn-cookies.service
systemctl disable root0-network-ipv4-martians.service
systemctl disable root0-network-ipv4-rp-filter.service
systemctl disable root0-network-ipv4-accept-redirects.service
systemctl disable root0-network-ipv4-tcp-timestamps.service
systemctl disable root0-network-ipv4-tor-routes.service
systemctl disable root0-network-ipv6-disable.service
systemctl disable root0-network-ipv4-ignore-broadcasts.service
systemctl disable root0-network-ipv4-ignore-bogus.service
systemctl disable root0-network-ipv4-syn-backlog.service
systemctl disable root0-network-ipv4-synack-retries.service
systemctl disable root0-network-ipv4-tw-buckets.service
systemctl disable root0-network-ipv4-tcp-sack.service

systemctl disable root0-kernel-dmesg.service
systemctl disable root0-kernel-kptr.service
systemctl disable root0-kernel-yama-ptrace.service
systemctl disable root0-kernel-sysrq.service
systemctl disable root0-kernel-core-pid.service
systemctl disable root0-kernel-panic.service
systemctl disable root0-kernel-perf.service
systemctl disable root0-kernel-userns.service

systemctl disable root0-fs-protected-hardlinks.service
systemctl disable root0-fs-protected-symlinks.service
systemctl disable root0-fs-suid-dump.service

systemctl disable root0-tty-ldisc.service

systemctl disable root0-memory-unprivileged-bpf.service
systemctl disable root0-memory-aslr.service
systemctl disable root0-memory-mmap-min.service
systemctl disable root0-memory-swappiness.service
systemctl disable root0-memory-dirty-ratio.service
systemctl disable root0-memory-oom.service

# Reset sysctl parameters to default values
echo "Resetting sysctl parameters to default values..."
sysctl -p /etc/sysctl.conf

echo "All Root0 services have been stopped and disabled!"
echo "System hardening has been deactivated."
echo "Changes will take full effect after a system reboot." 