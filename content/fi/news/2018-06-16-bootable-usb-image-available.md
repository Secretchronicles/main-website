---
title: USB tikulta käynnistyvä versio saatavilla
date: 2018-06-16
author: xet7
translator: xet7
summary: USB tikulta käynnistyvä versio saatavilla

---

xet7 julkaisi tänään USB tikulta suoraan käynnistyvän version TSC:stä.
Siinä on [Debian 9][1] 64bit Linux, LXDE työpöytä ja TSC alpha versio
asennettuna git repo devel haarasta tänään 16.6.2018. Linux käynnistyy suoraan
USB tikulta, joten se toimii nopeasti ja on hyvin pelattava.

## Muutosloki

- v0.02 2018-06-17 Lisätty langattoman verkon ajurit, ja kuva/ääni/salasana jne ohjelmia
- v0.01 2018-06-16 Ensimmäinen julkaisu

## 1) Vaatimukset

Todennäköisesti tarvitset suuremman kuin 8 GB USB tikun, koska USB
levykuva on 8 GB USB tikulta. Tämä johtuu siitä, että jotkin 8 GB
USB tikut ovat hieman pienempiä, ja jotkin ovat isompia.
Voit kokeilla sopiiko tämä 8 GB USB tikulle.

Jos sinulla on PlayStation 3 yhteensopiva USB peliohjain,
voit ottaa sen käyttöön pelin valikossa Options / Joystick.

## 2) Lataa USB levykuva tiedosto

[tsc-usb-2018-06-17.img.gz][2] - 2,4 GB

SHA256SUM:<br />
dd6b64ac6b5f31c8f2783d8542f7d4cc1d39a9d0b3257513e09e68cc294ba2cc

## 3) Levykuva tiedoston kirjoittaminen USB tikulle

[Lataa Etcher](https://etcher.io) - Win/Mac/Linux

Käynnistä Etcher, valitse levykuva tiedosto, ja kirjoita USB tikulle.

## 4) USB tikulta käynnistäminen

USB tikulta käynnistäminen tehdään yleensä painamalla Esc monta kertaa
konetta käynnistäessä.
Boot menusta valitaan USB asema nuolinäppäimillä alaspäin ja Enterillä.

Erään kannettavan tietokoneen tapauksessa F2 näppäintä painelemalla konetta
käynnistäessä pääsi BIOS/UEFI valikkoon, jossa nuolinäppäimillä oikealle Boot
valikosta UEFI kohdalla Enterillä muutaman kerran painelemalla pääsi
Legacy Mode tilaan, ja sitten kaikki USB-alkuiset käynnistysvaihtoehdot
ylimmäksi, ja F10 eli Save and Exit, niin käynnistyi tikulta.
Windowsiin pääsee takaisin kun vaihtaa Legacy Moden takaisin
UEFI tilaan.

Muita vaihtoehtoisia tapoja saada Boot menu näkyviin ovat F1 tai Enter,
se yleensä tuo näkyviin BIOS tai UEFI asetukset jossa käynnistysjärjestystä
voi muuttaa. Joissakin läppärimalleissa on erityinen pieni painettava
painike kannettavan vasemmalla sivulla, josta tulee asetus valikko.
Se voi olla myös jokin muu näppäin, kuten F2, F10, F11 tai F12.

## Näytön asetukset

Klikkaa Käynnistä-Lintu-painiketta / Asetukset / Näytön asetukset.
Voit käyttää kannettavan näyttöä, ulkoista näyttöä tai molempia.

## Verkkoasetukset

Jos olet liittänyt koneen nettiin Ethernet-kaapelilla, nettiyhteys
yhdistyy yleensä automaattisesti.

Langattoman verkon voit valita klikkaamalla työpöydän oikeasta
alakulmasta ikonia jossa sininen johto menee valkoiseen seinäpistokkeeseen.
Voit kirjoittaa langattoman verkon salasanan ja yhdistää siihen.

Android puhelin tai tabletti USB-kaapelilla: Liitä Android puhelin tai tabletti
USB johdolla tietokoneeseen. Androidissa klikkaa Asetukset ratas /
Lisää / Jaettu yhteys ja kannettava yhteyspiste / Internetin jakaminen
USB:n kautta. Jos nettiyhteys ei muodostu, klikkaa työpöydän oikeasta
alakulmasta ikonia jossa sininen johto menee valkoiseen seinäpistokkeeseen,
ja muodosta mobiili yhteys.

Symbian puhelin USB kaapelilla: liitä puhelin USB johdolla tietokoneeseen
ja valitse Nokia Suite tila. Jos nettiyhteys ei muodostu, klikkaa työpöydän oikeasta
alakulmasta ikonia jossa sininen johto menee valkoiseen seinäpistokkeeseen,
ja muodosta mobiili yhteys.

USB 2G/3G/4G/5G mokkula: liitä mokkula USB johdolla tietokoneeseen
Jos nettiyhteys ei muodostu, klikkaa työpöydän oikeasta alakulmasta
ikonia jossa sininen johto menee valkoiseen seinäpistokkeeseen,
ja muodosta mobiili yhteys.

## Valinnainen: Vaihda kieli

Koska tämä käynnistyvä USB oli alunperin tehty ystävälle Suomessa,
työpöytä ja näppäimiston käyttävät suomea, voit vaihtaa kielen
toiseksi:

https://wiki.debian.org/ChangeLanguage

TSC pelin kieli on myös suomi, voit vaihtaa sitä kun olet ensin
käynnistänyt TSC pelin työpöydältä TSC pikakuvakkeesta, ja sitten
tehdä muutoksen peli asetuksissa "Kieli: fi-fi, jne".

## Valinnainen: Laajenna levytilaa

Tikulla on 7,5 GB / btrfs partitio ja 0,5 GB swap partitio. Jos kirjoitat
tämän isommalle USB tikulle, voit GParted:illa (esimerkiksi Puppy Linux .iso
käynnistettynä VirtualBoxissa, ja USB tikku liitettynä) poistaa swap ja
extended partition, laajentaa / partitiota isommaksi, ja lisätä extended ja
swap partitiot. Sitten kopioi Gpartedin näyttämästä swap partition tiedoista
UUID / partitiolle tekstitiedostoon /etc/fstab muokkaamalla sitä roottina,
korvaa vanha UUID, tallenna /etc/fstab tekstitiedosto, unmounttaa USB tikku,
ja käynnistä USB tikulta.

Windowsille on myös kokeellinen btrfs tiedostojärjestelmän ajuri
https://github.com/maharmstone/btrfs .

## Kehitys: Muutosten teko USB levykuva tiedostoon

Tätä ei ole suomennettu vielä.

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

sudo xmount --in raw ./tsc-usb-2018-06-17.img --out vdi --cache ./disk.cache /mnt

After changes to disk.cache file, writing modified disk image back to archived
file requires having another harddisk vdi image, that you boot in virtualbox:

sudo mkdir /mnt2

sudo xmount --in raw ./tsc-usb-2018-06-17.img --out vdi --cache ./disk2.cache /mnt2

sudo xmount --in raw ./tsc-usb-2018-06-17.img --out vdi --cache ./disk2.cache /mnt2

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
TSC tiimin puolesta

[1]: https://www.debian.org
[2]: https://ftp.secretchronicles.org/alpha/tsc-usb-2018-06-17.img.gz
