## Node-RED packaging for Cloudron.io

[Node-RED](http://nodered.org/) is a web-based tool for wiring together APIs and functions with boxes and wires. But Node-RED is a self-hosted app. If you don't want to host it yourself, thanks to this port you can launch a remote instance for you using [Cloudron.io](https://cloudron.io/).

It's currently a single user app (meaning that within one instance everybody sees everything). The recommended use is to create a dedicated app instance per user or team.

# Try it

Easy! Go to [Cloudron.io](https://cloudron.io/) and click on Demo.

# What's inside?

The latest version of Node-RED plus the following extensions:

* node-red-contrib-admin
* node-red-contrib-moment
* node-red-contrib-postgres
* node-red-contrib-salesforce
* node-red-contrib-pubnub
* node-red-contrib-influxdb
* node-red-contrib-mongodb2
* node-red-node-aws
* node-red-node-box
* node-red-node-delicious
* node-red-node-dropbox
* node-red-node-dweetio
* node-red-node-email
* node-red-node-feedparser
* node-red-node-fitbit
* node-red-node-flickr
* node-red-node-forecastio
* node-red-node-google
* node-red-node-instagram
* node-red-node-jawboneup
* node-red-node-mongodb
* node-red-node-mysql
* node-red-node-openweathermap
* node-red-node-pinboard
* node-red-node-ping
* node-red-node-pushbullet
* node-red-node-openweathermap
* node-red-node-pinboard
* node-red-node-ping
* node-red-node-rbe
* node-red-node-smooth
* node-red-node-strava
* node-red-node-suncalc
* node-red-node-tfl
* node-red-node-twitter
* node-red-node-weather-underground
* node-red-node-xmpp
* node-red-node-wordpos
* node-red-node-badwords
* node-red-contrib-matrixbot

# Build and run locally

Assuming you have Docker installed:

```
git clone https://github.com/mlopezr/nodered-cloudron.git
cd nodered-cloudron
docker build -t mynodered .
docker run -it -p 1880:1880 mynodered
```

Then open http://localhost:1880 in your browser.

