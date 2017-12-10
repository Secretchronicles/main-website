---
title: Palvelin infran päivitys
date: 2017-10-26
author: Quintus
translator: xet7
summary: Projektin infra sai suuren päivityksen — kaikki käyttäjätilit ja tilaukset peruttu!
---

**HUOM: Tämä artikkeli sisältää tärkeätä tietoa postituslistan ja foorumin käyttäjille! Ole hyvä ja lue tarkkaan!**

Sunnuntaina, 15.10.2017 pääpalvelimemme `alexandria` kärsi
sähkökatkosta sponsorimme palvelinkeskuksessa  joka vioitti SQL
tietokantaa. Onneksi, kiitos toimiville varmuuskopioille, oli
mahdollista palauttaa kaikki tärkeät tiedot paitsi ihan uusimmat
viestit Chessboard foorumilla.

Kuitenkin, otimme palvelinkatkon mahdollisuutena viimeinkin
päivittää vanhentunut palvelin käyttöjärjestelmä (Debian 7)
nykyiseen Debian 9 versioon. Tämä päivitys on nyt valmistunut,
ja pyydämem anteeksi kaikkea haittaa joka aiheutui siitä että
erityisesti foorumimme ja postituslistamme eivät olleet
saatavilla päivityksen aikana. Lisäksi, entinen projektin vetäjä
Quintus (Marvin) on ilmoittanut käyttävänsä jälleen jonkin verran
aikaa kirjoittaaksen uudelleen TSC:n versioksi 3.0.0.  Tukeaksemme
häntä tässä, päätimme sulkea Chessboardin osoitteessa
forum.secretchronicles.org koska Chessboard on
[ohjelmisto jonka Quintus on itse kirjoittanut][1] ja muutoin
tarvitsisi aktiivista ylläpitoa koodimuutoksina mahdollisten
tietoturvaongelmien ilmetessä. Tällöin hän voi nyt keskittyä
varsinaiseen TSC koodaukseen.

Tämä siirto ei kuitenkaan tarkoita että TSC:llä ei olisi
viestintävälinettä jäljellä. Ensinnäkin, [forum.secretchronicles.org][2]
on arkistoitu staattiseksi kopioksi joka säilyy saatavilla referenssinä
mutta ei aiheita ylläpito ongelmia enää koska se on vain staattista
HTML:ään nyt (kopio on tehty [HTTrack][3] ohjelmalla). Et voi kirjautua
siihen enää, ja *kaikki käyttäjätilin on peruttu*.

Chessboard on aina ollut käyttöliittymä kahdelle postituslistalle,
tsc-users@lists.secretchronicles.org ja
tsc-devel@lists.secretchronicles.org. Näitä postituslistoja
hallittiin [mlmmj][4] ohjelmistolla jonka web käyttöliittymän puute
oli syy miksi Chessboard alunperin kirjoitettiin. Tämän jälkeen
kuitenkin, muut postituslista ohjelmistot ovat kehittyneet.
Merkittävimpänä, standardi postituslista ohjelmisto,
[GNU Mailman][5], on nähnyt merkittävän päivityksen web käyttöliittymässä.
Vanha “Pipermail” käyttöliittymä oli poistettu kokonaan ja sen
tilalle tullut uudelleenkirjoitettu version nimeltään “HyperKitty”,
joka käyttää modernia teknologiaa ja tarjoaa hienon ja siistin
käyttökokemuksen. Siis, TSC projektin postituslistat on siirretty
mljmmj:stä Mailman:iin. Helpottaaksemme siirtymistä mlmmj+Chessboardista
GNU Mailmaniin kuitenkin, *kaikki tilaukset molempiin tsc-devel ja
tsc-user on peruttu*, kuten foorumi tilitkin.

Projektin pääviestintäväline on nyt [lists.secretchronicles.org][6].
Sillä sivustolla löydät hienon web käyttöliittymän, joka sallii
osallitua postituslista keskusteluihin käyttämättä sähköpostia,
jos et halua käyttää sähköpostia. HyperKittyn pitäisi tuoda mukavuutta
niille jotka valittivat että Chessboardin käyttöliittymä näyttää
liian vanhalta. Jos toisaalta pidät ensisijaisesti sähköposti
viestinnästä (ja oikeutetusti!), niin tämä on tietysti myös
mahdollista; sivusto sallii sinun valita tilauksen (subscription,
sähköposti mahdollisuus) tai rekisteröinnin (web mahdollisuus)
välillä, tai voit käyttää molempia jos haluat niin, jolloin sinun
tulee ensin rekisteröityä ja sitten tilata.

**Näinollen: Jokaisen joka on yhä kiinnostunut TSC yhteisöstä**
täytyy vierailla sivustolla [lists.secretchronicles.org][6]
**ja tilata sieltä sähköposti versiot halutuista listoista**
ja/tai **luoda tili haluttujen listojen sähköposti versioihin**
ja/tai **luoda tili käyttääkseen web käyttöliittymää**
viestien lähettämiseen.

Koska kaikki tämä infra on nyt täysin uutta, voi hyvin olla niin
että löytyy virheitä ja ongelmia. Älä ujostele ottaa yhteyttä
meihin, mieluiten kirjoittamalla tsc-users postituslistalle,
kirjoittamalla sähköpostia, tai käyttäen HyperKittyä.

Toinen jota katsottiin uudelleen infra päivitysten yhteydessä
on päivitys IRC bottiimme, [furbot][8], joka on nähtyt
yleisen ohjelmistopäivityksen erityksesti kasvonkohotuksena
IRC logeihin. Jos nyt vierailet [chatlogs.secretchronicles.org][9],
tulet toivottavasti mieluisasti yllätetyksi paremmasta luettavuudesta
uudemmissa chattilogeissa (vanhoja logeja ei ole muokattu).
Ärsyttävin ongelma chattilogeissa, kun forbot toisti itseään
monta kertaa kun siltä katkesi IRC yhteys, on ratkaistu myös.

Suunnitelmat siirtää tikettisysteemin `alexandrialle` on
pysäytetty hetkeksi johtuen ajanpuutteesta. mlmmj:stä Mailmaniin
siirto mukaanlukien Chessboardin poisto sekä käyttöjärjestelmän
päivitys veivät aika paljon aikaan. Näitä suunnitelmia ei ole
kuitenkaan hylätty.

Monet kiitokset Laurille (xet7) joka suoritti käyttöjärjestelmän
päivityksen, Quintukselle Chessboard+mlmmj siirrosta Mailmaniin,
ja [First-Root UG][7]:n jatkuvasta projektin sponsoroinnista
`alexandria` palvelimen muodossa.

Marvin (Quintus)<br/>
TSC tiimin puolesta

[1]: https://github.com/Quintus/chessboard
[2]: https://forum.secretchronicles.org/
[3]: http://www.httrack.com/
[4]: http://mlmmj.org/
[5]: http://list.org/
[6]: https://lists.secretchronicles.org/
[7]: http://first-root.com/
[8]: https://github.com/Secretchronicles/furbot
[9]: https://chatlogs.secretchronicles.org/
