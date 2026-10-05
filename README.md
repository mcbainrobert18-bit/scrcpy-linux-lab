# scrcpy linux lab

Own Android. On the desk. No root. No store app.

Mirror, control, record over USB or Wi-Fi. Written for Kali, Parrot, Debian, Arch, and Fedora. Authorized devices only.

Official line: [scrcpy](https://github.com/Genymobile/scrcpy) by Genymobile. This repo is the lab path and the operator notes. It is not a fork of scrcpy.

Authorized educational / lab use only. If this computer is not authorized on the phone, stop.

## Install in two minutes

Debian, Ubuntu, Kali, Parrot, Mint:

```bash
sudo apt update
sudo apt install scrcpy adb
scrcpy --version
```

Arch:

```bash
sudo pacman -S scrcpy
```

Fedora:

```bash
sudo dnf copr enable zeno/scrcpy
sudo dnf install scrcpy
```

Distro packages mirror tonight. They lag the current release. For scrcpy 4.1 or newer, take the linux-x86_64 tarball from the Genymobile releases page only, check the SHA-256, and keep `scrcpy-server` next to the binary.

```bash
cd ~/lab
tar xf scrcpy-linux-x86_64-v4.1.tar.gz
cd scrcpy-linux-x86_64-v4.1
./scrcpy --version
```

## Phone, before the distro

1. Settings, About phone. Tap Build number seven times.
2. Developer options. USB debugging ON.
3. Data cable. A charge-only cable never shows up as a talking device.
4. Plug in. Unlock. Accept the RSA fingerprint. Tick Always allow.
5. No prompt: revoke USB debugging authorizations, unplug, plug again.

Leave wireless debugging off until USB works.

## First mirror

```bash
adb devices
scrcpy
```

`adb devices` must say `device`, not `unauthorized` and not empty. Then:

```bash
scrcpy --max-size 1280 --stay-awake
scrcpy --record ~/lab/mirror.mp4
```

Camera mirror needs Android 12+. Audio needs Android 11+.

## Not in this repo

No lock-screen bypass. No unauthorized phones. No spyware. No leftover app. scrcpy pushes a temporary server and removes it when the window closes.

## Paid lab, if the mirror is not the job

This file gets the phone on the desk. The Realm manuals are the rest of the cage: Nmap inventory, Burp proxy, MSF console fluency on a host-only VM, Airgeddon on a radio you own.

Launch price on the first 20: $27 each, or the four-manual bundle at $67.

https://darkreconraptor.com/lab

Full operator manual for this install: `docs/SCRCPY_LINUX_Operator_Manual_v1.pdf` once the release asset is attached. Until then the steps above are the whole free path.

## Topics

`scrcpy` `android` `adb` `kali-linux` `parrot-os` `authorized-pentest`
