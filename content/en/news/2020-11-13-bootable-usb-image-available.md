---
title: Bootable USB image available
date: 2020-11-13
author: xet7
translator:
summary: Bootable USB image available
---

xet7 released today bootable USB image version of TSC. It has [Puppy Linux Bionic][1] 32bit Linux
and TSC 2.1.0 release version installed from .deb package (dependenices from package manager,
and unarchived .deb package to target directories) as of today 
2020-11-13. Linux boots directly from USB stick, so it works fast and is
very playable. It works on x86 and x64 computers.

TSC game is at desktop menu: Applications / Fun / Secret Chronicles of Dr.M.

## <a id="changelog"></a>ChangeLog

- v0.01 2020-11-13 First release that has TSC 2.1.0

## <a id="requirements"></a>1) Requirements

You neen minimum 8 GB USB stick, because usb image size is 6 GB.

If you have PlayStation 3 compatible USB gamepad, you can use it with
TSC. For example, I use this gamepad.

### Goodbetterbest Ltd Gioteck VX2 Wired Controller

<p>
<div class='embed-container'>
<img
src="/assets/bootableusb/gamepad.jpg" width="100%" height="auto"
alt="Gamepad"/>
</div>
</p>

## <a id="download"></a>2) Download USB image file

[TSC-2.1.0-usb-i386.7z][2] - 1.1 GB

MD5SUM:<br />
68983ef6aac47febd7fc126db2d3c9a4<br />
<br />

SHA256SUM:<br />
cb16d88bb150318683c5bc1ee57f92db22341181102d523dce93bcc318c56f74<br />
<br />

## <a id="writeusb"></a>3) Writing image to USB stick

[Download Etcher](https://etcher.io) - Win/Mac/Linux

Start Etcher, select image file, and write to USB stick.

## <a id="donotformat"></a>4) Do not format stick in Windows. It will make stick empty. Click Peruuta/Cancel.

<p style="text-align: center;">
<img
src="/assets/bootableusb/windows-do-not-format.png" width="60%" height="auto"
alt="Do not format stick in Windows"/>
</p>

## <a id="bootingfromusb"></a>5) Booting from USB

Booting from USB is usually done by pressing Esc many times when computer
is booting. From boot menu select USB drive with arrow keys down and Enter.

In one laptop's case pressing F2 many times while booting did start
BIOS/UEFI settings. There arrow key right to Boot menu, and on UEFI
setting press Enter some times to accept OK messages, so that
it is changed UEFI => Legacy Mode. After that orderl all USB boot
options to top, and F10 is Save and Exit. Then it boots from USB stick.

## <a id="uefimode"></a>6) Before: UEFI mode

<p>
<div class='embed-container'>
<img
src="/assets/bootableusb/uefimode.jpg" width="100%" height="auto"
alt="UEFI Mode"/>
</div>
</p>

## <a id="legacymode"></a>7) After: Legacy Mode, USB options moved to top. Press F10 that is Save and Exit.

<p>
<div class='embed-container'>
<img
src="/assets/bootableusb/legacymode.jpg" width="100%" height="auto"
alt="Legacy Mode"/>
</div>
</p>

### <a id="alternativeboot"></a>Alternative ways to boot from USB

Other alternative boot menu keys are F1 or Enter, that usually brings
BIOS or UEFI settings where boot order can be changed. 
Some laptop models have some special tiny pushable button at left side 
of laptop, that brings settings menu.
It could also be some other key, like F2, F10, F11 or F12.

## <a id="linuxbooting"></a>8) Linux booting from USB: press enter, or wait some seconds to continue booting

## <a id="gamepadsettings"></a>9) In Options, you can change gamepad settings.

## <a id="stoppingtsc"></a>10) Stopping TSC: press Esc, and click Quit with mouse or arrow keys and Enter.

## <a id="backtowindows"></a>11) Going back to Windows

To get back to Windows, <a href="#uefimode">change back Legacy Mode => UEFI</a>.

Lauri (xet7)<br />
On behalf of TSC team

[1]: http://puppylinux.com
[2]: https://ftp.secretchronicles.org/releases/TSC-2.1.0-usb-i386.7z
