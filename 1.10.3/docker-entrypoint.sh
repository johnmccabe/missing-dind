#!/bin/bash
set -e

exec docker daemon -H 0.0.0.0:2375 -H unix:///var/run/docker.sock