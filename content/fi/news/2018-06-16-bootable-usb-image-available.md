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

## 1) Vaatimukset

Todennäköisesti tarvitset suuremman kuin 8 GB USB tikun, koska USB
levykuva on 8 GB USB tikulta. Tämä johtuu siitä, että jotkin 8 GB
USB tikut ovat hieman pienempiä, ja jotkin ovat isompia.
Voit kokeilla sopiiko tämä 8 GB USB tikulle.

## 2) Lataa USB levykuva tiedosto

[tsc-usb-2018-06-16.img.gz][2] - 2,4 GB

SHA256SUM:<br />
ae221515524c4fdb98663e9d01909be95abb14e130f1b2671a653e119e1d24c3

## 3) Levykuva tiedoston kirjoittaminen USB tikulle

[Lataa Etcher](https://etcher.io) - Win/Mac/Linux

Käynnistä Etcher, valitse levykuva tiedosto, ja kirjoita USB tikulle.

## 4) USB tikulta käynnistäminen

USB tikulta käynnistäminen tehdään yleensä painamalla Esc monta kertaa
konetta käynnistäessä.
Boot menusta valitaan USB asema nuolinäppäimillä alaspäin ja Enterillä.

Muita vaihtoehtoisia tapoja saada Boot menu näkyviin ovat F1 tai Enter,
se yleensä tuo näkyviin BIOS tai UEFI asetukset jossa käynnistysjärjestystä
voi muuttaa. Joissakin läppärimalleissa on erityinen pieni painettava
painike kannettavan vasemmalla sivulla, josta tulee asetus valikko.
Se voi olla myös jokin muu näppäin, kuten F2, F10, F11 tai F12.

## Valinnainen: Vaihda kieli

Koska tämä käynnistyvä USB oli alunperin tehty ystävälle Suomessa,
työpöytä ja näppäimiston käyttävät suomea, voit tehdä nettihaun
miten kieli vaihdetaan Debian 9 LXDE:ssä. TSC pelin kieli on myös
suomi, voit vaihtaa sitä kun olet ensin käynnistänyt TSC pelin
työpöydältä TSC pikakuvakkeesta, ja sitten tehdä muutoksen
peli asetuksissa.

## Valinnainen: Laajenna levytilaa

Tikulla on 7,5 GB / btrfs partitio ja 0,5 GB swap partitio. Jos kirjoitat
tämän isommalle USB tikulle, voit GParted:illa (esimerkiksi Puppy Linux .iso
käynnistettynä VirtualBoxissa, ja USB tikku liitettynä) poistaa swap ja
extended partition, laajentaa / partitiota isommaksi, ja lisätä extended ja
swap partitiot. Sitten kopioi Gpartedin näyttämästä swap partition tiedoista
UUID / partitiolle tekstitiedostoon /etc/fstab muokkaamalla sitä roottina,
korvaa vanha UUID, tallenna /etc/fstab tekstitiedosto, unmounttaa USB tikku,
ja käynnistä USB tikulta.

Lauri (xet7)<br />
TSC tiimin puolesta

[1]: https://www.debian.org
[2]: https://ftp.secretchronicles.org/alpha/tsc-usb-2018-06-16.img.gz
