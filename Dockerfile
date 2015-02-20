FROM shinymayhem/node

RUN \
    npm install -g bower && \
    npm install -g express && \
    npm install -g mysql

VOLUME /opt/node

WORKDIR /opt/node

EXPOSE 80

ENV DB_HOST blank
ENV DB_PASS blank
ENV DB_NAME blank
ENV DB_PORT blank

CMD sh -c 'node index.js'
