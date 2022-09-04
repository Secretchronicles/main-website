---
title: Download
---

On this page you can find the download links for the current version
of Secretchronicles. You can [browse the file server
directly](https://ftp.secretchronicles.org/releases) if you need older
releases, but please note outdated releases are unsupported.

Stable Version
--------------

The stable version is 2.1.0, released on 2020-05-17.

### Source Code

[TSC-2.1.0.tar.gz](https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz) (Sourcecode) [ [PGP signature](https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz.sig) ]

: MD5 sum:<br/>1f598a39667ff979d1b9075e173eac9b<br/>
  SHA256 hash:<br/>6a16765b4951e3d5d1ea2b84e6da8f67b0271460f0c570b53ccdab80d7396261<br>

### Windows

Follow Windows installer setup steps.

#### 64bit Win7 and newer

Release version:

[TSC-2.1.0-win64.exe](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.exe)

: MD5 sum:<br>88dffbc684d6897498b123922098069a<br>
  SHA256 hash:<br>f5a64dd4f4a789792754f9ef86162ac78a01b13f69a2cb11265bb3954ad0670d<br>
<br>

Debug version:

[TSC-2.1.0-win64-debug.exe](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64-debug.exe)

: MD5 sum:<br>8fcb0c25ff59d72bb507c028cf6d7d72<br>
  SHA256 hash:<br>33b227a5f1693bfc950ef029f2a11fef9665d7351f10cbec2f0efc43c203986b<br>
<br>

#### 32bit Win7 and newer

Release version:

[TSC-2.1.0-win32.exe](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.exe)

: MD5 sum:<br>19c2fd83778a81d7e9a1abb6a6996a34<br>
  SHA256 hash:<br>5def6edeb8f1d293b49b16ef88a1d41ab3c593cc53c1f5299d7b321723b3b524<br>
<br>

Debug version:

[TSC-2.1.0-win32-debug.exe](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32-debug.exe)

: MD5 sum:<br>908aca8421448e322e596bd5658fc610<br>
  SHA256 hash:<br>a4bd65ededd6bbc4bc48685ee91ec51dfda06da6bcda77185509edfbd9f21823<br>
<br>

### Bootable USB image for x86 and x64

[More details](https://secretchronicles.org/en/news/2020/11/13/bootable-usb-image-available/)

### .deb packages

You can try can you install .deb package by double clicking it on file manager.
If it does not work, and opens it as archive, close that archive manager,
right click .deb package, and select open with package installer.

Alternatively, to install the package at terminal, first cd into the folder where you downloaded the package to:

~~~~~~~~~~~~~~~~~~~~~
cd Downloads/
~~~~~~~~~~~~~~~~~~~~~

Then run:

~~~~~~~~~~~~~~~~~~~~~
sudo apt install ./TSC-2.1.0+packagename.deb
~~~~~~~~~~~~~~~~~~~~~

Apt will take care of the installation and all required dependencies. After the install is finished you can launch TSC through the
new The Secret Chronicles of Dr. M. entry in your application menu or by running the tsc command in your terminal.

NOTE: You must use apt, not apt-get to install the package, as the older apt-get cannot deal with installing .deb packages and resolving dependencies from a users home directory. You could also use dpkg -i to install the package, then run apt-get install -f to repair the broken dependencies.

### amd64/i386/arm64/ppc64el/s390x Debian 11 Bullseye Stable

[TSC-2.1.0-bullseye-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-bullseye-amd64.deb)

: MD5 sum:<br>32a6aec9bf6ee62b7f86e10ae9e691eb<br>
  SHA256 hash:<br>30701ef6fb4fcf9afe36286ff00734af9ae474483db302de201f2c04ca07981a<br>
<br>

[TSC-2.1.0-bullseye-i386.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-bullseye-i386.deb)

: MD5 sum:<br>1a3c2c4fa8031923c8e97d0c7a2df483<br>
  SHA256 hash:<br>a668162275587cc69fb026adf2a286879beaf434e4376f823f6b7fe7ad33971a<br>
<br>

[TSC-2.1.0-bullseye-arm64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-bullseye-arm64.deb)

: MD5 sum:<br>63d4c2d4866e570e0e5666d388d45511<br>
  SHA256 hash:<br>5aa473f3c731ee21e8dbce2dd62420afc0e907d2f0c010c687807c054b8227b2<br>
<br>

[TSC-2.1.0-bullseye-ppc64el.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-bullseye-ppc64el.deb)

: MD5 sum:<br>dff18ae08c86cdb6d73418c036793ebc<br>
  SHA256 hash:<br>75868d9b28d737f6b9234a8a0305542c8fbf797c02089693b41ecbd283f60906<br>
<br>

[TSC-2.1.0-bullseye-s390x.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-bullseye-s390x.deb)

: MD5 sum:<br>f1ee08000cf40970318828994504422b<br>
  SHA256 hash:<br>29297afda03d5fbe4d0a79305bd65c7f67a01a9b0a484df0417abb39bc731b23<br>
<br>

#### 64bit Debian Bullseye Sid Unstable

[TSC-2.1.0-sid-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-sid-amd64.deb)

: MD5 sum:<br>c3a105d2f62a941d4b37c4b5c905e963<br>
  SHA256 hash:<br>ecf5dd359b1b3711b2de82d96b46503eff154cd6c2d4e7caf432b38f50d1e578<br>
<br>

#### amd64/arm64/s390x Ubuntu 22.04 Jammy Jellyfish

[TSC-2.1.0-jammy-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-jammy-amd64.deb)

: MD5 sum:<br>b5fc9d13652394f48edd118b3b69c8e0<br>
  SHA256 hash:<br>6d329a7a75fabb7500ae552309c286f51f5537ed9c831f407686ee0a6046b7b5<br>
<br>

[TSC-2.1.0-jammy-arm64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-jammy-arm64.deb)

: MD5 sum:<br>253f97d4b3a31015fc1d4d847f5f3a7c<br>
  SHA256 hash:<br>e48437ac767d4fa09dbe900b8bbdcdf5b112d3cee71a550c1cc22cec84b2de39<br>
<br>

[TSC-2.1.0-jammy-s390x.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-jammy-s390x.deb)

: MD5 sum:<br>ccb3f179c72ba0c15aa823d60e0823a5<br>
  SHA256 hash:<br>4067cc2f007d73cb5c23d4157225c418537644252f11cb6b062b1c8fa31177aa<br>
<br>

#### amd64/arm64/ppc64el/s390x Ubuntu 21.04 Hirsute Hippo

[TSC-2.1.0-hirsute-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-hirsute-amd64.deb)

: MD5 sum:<br>3c00848d52df71a140b3a61b62d65844<br>
  SHA256 hash:<br>bc565c0da20fb4043890fd6a3d6ac856c2b0bbc975889278ea358676dcecdd6f<br>
<br>

[TSC-2.1.0-hirsute-arm64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-hirsute-arm64.deb)

: MD5 sum:<br>7edff4b901fac1e0d927ebee42eb0847<br>
  SHA256 hash:<br>cb92e9da670c21dbc9727f008ff3405e1d9ab899aa86837b0d760deb97ec1613<br>
<br> 

[TSC-2.1.0-hirsute-ppc64el.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-hirsute-ppc64el.deb)

: MD5 sum:<br>1b085e9459f5ad1272a6162b5a2d0d86<br>
  SHA256 hash:<br>e1cfb67023375e9ce10860f20d4f0b1628b82e291b9f586c0825188c9a7d41a3<br>
<br>

[TSC-2.1.0-hirsute-s390x.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-hirsute-s390x.deb)

: MD5 sum:<br>b611a6179c3bad9eefba9b7daceaf223<br>
  SHA256 hash:<br>7868dc3b0c0556576040332a8c9b62997fd700c3a445b17ee83344058eb41800<br>
<br>

#### 64bit Ubuntu 20.10 Groovy Gorilla

[TSC-2.1.0-groovy-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-groovy-amd64.deb)

: MD5 sum:<br>55bf65a993a7b53440f8841248e4f618<br>
  SHA256 hash:<br>9cff6d7cd10a715416f02e682d1d330c09fe7fdc4b0e6a0a568fb8fc8a09fbce<br>
<br>

<a name="s390x"></a>

### s390x Ubuntu 20.10 Groovy Gorilla

For IBM zSeries mainframes.

[TSC-2.1.0-groovy-s390x.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-groovy-s390x.deb)

: MD5 sum:<br>b8a0895eaa07101fa61d889c1ff8e011<br>
  SHA256 hash:<br>485e942862ab68bb77ddc7e3b82f443a01444b11f390e35ed2dd50f438ceba2d<br>
<br>

#### 64bit Ubuntu 20.04 Focal Fossa

[TSC-2.1.0-focal-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-focal-amd64.deb)

: MD5 sum:<br>21bb6f040eb97278c863e8f2fa7255a5<br>
  SHA256 hash:<br>497d9d857fe00fdad42ef8b50152589e7866fde40722e95413c835b98b04cb26<br>
<br>

#### 64bit Ubuntu 18.04 and Linux Mint 19.x

For newer Linux Mint, look at corresponding Ubuntu or Debian version at this page above.

[TSC-2.1.0-amd64.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.deb)

: MD5 sum:<br>b0708e28d892a2d10f0c580b674451b9<br>
  SHA256 hash:<br>25af5cf8174de48c2c1a16b2c5e181c4bf8a8e50baa008a23fdc97625b8d85cf<br>
<br>

#### 32bit Ubuntu 18.04 and Linux Mint 19.x

[TSC-2.1.0-i386.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.deb)

: MD5 sum:<br>27e41b2ae5d881bcf29e22c77e654660<br>
  SHA256 hash:<br>b1f679b442dadb847f518c37295923429482f2bb498e923f233b18584dcab438<br>
<br>

#### RasPi3/4

Ubuntu 21.04 Hirsute Hippo and Debian 11 Bullseye:

- Look at this page above for arm64 versions.

Raspbian or Raspberry Pi OS:

[TSC-2.1.0-armhf.deb](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.deb)

: MD5 sum:<br>81e1f94fe87c8ff5a2c6989980fd58cd<br>
  SHA256 hash:<br>5dac49ae91180478cbc4ef12211025e9b460722a57274d0633b2d2ec02fa4ec2<br>
<br>

### Bootable USB image

[Announcement and Download: Bootable USB image available](/en/news/2018/06/16/bootable-usb-image-available)
<br><br>

Unstable Versions
-----------------

This section is used to make precompiled binaries of unstable versions available.

As of now, there are no precompiled unstable versions available.

Git access
----------

The project is [hosted on
GitHub](https://github.com/Secretchronicles/TSC) currently. You can
retrieve and set up the repository like this:

~~~~~~~~~~~~~~~~~~~
$ git clone --recursive git://github.com/Secretchronicles/TSC.git
~~~~~~~~~~~~~~~~~~~

Please read the instructions in the `INSTALL.md` file for further
information.

Signatues
---------

All releases since 2.0.0 are signed with GPG, with the signature
files being linked above. They have been created by the lead developer
and signed by his private key with the following fingerprint:

~~~~~~~~~~~~~~~~~~~~~
pub   rsa4096 2019-02-21 [SC] [verfällt: 2022-02-20]
      900BE298C90B03B4EB0550AA3F6002E8826F3708
uid        [ unbekannt ] Marvin Gülker (quintus) <post@guelker.eu>
sub   rsa4096 2019-02-21 [A] [verfällt: 2022-02-20]
sub   rsa4096 2019-02-21 [E] [verfällt: 2022-02-20]
~~~~~~~~~~~~~~~~~~~~~

Following is the public key:

~~~~~~~~~~~~~~~~~~~~~~
-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=Mz1j
-----END PGP PUBLIC KEY BLOCK-----
~~~~~~~~~~~~~~~~~~~~~~
