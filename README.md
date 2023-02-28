# OD_Weather

## Requirements
 - [OuDayasLIB](https://github.com/OuDayas/OuDayasLIB)
 
<br>

## Configurazione

- Per iniziare
Ti servirà una chiave API per permettere allo script di comunicare con "open weather map", per ottenere questa API registrati sul sito https://openweathermap.org/

Appena ti sei registrato accedi a https://home.openweathermap.org/api_keys per generare una chiave API collegata al tuo account appena creato

Una colta creata la chiave, inseriscila in `Config.API`

Per selezionare la città desiderata per sincronizzare il meteo recati su https://openweathermap.org/ e cerca la città

Una volta trovata troverai nel sito l'ID della suddetta nell'URL sopra (sarà tipo: https://openweathermap.org/city/3169070 ), copia l'ID numerico ed inseriscilo in `Config.CityID`

<br><br>


- Configurazione comandi e notifiche

<br>

Nella sezione
`Config.cmd` puoi configurare:

Se attivare il comando per cambiare manualmente il tempo atmosferico

Il nome del comando per cambiare il meteo, e il nome del comando aggiuntivo per sincronizzare in automantico il tempo

Configurare la lista dei tempi atmosferici presenti nel gioco (Ti consiglio in caso voglia disabilitarne uno di aggiungere soltanto un commento all'inizio del nome)

Nella stessa sezione c'è "DiscordUpdate", impostandolo su "true" ogni cambiamento con il comando invierà una notifica sul canale discord preimpostato

<br>

- Notifiche

<br>

Nella sezione

`Config.DiscordMessage` puoi configurare se abilitare le notifiche tramite canale discord nella voce "enabled"

Per configurare il "bot" dovrai procurarti il webhook del canale desiderato ed inserirlo in `webhook`

Puoi impostare un'immagine come icona in `avatar` ed impostare un nickname in `nickname`

In caso Tu voglia che ogni tot tempo preimpostato il "bot" invii una notifica di avvio per il tempo atmosferico uguale a quello precedente, imposta `UpdateOnSame` su true

- Impostazioni base

Nella sezione

`Config.MeasureSystem` puoi impostare i metri di misura il quale il "bot" farà riferimento per la temperatura e velocità del vento impostando "metric" oppure "imperial"

Nella sezione

`Config.SetWeather` Puoi impostare se bilitare il cambio del meteo ogni qual'ora ci fosse un cambio, il tempo della transizione del meteo e se impostare la scia delle impronte di piedi e veicoli (Vale per i tempi atmosferici con della neve)

Nella sezione

`Config.AutoCheckTime`


Puoi impostare ogni quanto tempo desiderato lo script controllerà il tempo atmosferico della città desiderata e impostarlo

- Autorizazzioni
Nella sezione
`Config.cmd` puoi configurare nella voce `PlayersAllowed` la licensekey dei giocatori abilitati ad usare il comando





## Misc

Tempi atmosferici disponibili:
'EXTRASUNNY'
'CLEAR'
'NEUTRAL'
'SMOG'
'FOGGY'
'OVERCAST'
'CLOUDS'
'CLEARING'
'RAIN'
'THUNDER'
'SNOW'
'BLIZZARD'
'SNOWLIGHT'

Eventi:
'XMAS'
'HALLOWEEN'
