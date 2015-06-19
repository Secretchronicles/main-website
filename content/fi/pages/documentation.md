---
title: TSC skriptaus dokumentaatio
---

Nämä sivut linkittävät eri dokumentaatio osiin jotka käsittelee
TSC’n skriptaus toimintoja. *Core* dokumentaatio sisältää
taso sriptaus APIn kuten määritelty alatason raaka C++ funktioissa
jotka on saatavilla kullekkin taso skriptille ilman lisätoimenpiteitä.
*SSL* dokumentaoi lisäkirjastot jotka toimitetaan TSC:n mukana
skriptaus tarkoituksissa jotka rakennetaan näiden core toimintojen päälle
pelkällä Rubyllä, ja jotka täytyy lisätä toiminnolla `TSC.require`.

Viimeisin versio tästä dokumentaatiosta voidaan muodostaa
TSC lähdekoodipuusta `rake docs` komennolla.

Huomioi että et löydä dokumentaatiota sisäisestä toiminnasta
TSC’s C++ koodista täältä. Koska se on vain hyödyllinen sinulle jos haluat
kehittää TSC:tä itseään, jossa tapauksessa on tärkeää olla saatavilla
uusin saatavilla oleva versio, voit helposti muodostaa sen *Doxygen*
muodossa käyttämällä komentoa  `doxygen` hakemistossa `tsc/`
joka on git checkout kopiossasi TSC lähdekoodipuusta.

Core dokumentaatio
------------------

* [2.0.0-beta8](/docs/2.0.0-beta8/core/)

SSL dokumentaatio
-----------------

* [2.0.0-beta8](/docs/2.0.0-beta8/ssl/)
