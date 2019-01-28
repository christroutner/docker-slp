FROM python:3.6.6-jessie

ARG ELECTRUMX_VERSION=f7371e7a71c90017d4dd60be6272dc868bcbf672

RUN apt-get update && \
    apt-get install -y libleveldb-dev apt-utils build-essential

RUN pip install git+git://github.com/kyuupichan/electrumx.git@${ELECTRUMX_VERSION}

RUN useradd electrumx && \
    mkdir /srv/db && \
    chown electrumx:electrumx /srv/db

COPY motd /srv/motd

# These env vars should be set at run time.
ENV COIN=BitcoinCashABC
ENV DB_DIRECTORY=/srv/db
ENV DAEMON_HOST=127.0.0.1
ENV DAEMON_PORT=8333
ENV DAEMON_URL=""
ENV TCP_PORT=50001
#ENV SSL_PORT=50002
#ENV SSL_CERTFILE=/srv/server.crt
#ENV SSL_KEYFILE=/srv/server.key
ENV DONATION_ADDRESS=none
ENV BANNER_FILE=/srv/motd
ENV HOST="0.0.0.0"

# Maximum settings - wide open throttle
ENV MAX_SESSIONS=16384
ENV BANDWIDTH_LIMIT=200000000

USER electrumx
VOLUME /srv/db
EXPOSE 50001 50002 51001 51002 8000
CMD ["electrumx_server"]
#ENTRYPOINT ["/entrypoint.sh"]

#electrum_rpc binary is in /usr/loca/bin
