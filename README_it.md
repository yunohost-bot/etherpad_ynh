<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Etherpad per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/etherpad.svg)](https://dash.yunohost.org/appci/app/etherpad) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/etherpad.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/etherpad.maintain.svg)

[![Installa Etherpad con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Etherpad su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.
This version of Etherpad is installed without plugins and uses Redis as database.
Be aware, Redis database backup and restore is not fully implemented.
If you want to install Etherpad with plugins and mysql database: https://github.com/YunoHost-Apps/etherpad_mypads_ynh",


**Versione pubblicata:** 1.9.7~ynh1

**Prova:** <https://video.etherpad.com/>

## Screenshot

![Screenshot di Etherpad](./doc/screenshots/screenshot.png)

## Documentazione e risorse

- Sito web ufficiale dell’app: <https://etherpad.org/>
- Documentazione ufficiale per gli amministratori: <http://etherpad.org/doc/v1.9.3>
- Repository upstream del codice dell’app: <https://github.com/ether/etherpad-lite>
- Store di YunoHost: <https://apps.yunohost.org/app/etherpad>
- Segnala un problema: <https://github.com/YunoHost-Apps/etherpad_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/etherpad_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_ynh/tree/testing --debug
o
sudo yunohost app upgrade etherpad -u https://github.com/YunoHost-Apps/etherpad_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
