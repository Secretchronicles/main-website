---
title: TSC skriptaus API dokumentaatio
---

Tämä sivu on tällä hetkellä tyhjä. Kun 2.1.0 on julkaistu, se tulee
linkittämään skriptaus API dokumentaatioon 2.1.0:lle. Siihen asti,
ole hyvä ja katso omasta paikallisesta kopiostasi API dokumentaatiota.
Se on mukana TSC binäärien mukana kansiossa nimeltään "scriptdocs".
Jos käännät TSC:n lähdekoodista, skriptaus api generoidaan
automaattisesti build kansioon myös (ellet ole kieltänyt generoimista
käyttäen optiota `-DENABLE_SCRIPT_DOCS=OFF` ohjelmalle `cmake`).

*Core* dokumentaatio sisältää taso skriptaus APIn kuten määritelty
allaolevissa raaoissa C++ kutsuissa jotka on saatavilla kunkin tason
skriptissä tarvitsematta mitään lisätoimenpiteitä. *SSL* dokumentoi
lisä kirjastot jotka tulevat TSC:n mukana skriptaus tarkoituksiin
jotka on rakennettu näiden core toimintojen päälle puhtaalla Rubylla.
Alkaen 2.1.0:sta, SSL toiminnallisuus on valmiiksi saatavilla joka
tason skripteissä myös.
