---
title: Bootable USB image available
date: 2018-06-16
author: xet7
translator:
summary: Bootable USB image available
---

xet7 released today bootable USB image version of TSC. It has [Debian 9][1] 64bit Linux
with LXDE desktop and TSC alpha version installed from git repo devel branch as of today 
2018-06-16. Linux boots directly from USB stick, so it works fast and is
very playable.

## ChangeLog

- v0.02 2018-06-17 Added wlan drivers, and some graphics/audio/password etc software
- v0.01 2018-06-16 First release

## 1) Requirements

You most likely need bigger that 8 GB USB stick, because usb image if from
8 GB USB stick. This is because some 8 GB USB sticks are a little smaller,
and some are bigger. You can try does this fit on 8 GB USB stick.

## 2) Download USB image file

[tsc-usb-2018-06-17.img.gz][2] - 2.4 GB

SHA256SUM:<br />
dd6b64ac6b5f31c8f2783d8542f7d4cc1d39a9d0b3257513e09e68cc294ba2cc

## 3) Writing image to USB stick

[Download Etcher](https://etcher.io) - Win/Mac/Linux

Start Etcher, select image file, and write to USB stick.

## 4) Booting from USB

Booting from USB is usually done by pressing Esc many times when computer
is booting. From boot menu select USB drive with arrow keys down and Enter.

In one laptop's case pressing F2 many times while booting did start
BIOS/UEFI settings. There arrow key right to Boot menu, and on UEFI
setting press Enter some times to accept OK messages, so that
it is changed UEFI => Legacy Mode. After that orderl all USB boot
options to top, and F10 is Save and Exit. Then it boots from USB stick.
To get back to Windows, change back Legacy Mode => UEFI.

Other alternative boot menu keys are F1 or Enter, that usually brings
BIOS or UEFI settings where boot order can be changed. 
Some laptop models have some special tiny pushable button at left side 
of laptop, that brings settings menu.
It could also be some other key, like F2, F10, F11 or F12.

## 5) Network settings

You can test network connection with Start-Bird-button /
Internet / Firefox. Write there some web address.

LAN: If you have Ethernet cable connected, it should connect to
Internet automatically.

WLAN: Click at bottom right corner icon that has blue wire in
white wall socket. Select WLAN network and enter your WLAN password.

Android mobile phone or table USB cable: connect USB cable from mobile Android
phone to laptop. In Android phone click Settings cogwheel /
More / Shared connection and mobile hotspot /
Internet sharing via USB . If it does not connect yet, you may
need to set mobile connection on desktop bottom right corner icon
that has blue wire in white wall socket. You may need to click cancel
to file manage popups that try to connect to your mobile phone disk space.

Symbian phone USB cable: connect USB cable to your computer and select
Nokia Suite mode on your Symbian phone. If it does not connect yet, you may
need to set mobile connection on desktop bottom right corner icon
that has blue wire in white wall socket. You may need to click cancel
to file manage popups that try to connect to your mobile phone disk space.

USB 2G/3G/4G/5G modem: connect modem to computer. If it does not connect yet, you may
need to set mobile connection on desktop bottom right corner icon
that has blue wire in white wall socket. You may need to click cancel
to file manage popups that try to connect to your mobile phone disk space.

## 6) Screenmode

Click Bird-Start-button / Asetukset / Näytön asetukset. Select laptop local
display, or external monitor "Ulkoinen näyttö", or just try various
options.

## Optional: Change Language

Because this bootable USB was originally created for friend at Finland, desktop 
and keyboard is currently using Finnish, you can change language:

https://wiki.debian.org/ChangeLanguage

TSC game language is also in Finnish, you can change it after starting
TSC game from desktop TSC shortcut in game options "Kieli: fi-fi, etc."

## Optional: Enlarge Disk Space

There is 7.5 GB / btrfs partition and 0.5 GB swap partition. If you write this
to bigger USB stick, you can with GParted (for example Puppy Linux .iso booted
in VirtualBox, and USB stick attached) delete swap and extended partitions,
enlarge / partition to bigger, and add extended and swap partition. Then copy
from GParted swap partition info the swap partition UUID to / partition
textfile /etc/fstab editing it as root, replace old UUID, save /etc/fstab
textfile, unmount USB stick, and boot from USB stick.

There is also experimental btrfs driver for Windows:
https://github.com/maharmstone/btrfs

## Development: Adding changes to USB image file

If you want to use Linux image in VirtualBox for development
(it's too slow for playing in VirtualBox), you can extract it unar,
that unarhives any archive:

sudo apt install unar zip unzip p7zip-full xmount

Then you can mount .img as VirtualBox vdi file with xmount
that writes changes to separate cache file, start VirtualBox as root
with:

sudo virtualbox

Install VirtualBox extensions pack downloaded from https://virtualbox.org
in VirtualBox menu File / Preferences / Extensions,
make new Debian 9 64bit VM with 2 GB RAM or more, use /mnt/tsc...vdi
as hard disk, etc:

unar tsc-usb-*.img.gz

sudo xmount --in raw ./tsc-usb-2018-06-16.img --out vdi --cache ./disk.cache /mnt

After changes to disk.cache file, writing modified disk image back to archived
file requires having another harddisk vdi image, that you boot in virtualbox:

sudo mkdir /mnt2

sudo xmount --in raw ./tsc-usb-2018-06-16.img --out vdi --cache ./disk2.cache /mnt2

Then create new VirtualBox Debian 9 64bit VM with 2 GB RAM minimum, add
to SATA controller, add to it harddisk drive /mnt2/tsc...vdi , then add
cdrom and leave it empty, then add harddisk drive /mnt/tsc...vdi .
Then add shared folder with auto-mount. Start VM.
Click Start-Bird-button / Järjestelmätyökalut / Tiedostonallinta that is
file manager. Click on file manager Linux partition at bottom, to see
is it /dev/sdb. Install VirtualBox additions from top VirtualBox top menu.
Then unmount /dev/sdb and make archive on Start-Bird-button /
Järjestelmätyökalut / LXTerminal:

sudo su

See what shared drives there are:

df -h

And write disk image:

sudo dd if=/dev/sdb conv=sync,noerror status=progress | gzip -c > /YOUR-SHARED-FOLDER/tsc-usb-YEAR-MONTH-DATE.img.gz

Lauri (xet7)<br />
On behalf of TSC team

[1]: https://www.debian.org
[2]: https://ftp.secretchronicles.org/alpha/tsc-usb-2018-06-17.img.gz
