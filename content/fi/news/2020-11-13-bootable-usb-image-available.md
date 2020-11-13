---
title: USB tikulta käynnistyvä versio saatavilla
date: 2020-11-13
author: xet7
translator: xet7
summary: USB tikulta käynnistyvä versio saatavilla

---

xet7 julkaisi tänään USB tikulta suoraan käynnistyvän version TSC:stä.
Siinä on [Puppy Linux Bionic][1] 32bit Linux ja TSC 2.1.0 julkaisu versio
asennettuna .deb paketista (riippuvuudet paketti hallinnasta, ja purettu
.deb paketti kohde hakemistoihin) tänään 13.11.2020. Linux käynnistyy suoraan
USB tikulta, joten se toimii nopeasti ja on hyvin pelattava.
Se toimii x86 ja x64 tietokoneissa.

TSC peli on työpöydän valikossa: Applications / Fun / Secret Chronicles of Dr.M.

## Muutosloki

- v0.01 2020-11-13 Ensimmäinen julkaisu jossa on TSC 2.1.0

## 1) Vaatimukset

Tarvitset minimissään 8 GB USB tikun, koska USB
levykuva on 6 GB.

Jos sinulla on PlayStation 3 yhteensopiva USB peliohjain,
voit ottaa sen käyttöön pelin valikossa Options / Joystick.

Esimerkiksi, käytän tätä peliohjainta.

### Goodbetterbest Ltd Gioteck VX2 Wired Controller

<p>
<div class='embed-container'>
<img
src="/assets/bootableusb/gamepad.jpg" width="100%" height="auto"
alt="Gamepad"/>
</div>
</p>


## 2) Lataa USB levykuva tiedosto

[TSC-2.1.0-usb-i386.7z][2] - 1.1 GB

MD5SUM:<br />
68983ef6aac47febd7fc126db2d3c9a4<br />
<br />

SHA256SUM:<br />
cb16d88bb150318683c5bc1ee57f92db22341181102d523dce93bcc318c56f74<br />
<br />

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

## <a id="uefimode"></a>5) Ennen: UEFI tila

<p>
<div class='embed-container'>
<img
src="/assets/bootableusb/uefimode.jpg" width="100%" height="auto"
alt="UEFI Mode"/>
</div>
</p>

## <a id="legacymode"></a>6) Jälkeen: Legacy tila, USB valinnat siirretty ylimmäksi. Paina F10 joka on Save and Exit (tallenna ja lopeta).

<p>
<div class='embed-container'>
<img
src="/assets/bootableusb/legacymode.jpg" width="100%" height="auto"
alt="Legacy Mode"/>
</div>
</p>

Lauri (xet7)<br />
TSC tiimin puolesta

[1]: http://puppylinux.com
[2]: https://ftp.secretchronicles.org/releases/TSC-2.1.0-usb-i386.7z
