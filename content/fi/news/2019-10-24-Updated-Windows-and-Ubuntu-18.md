---
title: Päivitetyt Windows ja Ubuntu 18.04 Alpha paketit saatavilla
date: 2019-10-24
author: xet7
translator: xet7
summary: Päivitetyt Windows ja Ubuntu 18.04 Windows Alpha paketit saatavilla
---

**Lataukset**

Windows ja Ubuntu versio saatavilla meidän [Lataukset sivulta][1]

**Windows**

Alunperin oli Windows versio TSC:stä, mutta koska oli monia koodimuutoksia,
Windows version kääntäminen lähdekoodista ei toiminut moneen vuoteen,
kunnes nyt.

Kiitos hgdagon ja quintus tarvittavista koodimuutoksista, ja xet7 lähdekoodista
kääntämisestä Windowsissa, meillä on nyt Alpha asennuspaketit Windowsille.

Alpha asennusohjelma päivitettiin 24.10.2019.

Asentaaksesi sen suunnista meidän [Lataukset sivulle][1]

**Ubuntu 18.04**

Kiitos Mario(Boospy) GitHub-käyttäjälle, meillä on nyt 64bit Alpha .deb
paketti Ubuntu 18.04:lle. Asentaaksesi sen suunnista [Lataukset sivulle][1] ladataksesi
uusimman paketin.

Asentaaksesi paketin, ensimmäiseksi mene kansioon johon latasit paketin:

~~~~~~~~~~~~~~~~~~~~~
cd Lataukset/
~~~~~~~~~~~~~~~~~~~~~

Sitten suorita:

~~~~~~~~~~~~~~~~~~~~~
sudo apt install ./tsc_2.1.0+packagename.deb
~~~~~~~~~~~~~~~~~~~~~

Apt pitää huolen asennuksesta ja riippuvuuksista. Asennuksen jälkeen voit käynnistää TSC pelin<br>
uudesta `The Secret Chronicles of Dr. M.` kuvasta Pelit valikossa tai tai suorittamalla
`tsc` komento päätteessäsi.

HUOM: Sinun täytää käyttää apt, ei apt-get komentoa asentaaksesi paketin, koska vanhempi apt-get ei pysty
asentamaan .deb-pakettia ja kaikkia sen riippuvuuksia käyttäjän kotikansioista. Voit myös käyttää
`dpkg -i` asentaaksesi paketin, ja sitten suorittaa `apt-get install -f` korjataksesi riippuvuudet.

Alpha paketti päivitettiin 15.10.2019.

**Lataukset**

Saatavilla meidän [Lataukset sivulta][1]

[1]: /fi/download/#development-version

xet7<br />
TSC tiimin puolesta
