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

## 1) Requirements

You most likely need bigger that 8 GB USB stick, because usb image if from
8 GB USB stick. This is because some 8 GB USB sticks are a little smaller,
and some are bigger. You can try does this fit on 8 GB USB stick.

## 2) Download USB image file

[tsc-usb-2018-06-16.img.gz][2] - 2.4 GB

SHA256SUM:<br />
ae221515524c4fdb98663e9d01909be95abb14e130f1b2671a653e119e1d24c3

## 3) Writing image to USB stick

[Download Etcher](https://etcher.io) - Win/Mac/Linux

Start Etcher, select image file, and write to USB stick.

## 4) Booting from USB

Booting from USB is usually done by pressing Esc many times when computer
is booting. From boot menu select USB drive with arrow keys down and Enter.

Other alternative boot menu keys are F1 or Enter, that usually brings
BIOS or UEFI settings where boot order can be changed. 
Some laptop models have some special tiny pushable button at left side 
of laptop, that brings settings menu.
It could also be some other key, like F2, F10, F11 or F12.

## Optional: Change Language

Because this bootable USB was originally created for friend at Finland, desktop 
and keyboard is currently using Finnish, you can do web search how to 
change language in Debian 9 LXDE. TSC game language is also in Finnish,
you can change it after starting TSC game from desktop TSC shortcut in game 
settings.

## Optional: Enlarge Disk Space

There is 7.5 GB / btrfs partition and 0.5 GB swap partition. If you write this
to bigger USB stick, you can with GParted (for example Puppy Linux .iso booted
in VirtualBox, and USB stick attached) delete swap and extended partitions,
enlarge / partition to bigger, and add extended and swap partition. Then copy
from GParted swap partition info the swap partition UUID to / partition
textfile /etc/fstab editing it as root, replace old UUID, save /etc/fstab
textfile, unmount USB stick, and boot from USB stick.

Lauri (xet7)<br />
On behalf of TSC team

[1]: https://www.debian.org
[2]: https://ftp.secretchronicles.org/alpha/tsc-usb-2018-06-16.img.gz
