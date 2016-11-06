---
title: Alpha versio saatavilla
date: 2016-08-17
author: Sydney
translator: xet7
summary: Alpha versio TSC:stä saatavilla Debian käyttäjille
---

Kuluneen vuoden aikana Muammar, joka on osa Debian paketointi tiimiä,
on laittanut paljon vaivaa kääntääkseen TSC:n Debianille, ja hänen työnsä
kautta, ja viimeaikaiset riippuvuusmuutokset TSC:n osalta, hän on onnistuneesti
pystynyt paketoimaan TSC:n .deb:ksi, niin että kaikki toimii kunnolla. Tämän kautta,
meillä on nyt pääsy valmiiksi käännettyihin .deb paketteihin, antaen meille mahdollisuuden
asentaa TSC Debian/Debian pohjaisiin järjestelmiin ilman kääntämistä.

Voit ladata .deb paketit allaolevista linkeistä. Ensimmäiset kaksi pakettia tarvitaan
molemmat jotta peli toimii kunnolla, ja kolmas paketti on upeaa musiikkiamme, joten
suosittelemme myös sen asentamista. Nämä ovat vain 64bit järjestelmille. <br />

[tsc_data_2.1.0+git20160813-1_all.deb][1]

: MD5 sum:<br>2424138bee4b74626e889a1b847e8bc1<br>
  SHA256 hash:<br>f6a5e71663869f69da25050e6fce9618f1f9fc38612ccf78e6ea36e8768908e6

[tsc_2.1.0+git20160813-1_amd64.deb][4]

: MD5 sum:<br>c1f4a1b1f66f7d1d5fde7303043dfd68<br>
  SHA256 hash:<br>b8afc411e14a4af7df588d283f4cefb148cfd5ca277d7be80b5be84b6d1fa4d3

[tsc-music_2.1.0+git20160813-1_all.deb][5]

: MD5 sum:<br>ee25066856582b1aac2b0b6b28ab052b<br>
  SHA256 hash:<br>ff1489ed7f6ea778ea5feca0cac93d2143a49f0492312649d48a053538c10996

Nämä .deb paketit on käännetty suoraan git Devel haarasta. Emme anna mitään takuuta että
nämä käännökset toimivat, ja ne varmasti eivät ole bugittomia.

Asentaaksesi ne voit yleisesti käyttää ```dpkg -i "packagename"``` komentoa, tai lukea
dpkg:n man sivuja. Teknisesti näiden *pitäisi* toimia myös Ubuntussa ja siihen
perustuvissa, mutta kuten sanottu aiemmin, emme anna takuita.

Myös, tämän kautta, voimme innoissamme sanoa että TSC on nyt Debian Unstable repoissa.

Kuten aina, jos löydät bugin, **ole hyvä** ja raportoi se, joko [Foorumilla][2] tai [Github][3]issa.

  Nauti!

-Sydney(sydney_untangle) <br />
TSC tiimin puolesta

[1]: ftp://ftp.secretchronicles.de/alpha/tsc-data_2.1.0+git20160813-1_all.deb
[2]: http://forum.secretchronicles.de
[3]: https://github.com/Secretchronicles/TSC/issues
[4]: ftp://ftp.secretchronicles.de/alpha/tsc_2.1.0+git20160813-1_amd64.deb
[5]: ftp://ftp.secretchronicles.de/alpha/tsc-music_2.1.0+git20160813-1_all.deb
