#!/bin/bash
set -e

export container=docker

if [ -d /sys/kernel/security ] && ! mountpoint -q /sys/kernel/security; then
	mount -t securityfs none /sys/kernel/security || {
		echo >&2 'Could not mount /sys/kernel/security.'
		echo >&2 'AppArmor detection and --privileged mode might break.'
	}
fi

if ! grep -q :devices: /proc/1/cgroup; then
	echo >&2 'WARNING: the "devices" cgroup should be in its own hierarchy.'
fi
if ! grep -qw devices /proc/1/cgroup; then
	echo >&2 'WARNING: it looks like the "devices" cgroup is not mounted.'
fi

# Mount /tmp (conditionally)
if ! mountpoint -q /tmp; then
	mount -t tmpfs none /tmp
fi

exec docker daemon -H 0.0.0.0:2375 -H unix:///var/run/docker.sock