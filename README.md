<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Etherpad for YunoHost

[![Integration level](https://dash.yunohost.org/integration/etherpad.svg)](https://dash.yunohost.org/appci/app/etherpad) ![Working status](https://ci-apps.yunohost.org/ci/badges/etherpad.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/etherpad.maintain.svg)

[![Install Etherpad with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Etherpad quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.
This version of Etherpad is installed without plugins and uses Redis as database.
Be aware, Redis database backup and restore is not fully implemented.
If you want to install Etherpad with plugins and mysql database: https://github.com/YunoHost-Apps/etherpad_mypads_ynh",


**Shipped version:** 1.9.7~ynh1

**Demo:** <https://video.etherpad.com/>

## Screenshots

![Screenshot of Etherpad](./doc/screenshots/screenshot.png)

## Documentation and resources

- Official app website: <https://etherpad.org/>
- Official admin documentation: <http://etherpad.org/doc/v1.9.3>
- Upstream app code repository: <https://github.com/ether/etherpad-lite>
- YunoHost Store: <https://apps.yunohost.org/app/etherpad>
- Report a bug: <https://github.com/YunoHost-Apps/etherpad_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/etherpad_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_ynh/tree/testing --debug
or
sudo yunohost app upgrade etherpad -u https://github.com/YunoHost-Apps/etherpad_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
