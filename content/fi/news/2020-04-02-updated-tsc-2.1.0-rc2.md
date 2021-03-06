---
title: Päivitetyt paketit TSC 2.1.0-rc2 julkaistu
date: 2020-05-10
author: xet7
translator: xet7
summary: Päivitetyt paketit toisesta 2.1.0 julkaisu kandidaatista on julkaistu.
---

RC2 julkaisussa oli [puuttuva riippuvuus libboost-chrono][1] joka on nyt
lisätty kaikkiin .deb paketteihin. Kiitos agrr että ilmoitit puuttuvasta
riippuvuudesta ja kiitos xet7 päivitettyjen pakettien tekemisestä.

RC2 Windows asennusohjelmiin ei tarvinnut näitä muutoksia tehdä.

### Binääri lataukset

[Lataukset sivulla][2] on .deb paketit ja Windows asennusohjelmat.

## Tietoja toisesta 2.1.0 julkaisu kandidaatista

quintus julkaisi RC2:n [postituslistalla][3] 26.4.2020, xet7 kopioi
sen julkaisu uutisen tähän alle.

xet7<br/>
TSC tiimin puolesta.

## Toinen julkaisu kandidaatti 2.1.0:sta julkaisu

quintusilta:

The Secret Chronicles of Dr. M. (TSC) projektin vetäjänä, minulla on ilo
ilmoittaa että toinen julkaisu kandidaatti (RC2) uudesta
TSC versiosta 2.1.0 on nyt saatavilla. Julkaisu on tägätty
Git repossa v2.1.0-rc2 ja on upattu web palvelimellemme..
Lähdekoodi on saatavilla seuraavista osoitteista:

* Lähdekoodi:            https://ftp.secretchronicles.org/releases/TSC-2.1.0.rc2.tar.gz
* PGP allekirjoitus:     https://ftp.secretchronicles.org/releases/TSC-2.1.0.rc2.tar.gz.sig
* MD5 tarkistussumma:    2b81a441cd963428bff46f19c2604150
* SHA256 tarkistussumma: 377600c13c4a16b249a3879d6d9169ca75ae476d97824218f29a91fe482a2fb1

TGZ tiedosto on kooltaan hieman yli 240 MiB. Ota tämä huomioon ennen
ennen lataamista.

Pyydämme anteeksi viivettä edellisen RC version jälkeen, mutta kehittäminen
vapaa-ajalla on aikaa vaikeaa koordinoida.

## Mitä on muuttunut RC1:n jälkeen?

* Ongelma "Options" valikon tabeissa Hi-DPI näytöissä on
  ehkä korjattu (tiketti #681, ongelman löysi Öyvind Sæther)
* Ongelma kirjainten encoodayksessa käännetyissä HUD viesteissä oli korjattu
* Uusi taso desert_fortress
* Lisätty 3 tasoa world_3:een, mukaanlukien desert_fortress.

Itse asiassa nämä muutokset ovat enemmän kuin pitäisi olla RC:ssä, mutta me
ajattelimme että ne ovat tarpeeksi pieniä liitettäväksi suoraan.
Tämän tuloksena, olen päättänyt julkaista toisen julkaisu kandidaatin,
enkä vielä lopullista versiota.

## Milloin voimme olettaa lopullisen julkaisun tapahtuvan?

Tämä on toinen julkaisu kandidaatti. Jos vakavia ongelmia ei ole löydetty
ennen 3.5.2020, versio 2.1.0 julkaistaan pian tämän päivän jälkeen.

## Mitä tapahtuu RC vaiheessa?

Tätä koodia pidetään nyt lopullisena tulevaa julkaisua varten. RC
vaiheessa on viimeinen mahdollisuus testata peliä vakavien ongelmien
varalta; pieniä ongelmia ei korjata. Niitä muutoksia ei tehdä mitkä
ei liity vakaviin ongelmiin. Emme oleta että pelissä on enää
vakavia ongelmia.

## Voinko auttaa TSC:tä käyttäjänä nyt?

Voit testata RC2:sta ja katsoa löydätkö ongelmia joiden vuoksi peli
ei toimisi. Ole hyvä ja raportoi ne [tänne][3] tai 
[bugienseurantaan][4] (vaatii GitHub tilin).

Valitettavasta ihan uusia tasoja ei tehty beta vaiheen aikana, joten
versiossa 2.1.0 ei tule olemaan kovin erilaisia tasoja verrattuna 2.0.0:aan.
Kunhan versio 2.1.0 on julkaistu, rohkaisemme kaikkia käyttäjiä lähettämään
laadkkaita tasoja liitettäväksi tuleviin julkaisuihin.

quintus<br/>
TSC tiimin puolesta.

[1]: https://github.com/Secretchronicles/TSC/issues/683
[2]: /fi/download/#kehitys-versio
[3]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org/thread/C2MYMC5C45OUGKWOKGND5LV6CAKNABK3/
[4]: https://github.com/Secretchronicles/TSC/issues
