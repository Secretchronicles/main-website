---
title: Palvelimen huoltokatkon jälkipyykki
date: 2019-03-25
author: quintus
translator: xet7
summary: Palvelimemme on jälleen linjoilla.
---

Kuten oli viestitetty [bugiseurannassamme][1], palvelimemme,
alexandria, meni alas maaliskuun 12. päivä, 2019. Tärkein
asia ensin: palvelimemme on jälleen linjoilla, ja olemme saaneet
kaikki palvelut jo linjoille. Käyttäjien foorumi sivuilla
lists.secretchronicles.org tai tsc-devel postituslistalla tulee
huomioida tarkkaan osio [Nykyinen tila](#nykyinen-tila) alla
koska käyttäjien toimenpiteitä tarvitaan.

## Mitä tapahtui?

Maaliskuun 12. päivä, 2019, palvelimemme
`alexandria.secretchronicles.org` ei vastannut enää mihinkään. Se
ei näyttänyt nettisivuja, eikä kirjautuminen SSH:n kautta toiminut kun TCP
yhteydet aikakatkaistui. Alexandria oli VPS palvelin jolla oli
OpenVZ alusta and sitä sponsoroi [First-Root UG][2], Saksassa. Quintus
nopeasti otti yhteyttä heihin kirjoittamalla tukipyyntö tiketin sinä
päivänä ja he diagnosoivat että palvelin oli “jumittunut” eikä sitä voisi
pelastaa. Vaihtoehtona, First-Root tarjosi meille
KVM palvelinta maaliskuun 13. päivä, 2019. Oletimme että kaikki tiedot
on menetetty ja tarkistimme kaikki varmuuskopiomme.

Kuten kävi ilmi, olimme juuri muutamaa kuukautta aiemmin päivittänyt
käyttöjärjestelmän Debian 8:sta Debian 9:ään. Ennen tätä päivitystä, me
olimme asettaneet automaattiset varmuuskopiot, mutta aikarajoitteiden takia emme
asettaneet niitä vielä Debian 9:lle, vaikka aikoimme tehdä niin. Murphyn
laki ei tunne armoa, joten viimeinen saatavilla oleva varmuuskopiomme oli lokakuulta
2018. Ottaen huomion alhaisen aktiviteetin projetissa lokakuun
2018 jälkeen, tämä ei ollut liian suuri menetys, tosin. TSC lähdekoodiin
tämä ei vaikuttanut mitenkään, koska se oli tallennettu Git:tiin, jokaisella
kehittäjällä oli viimeisin kopio, ja kaikki koodi on saatavilla
[GitHubin kautta][9] joka tapauksessa. **Emme ole menettänyt mitään lähdekoodia**.

Päätettiin että emme asenna vanhaa VPS:ää uudelleen, koska
se tuplaisi TSC tiimin työn, kun asennukseen saatavilla olevaa vapaa-aikaa
oli kuitenkin vain vähän. Sen sijasta, halusimme odottaa että First-Root tarjoaa
KVM palvelimen. Odotusaikana, jonka oletimme olevan lyhyt, kaikki
palvelut joita hostataan secretchronicles.org domainilla olisivat
poissa käytöstä. Maaliskuun 13. päivä, 2019, quintus [avasi tiketin][3]
GitHub vikaseurantaan ilmoittaakseen ongelmasta julkisesti koska
tsc-devel postituslista ei ollut saatavilla katkon takia.

Tässä tilanteessa, kaikki viestintä TSC tiimin jäsenten välillä
tapahtui IRC kanavalla `#secretchronicles` freenodessa. Meidän
IRC bottimme, furbot, oli myös hostattu palvelimellamme, joka
tarkoittaa että tältä ajalta ei ole julkista chattilokia saavilla
osoitteessa [chatlogs.secretchronicles.org][4].

Tilannekyselyistämme huolimatta, First-Root ei enää vastannut
tikettiin jonka kirjoitimme maaliskuun 13.päivä, eivätkä
he tarjonneet lupaamaansa KVM palvelinta. Marraskuun 24. päivään, 2019,
mennessä olimme olleet poissa linjoilta melkein kaksi viikkoa ja päätimme
että meidän tulee etsiä vaihtoehtoja. TSC tiimin jäsen xet7 on mukana
[Wekan projektissa][5], avoimen lähdekoodin kanban-taulu ohjelmistossa.
Wekan projektilla on palvelin jota käytetään [tekemään arm64 version Wekanista][10] ja
xet7 anteliaasti salli TSC:n siirtyä käyttämään sitä palvelinta. Vaikka tällä
palvelimella on melko epätavallinen CPU arkkitehtuuri (aarch64), se on todella
tehokas ja tulee täyttämään kaikki hostaus tarpeemme mukavasti. Koska
se on bare metal palvelin eikä VPS, sillä pitäisi olla helpompi korjata
mitä tahansa mahdollisia palvelinongelmia mitä saattaisi esiintyä.

Maaliskuun 24. päivänä uusi palvelin oli otettu käyttöön ja DNS RR:t oli
päivitetty. Vanha VPS ei ole enää käytössä.

## Nykyinen tila

Kaikki palvelut on palautettu toimintaan keskipäivällä maaliskuun 25. päivä, 2019.
Erityisesti, meidän IRC bottimme on aloittanut tallentaa jälleen osoitteeseen
[chatlogs.secretchronicles.org][4].

Uusi palvelin jonka Wekan projekti on tarjonnut käyttää Ubuntu 18.04:ää
Debian 9:n sijasta. Otimme tilaisuudesta vaarin vaihtamalla meidän Mailman 3
asennuksen aiemmasta mukaututetusta versiosta nyt tällä kertaa perustuen mailman3
paketteihin Ubuntu repoista, koska tämän tulisi alentaa
ylläpitökustannuksia. Koska käytettävät versiot olivat erilaisia, ei ollut
mahdollista vain kopioida tietokantaa varmuuskopioista jotka oli tehty
28.10.2018. Tällä oli seuraavat seuraukset:

* Jos olit rekisteröitynyt nettisivuilla tai tilannut
  tsc-devel postituslistan 28.10.2018 jälkeen, menetit tilisi ja
  tilauksesi. Sinun täytyy rekisteröity ja/tai tilata uudelleen.
* Jos olit tilannut ennen 28.10.2018 ja käytit pelkästään sähköpostia
  tsc-devel postituslistalla, sinun ei tarvitse tehdä mitään. Sinun
  tilauksesi on yhä voimassa.
* Jos olet rekisteröitynyt ennen 28.10.2018 ja käytät [foorumi
  nettisivuja][7] tsc-devel lukemiseen jne, sinut on vaihdettu
  vain-sähköposti tilaukseen teknisten syiden takia, eli foorumi
  tili on menetetty. Sinun täytyy mennä [foorumi nettisivuille][7]
  ja uudelleen rekisteröityä osoitteella johon saat sähköposteja
  foorumista. Foorumi automaattisesti täsmää tilaus sähköposti
  osoitteesi tekemääsi foorumi tiliin. Kun olet kirjautunut sisään,
  voit asettaa sähköposti ilmoituksesi uusista viesteistä klikkaamalla
  “Manage Lists” yläoikealla (vaihtoehtoisesti, [seuraa tätä linkkiä
  kirjautumisen jälkeen][8]). Klikkaa punaista “Unsubscribe” painiketta sivulla
  tsc-devel postituslistalle lopettaaksesi sähköpostien lähettämisen listalta
  sähköpostiisi. Voit silti käyttää listaa nettisivuilla tämän jälkeen.
* Jos haluat poistaa tilauksesi luomatta foorumi tiliä,
  ole hyvä ja liity IRC kanavallemme `#secretchronicles` palvelussa
  chat.freenode.net and pyydä tätä siellä.

Toista postituslistaa, tsc-users, ei ole palautettu, koska se ei koskaan nähnyt
yhtään vakavampaa liikennettä. Kaikki keskustelut, jopa jos se on käyttäjän
keskustelu kuten pelitasojen lähettäminen, tulee tapahtua tsc-devel postituslistalla
tästä alkaen. Kaikki tilaukset tsc-users postituslistalle on peruttu.

Pahoittelemme aiheutunutta häiriötä joka johtuu Mailman version vaihdosta.

## Tulevaisuus

Me tulemme tarkistamaan varmuuskopionti strategiamme ja nopeasti saamaan automaattiset
varmuuskopiot käyttöön uudella palvelimellamme.

Lisäksi, palautettuamme palvelut joita meillä oli vanhalla
VPS:llä, harkitsemme asentaa enemmän infraa. Esimerkiksi,
wiki, jonka laitoimme nukkumaan sen jouduttua spammatuksi, saattaa nähdä
renesanssin. CI palvelun asentamisesta on keskusteltu, kuten myös
automaattisista yöllisistä buildeista. TSC tiimin jäsen kirbyfan ehdotti
että asennettaisiin Discourse, rails-pohjainen foorumi nettisivu ohjelmisto.

quintus<br/>
TSC tiimin puolesta.

[1]: https://github.com/Secretchronicles/TSC/issues/649
[2]: https://www.first-root.com/
[3]: https://github.com/Secretchronicles/TSC/issues/649
[4]: https://chatlogs.secretchronicles.org
[5]: https://wekan.github.io/
[6]: https://lists.secretchronicles.org/hyperkitty
[7]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org/
[8]: https://lists.secretchronicles.org/postorius/lists/
[9]: https://github.com/Secretchronicles/TSC
[10]: https://blog.wekan.team/2018/01/wekan-progress-on-x64-and-arm/index.html
