FROM cloudron/base:0.9.0

# Home directory for Node-RED application source code.
RUN mkdir -p /usr/src/node-red \
    && mkdir -p /app/data

WORKDIR /usr/src/node-red

# Add node-red user so we aren't running as root.
RUN chown -R cloudron:cloudron /app/data \
    && chown -R cloudron:cloudron /usr/src/node-red

USER cloudron

ENV PATH /usr/local/node-4.2.6/bin:$PATH

# package.json contains Node-RED NPM module and node dependencies
COPY package.json /usr/src/node-red/
RUN npm install

# Expose port
EXPOSE 1880

# Set the default command to execute when creating a new container
CMD npm start -- --userDir /app/data

