FROM shinymayhem/node

RUN \
    mkdir -p /opt/node && \
    cd /opt/node && \
    npm init -y && \
    npm install -g bower && \
    npm install -g mysql && \
    npm install express --save

VOLUME /opt/node

WORKDIR /opt/node

EXPOSE 80

ENV DB_HOST changeme
ENV DB_USER changeme
ENV DB_PASS changeme
ENV DB_NAME changeme
ENV DB_PORT changeme

CMD sh -c 'node index.js'
