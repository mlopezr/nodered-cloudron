FROM cloudron/base:0.9.0

# install node-red
RUN ln -s /usr/local/node-4.2.6/bin/node /usr/bin
RUN ln -s /usr/local/node-4.2.6/bin/npm /usr/bin
RUN npm install -g node-red node-red-contrib-matrixbot node-red-contrib-admin node-red-contrib-moment node-red-contrib-postgres node-red-contrib-salesforce node-red-contrib-pubnub node-red-contrib-influxdb node-red-contrib-mongodb2 node-red-node-aws node-red-node-box node-red-node-delicious node-red-node-dropbox node-red-node-dweetio node-red-node-email node-red-node-feedparser node-red-node-fitbit node-red-node-flickr node-red-node-forecastio node-red-node-google node-red-node-instagram node-red-node-jawboneup node-red-node-mongodb node-red-node-mysql node-red-node-openweathermap node-red-node-pinboard node-red-node-ping node-red-node-pushbullet node-red-node-openweathermap node-red-node-pinboard node-red-node-ping node-red-node-rbe node-red-node-smooth node-red-node-strava node-red-node-suncalc node-red-node-tfl node-red-node-twitter node-red-node-weather-underground node-red-node-xmpp node-red-node-wordpos node-red-node-badwords


# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
CMD /usr/local/node-4.2.6/bin/node /usr/local/node-4.2.6/lib/node_modules/node-red/red.js --userDir /app/data

