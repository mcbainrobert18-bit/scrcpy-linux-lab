#!/usr/bin/env bash
# Own-device Android mirror. Authorized lab only.
# Refuses to run unless LAB_AUTHORIZED=1.
set -euo pipefail

if [[ "${LAB_AUTHORIZED:-}" != "1" ]]; then
  echo "Refused. Export LAB_AUTHORIZED=1 only for a phone you own or have written permission to mirror."
  echo "Full lab: https://darkreconraptor.com/lab"
  exit 2
fi

if ! command -v adb >/dev/null 2>&1 || ! command -v scrcpy >/dev/null 2>&1; then
  echo "adb or scrcpy missing."
  echo "Debian/Kali/Parrot: sudo apt install scrcpy adb"
  exit 1
fi

echo "scrcpy $(scrcpy --version 2>&1 | head -n 1)"
echo "Waiting for an authorized device..."
adb devices -l

exec scrcpy --max-size "${SCRCPY_MAX_SIZE:-1280}" --stay-awake "$@"
