---
title: Korruptoitunut Win32 asennusohjelma FTP palvelimella
date: 2015-10-13
author: Marvin Gülker (Quintus)
translator: xet7
summary: FTP palvelimella oli korruptoitunut Win32 asennusohjelma.
---

Useat käyttäjämme huomasivat jotain outoa käytöstä pelin Windows
versiossa, joka ilmeni lähinnä kaatumisina kun ladataan ensimmäistä
tasoa ensimmäisessä maailmassa maailmankartalla (se ei kaatunut kun
taso oli ladattu suoraan tasovalikosta). Raportti oli [foorumilla][1]
ja erikseen [bugiseurannassa][2] tästä ongelmasta, jonka minä sitten
jäljitin vialliseen tiedostoon FTP palvelimella. Ei ole selvää
miten tiedosto vioittui, mutta uudessa asennusohjelmassa generoituna
täsmälleen samasta koodista kuin alkuperäinen 2.0.0 asennusohjelma
ei ongelmaa enää esiintynyt. Olen todennut että kopioidessa
sitä tietokoneideni välillä tai jopa lähettäessäni sitä alexandria
palvelimellemme tiedosto vioittui jotenkin. Emme ehkä koskaan
löydä pohjimmaista syytä ongelmaan.

Lähetin uuden Win32 asennusohjelman FTP:lle joka korvaa viallisen
2.0.0 Win32 tiedoston. Jos latasit ja asensit TSC 2.0.0 aikavälillä
2015-08-17 - 2015-10-13 suosittelemme sinua poistamaan version jonka
latasit, [lataamaan uuden asennusohjelman][3], ja asentamaan sen.
Linkit “Lataa” sivulla on muutettu vastaavasti myös, mukaanlukien
MD5 ja SHA256 tarkistussummat. Vanha, korruptoitunut tiedosto
säilyy FTP palvelimella tutkintaa varten nimellä
`tsc-2.0.0-win32.defunct.exe` ja sitä ei tule loppukäyttäjien käyttää
(ja siihen ei linkitetä mistään).

Pahoittelemme häiriötä, mutta virheiden tapahtuminen on inhimillistä.
Haluamme sanoa Kiitos käyttäjille jotka raportoivat ongelman meille,
koska kun kaikki kehittäjämme käyttävät Linux järjestelmiä, emme ehkä
olisi huomanneet korruptoitunutta tiedostoa ollenkaan ilman heidän
raporttejaan.

Marvin Gülker (_Quintus_)<br/>
TSC kehitystiimin puolesta.

[1]: http://forum.secretchronicles.de/topics/285
[2]: https://github.com/Secretchronicles/TSC/issues/452
[3]: ftp://ftp.secretchronicles.de/releases/TSC-2.0.0-win32.exe
