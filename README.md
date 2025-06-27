# Root0 - Securonis Linux System Hardening Module

This module provides system hardening through various systemd services that apply kernel parameters via sysctl.
Each service is responsible for a single sysctl parameter to maintain modularity and ease of management.

## Service List
Each service applies a specific kernel parameter:
- root0-network-ipv4-icmp.service: Controls ICMP echo requests
- root0-network-ipv4-syn-cookies.service: Enables TCP SYN cookies
- root0-network-ipv4-ignore-broadcasts.service: Ignores ICMP broadcasts
- root0-network-ipv4-ignore-bogus.service: Ignores bogus ICMP responses
- root0-network-ipv4-syn-backlog.service: Sets TCP SYN backlog size
- root0-network-ipv4-synack-retries.service: Sets TCP SYNACK retries
- root0-network-ipv4-tw-buckets.service: Sets TCP TIME_WAIT buckets
- root0-network-ipv4-tcp-sack.service: Disables TCP SACK and DSACK
- root0-kernel-dmesg.service: Restricts dmesg access
- root0-kernel-kptr.service: Hides kernel pointer addresses
- root0-fs-protected-hardlinks.service: Enables protected hardlinks
- root0-fs-protected-symlinks.service: Enables protected symlinks
- root0-network-ipv4-martians.service: Enables logging of martian packets
- root0-memory-unprivileged-bpf.service: Restricts unprivileged BPF
- root0-network-ipv4-rp-filter.service: Enables reverse path filtering
- root0-network-ipv4-accept-redirects.service: Disables ICMP redirects
- root0-kernel-yama-ptrace.service: Restricts ptrace access
- root0-kernel-sysrq.service: Restricts SysRq functionality
- root0-network-ipv4-tcp-timestamps.service: Disables TCP timestamps
- root0-network-ipv4-tor-routes.service: Prevents IP leaks for Tor routing
- root0-network-ipv6-disable.service: Disables IPv6 to prevent leaks
- root0-kernel-core-pid.service: Enables core dumps with PID
- root0-kernel-panic.service: Configures kernel panic behavior
- root0-fs-suid-dump.service: Disables SUID core dumps
- root0-tty-ldisc.service: Configures TTY line discipline autoload
- root0-kernel-perf.service: Restricts performance events access
- root0-kernel-userns.service: Disables unprivileged user namespaces
- root0-memory-aslr.service: Enables address space layout randomization
- root0-memory-mmap-min.service: Sets minimum memory mapping address
- root0-memory-swappiness.service: Configures swap usage
- root0-memory-dirty-ratio.service: Configures memory dirty ratios
- root0-memory-oom.service: Configures OOM killer behavior

## Note
These services are designed to provide security while maintaining system stability and compatibility. 