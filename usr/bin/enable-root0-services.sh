#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root"
    exit 1
fi

echo "Enabling Root0 system hardening services..."

# Network security services
systemctl enable root0-network-ipv4-icmp.service
systemctl enable root0-network-ipv4-syn-cookies.service
systemctl enable root0-network-ipv4-martians.service
systemctl enable root0-network-ipv4-rp-filter.service
systemctl enable root0-network-ipv4-accept-redirects.service
systemctl enable root0-network-ipv4-tcp-timestamps.service
systemctl enable root0-network-ipv4-tor-routes.service
systemctl enable root0-network-ipv6-disable.service
systemctl enable root0-network-ipv4-ignore-broadcasts.service
systemctl enable root0-network-ipv4-ignore-bogus.service
systemctl enable root0-network-ipv4-syn-backlog.service
systemctl enable root0-network-ipv4-synack-retries.service
systemctl enable root0-network-ipv4-tw-buckets.service
systemctl enable root0-network-ipv4-tcp-sack.service

# Kernel security services
systemctl enable root0-kernel-dmesg.service
systemctl enable root0-kernel-kptr.service
systemctl enable root0-kernel-yama-ptrace.service
systemctl enable root0-kernel-sysrq.service
systemctl enable root0-kernel-core-pid.service
systemctl enable root0-kernel-panic.service
systemctl enable root0-kernel-perf.service
systemctl enable root0-kernel-userns.service

# Filesystem security services
systemctl enable root0-fs-protected-hardlinks.service
systemctl enable root0-fs-protected-symlinks.service
systemctl enable root0-fs-suid-dump.service

# TTY settings
systemctl enable root0-tty-ldisc.service

# Memory security services
systemctl enable root0-memory-unprivileged-bpf.service
systemctl enable root0-memory-aslr.service
systemctl enable root0-memory-mmap-min.service
systemctl enable root0-memory-swappiness.service
systemctl enable root0-memory-dirty-ratio.service
systemctl enable root0-memory-oom.service

echo "Starting Root0 system hardening services..."

# Network security services
systemctl start root0-network-ipv4-icmp.service
systemctl start root0-network-ipv4-syn-cookies.service
systemctl start root0-network-ipv4-martians.service
systemctl start root0-network-ipv4-rp-filter.service
systemctl start root0-network-ipv4-accept-redirects.service
systemctl start root0-network-ipv4-tcp-timestamps.service
systemctl start root0-network-ipv4-tor-routes.service
systemctl start root0-network-ipv6-disable.service
systemctl start root0-network-ipv4-ignore-broadcasts.service
systemctl start root0-network-ipv4-ignore-bogus.service
systemctl start root0-network-ipv4-syn-backlog.service
systemctl start root0-network-ipv4-synack-retries.service
systemctl start root0-network-ipv4-tw-buckets.service
systemctl start root0-network-ipv4-tcp-sack.service

# Kernel security services
systemctl start root0-kernel-dmesg.service
systemctl start root0-kernel-kptr.service
systemctl start root0-kernel-yama-ptrace.service
systemctl start root0-kernel-sysrq.service
systemctl start root0-kernel-core-pid.service
systemctl start root0-kernel-panic.service
systemctl start root0-kernel-perf.service
systemctl start root0-kernel-userns.service

# Filesystem security services
systemctl start root0-fs-protected-hardlinks.service
systemctl start root0-fs-protected-symlinks.service
systemctl start root0-fs-suid-dump.service

# TTY settings
systemctl start root0-tty-ldisc.service

# Memory security services
systemctl start root0-memory-unprivileged-bpf.service
systemctl start root0-memory-aslr.service
systemctl start root0-memory-mmap-min.service
systemctl start root0-memory-swappiness.service
systemctl start root0-memory-dirty-ratio.service
systemctl start root0-memory-oom.service

echo "All Root0 services have been enabled and started successfully!"
echo "System hardening is now active." 