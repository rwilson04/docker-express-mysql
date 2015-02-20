FROM shinymayhem/node

RUN \
    npm install -g bower && \
    npm install -g express && \
    npm install -g mysql

VOLUME /opt/node

WORKDIR /opt/node

EXPOSE 80

ENV DB_HOST changeme
ENV DB_USER changeme
ENV DB_PASS changeme
ENV DB_NAME changeme
ENV DB_PORT changeme

CMD sh -c 'node index.js'
