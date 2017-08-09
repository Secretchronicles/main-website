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

Voit ladata .deb paketit [Lataa -sivulta][1].

Nämä .deb paketit on käännetty suoraan git Devel haarasta. Emme anna mitään takuuta että
nämä käännökset toimivat, ja ne varmasti eivät ole bugittomia.

Asentaaksesi ne voit yleisesti käyttää ```dpkg -i "packagename"``` komentoa, tai lukea
dpkg:n man sivuja. Teknisesti näiden *pitäisi* toimia myös Ubuntussa ja siihen
perustuvissa, mutta kuten sanottu aiemmin, emme anna takuita.

Myös, tämän kautta, voimme innoissamme sanoa että TSC on nyt Debian Unstable repoissa.

Kuten aina, jos löydät bugin, **ole hyvä** ja raportoi se, joko [Foorumilla][2] tai [Github][3]issa.

  Nauti!

-Sydney(sydney_untangle)<br />
TSC tiimin puolesta

[1]: /fi/download
[2]: https://forum.secretchronicles.org
[3]: https://github.com/Secretchronicles/TSC/issues
