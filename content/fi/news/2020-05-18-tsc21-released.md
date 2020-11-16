---
title: TSC 2.1.0 julkaistu
date: 2020-05-18
author: quintus
translator: xet7
summary: Vakaa versio 2.1.0 julkaistu
---

TSC tiimi on ylpeänä ilmoittaa että viiden vuoden kehityksen
jälkeen, uusi vakaa versio 2.1.0 The Secret Chronicles of
Dr. M. (TSC) on [julkaistu yleisölle eilen][1].

Tämä on ensimmäinen vakaa versio TSC 2:sta sen jälkeen kun
versio 2.0.0 oli julkaistu aiemmin vuonna 2015. Haluaisin
ottaa tämän mahdollisuutena kiittää joka ikistä TSC version
tekemiseen osallistujaa. Tiedämme että on vielä monia asioita
joita voisi kehittää edelleen, mutta me uskomme että viiden
vuoden jälkeen, on jo korkein aika julkaista uusi versio
vaikka jotkin haluamamme ominaisuudet eivät ehtineet 2.1.0:aan
(esimerkiksi, vieläkään ei ole korviketta kilpikonna pomolle
joka poistettiin versiossa 2.0.0). Mutta kuitenkin, tämä
julkaisu on monilta osin parempi kuin edellinen 2.0.0 julkaisu
vuodelta 2015. Uusia vihollisia, kehittyneempi tasoeditori
käyttöliittymä, uutta musiikkia, ja useita bugeja korjattu.
Ja viimeisenä mutta ei vähäisimpänä, tämä on ensimmäinen
vakaa versio TSC:stä joka viimein toimii kääntämällä lähdekoodista
uusimmissa Linux distroissa.

Jos haluat auttaa TSC:tä nyt seuraavaa julkaisua varten, ole
hyvä ja huomioi: **etsimme pikaisesti graafikkoa**. On
lukematon määrä tikettejä auki jota tarvitsevat jonkun piirtämään
SVG kuvia TSC peliin, mutta tällä hetkellä tiimissämme ei ole
enää graafikkoa. Jos sinä olet tai tunnet jonkun, ole hyvä ja
kerro täällä [postituslistalla][2], [foorumilla][3] tai meidän
[IRC kanavalla #secretchronicles Freenodessa][4]! Emme voi
saada uusia vihollishahmoja tai muita graafisia lisäyksiä
ennen kuin löydämme graafikon.

Tämä julkaisu on tägätty Git repossa v2.1.0 ja on upattu
webpalvelimellemme. Voit löytää lataus linkit alta.

Toivotamme tervetulleeksi Linux distrot paketoimaan tämän
uuden vakaan version TSC:stä. Jos haluaisit paketoida TSC:n
ja löydät jotain ongelmia, ole hyvä ja raportoi ne ongelmat
meidän [bugiseurantaan][5] ja me katsomme voimmeko ratkaista
ne seuraavaan julkaisuun.

## TSC:n tulevaisuus

2.1.0 julkaisu päättää monen vuoden ponnistelumme lopulta saada
TSC julkaisukuntoon jälleen. Olemme taistelleet lukemattomien
TSC riippuvuuksien API rikkinäisyyksien ja takaisin
yhteensopimattomuus rikkinäisyyksien kanssa tähän julkaisuun,
joka on ehkä suurin osa lähdekoodi muutoksia version 2.0.0 ja
2.1.0 välillä. TSC:ssä on yhä suuri määrä riippuvuuksia, ja
päämäärämme tulevissa versioissa on vähentää riippuvuuksien
määrää, jotta tällaisia ongelmia ei enää tapahtuisi.

On liian aikaista antaa lopullisia lausuntoja TSC:n tulevaisuudesta,
mutta oletamme että tulee olemaan joitakin huoltojulkaisuja ja
mahdollisesti pienempiä ominaisuus julkaisuja seuraavien vuosien
aikana. Suuri peruskorjaus, jonka pitäisi jossain vaiheessa tulla
TSC3:n muodossa, ei kuitenkaan ole missään lähi näköpiirissä.

## Mitä on muuttunut version 2.0.0 jälkeen?

* Useita uusia taustamusiikkeja
* Vaihdettu joitakin SMC grafiikoita alkuperäisiin TSC grafiikoihin
* Uusia vihollisia: Larry ja Doom Larry, jotka sulavat ja lopulta
  räjähtävät jos saavat osuman
* Parannuksia taso skriptaukseen
* Tasoeditorin käyttöliittymä uudistettu
* Monet taso poistumiskohdat eri ylimaailma polkuihin on nyt mahdollisia
* Tasot latautuvat paljon nopeammin verrattuna 2.0.0 versioon
* Salainen alue merkit on saatavilla myös tasoeditorissa
* Uusi pelin sisäinen skriptaus konsoli painamalla [F7]
* Useita bugikorjauksia, mukaanlukien joitakin kaatumisen korjauksia
* Useita lähdekoodista kääntämis korjauksia
* Useita skriptaus API dokumentaatio korjauksia, ja lähdekoodista
  kääntämis dokumentaation korjauksia
* Päivitetty CEGUI riippuvuus versiosta 0.7.9 versioon 0.8.7
* Tuki ja vaatimus C++11 pystyvälle C++ kääntäjälle
* TSC kääntyy lähdekoodista jälleen moderneissa Linux distroissa!
* datahead lisäsi uusia aavikko tasoja. Ne on lisätty kampanjaan
  maailmassa 3.
* Skriptaus dokumentaatio järjestestelmä on uudistettu ja riippuvuus
  RubyGemsiin skriptaus APIn luomisessa on poistettu
* Tasomusiikki on nyt pysäytetty (ei enäää häivytetty) pelihahmon kuollessa
* Uusi upea päävalikko teemamusiikki, tehnyt refi64
* Sriptaus laajennus paketit ovat palanneet takaisin
* Kokeellinen lähdekoodista kääntämis tuki FeeBSD/OpenBSD

CEGUI päivitys ansaitsee erillisen maininnan. CEGUI 0.8.x rikkoi
heidän APInsa ja koska yhä suuremmalla osalla ihmisistä ei ole
enää saatavilla vanhentunut CEGUI 0.7.9, oli välttämätöntä
päivittää. Tämä päivitys kuitenkin sitoi niin paljon TSC tiimin
resursseja että 2.1.0 julkaisu lopulta päätyi sisältämään vähemmän
uusia ominaisuuksia kuin oli alunperin tarkoitettu. Nyt kun
päivitys on tehty pitäisi olla paljon helpompi kääntää TSC
moderneissa Linux distroissa kuin oli tilanne vanhan 2.0.0
julkaisun aikaan.

Ominaisuus joka valitettavasti ei kerinnyt 2.1.0:aan on tarina.
Siitä huolimatta olemme hyväksyneet lopullisen tarinaluonnoksen,
voit löytää sen [verkosta][6].

Tasot jotka sisältyy versioon 2.1.0 on suurimmaksi osaksi samoja
kuin 2.0.0:ssa. Joitakin pieniä muutoksia on tehty tasoihin, ja
muutama uusi taso on lisätty. Rohkaisemme käyttäjiä tarjoamaan
laadukkaita tasoja [postituslistalla][2] tai [foorumilla][3]
lisättäväksi TSC:hen. Suosimme varsinkin tasoja jotka
toteuttavat osia edellä mainitusta tarinasta.

## Lataa

### Lähdekoodi

* Lähdekoodi:        [https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz](https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz)
* PGP allekirjoitus: [https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz.sig](https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz.sig)
* MD5 checksum:      1f598a39667ff979d1b9075e173eac9b
* SHA256 checksum:   6a16765b4951e3d5d1ea2b84e6da8f67b0271460f0c570b53ccdab80d7396261

### Binääri lataukset

#### Windows

* [Asennusohjelma 64-bit Windows 7 tai uudempi](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.exe)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.sha256sum))
* [Asennusohjelma 32-bit Windows 7 tai uudempi](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.exe)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.sha256sum))

#### Linux

* [amd64 .deb tiedosto Ubuntu 18.04/Linux Mint](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.deb)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.sha256sum))
* [i386 .deb tiedosto Ubuntu 18.04/Linux Mint](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.deb)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.sha256sum))
* [armhf .deb tiedosto Raspbian RasPi3/RasPi4](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.deb)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.sha256sum))

quintus<br/>
TSC tiimin puolesta.

[1]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org/thread/7P7NCQYUSQ3EVBR4SB6LM3WLIXWCHWTB/
[2]: https://lists.secretchronicles.org/postorius/lists/tsc-devel.lists.secretchronicles.org/
[3]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org
[4]: irc://chat.freenode.net/#secretchronicles
[5]: https://github.com/Secretchronicles/TSC/issues
[6]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/18-001.pdf
