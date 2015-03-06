FROM shinymayhem/express

RUN \
    npm install -g mysql

ENV DB_HOST changeme
ENV DB_USER changeme
ENV DB_PASS changeme
ENV DB_NAME changeme
ENV DB_PORT changeme
