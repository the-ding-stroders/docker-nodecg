FROM synth3tk/nodecg:v1.6.1

USER nodecg

RUN cd /opt/nodecg/bundles && \
    git clone https://github.com/the-ding-stroders/tds-2020-layouts.git && \
    cd tds-2020-layouts && yarn install && yarn build && cd .. && \
    git clone https://github.com/the-ding-stroders/lfg-twitchapi.git && \
    cd lfg-twitchapi && yarn install && cd .. && \
    git clone https://github.com/the-ding-stroders/nodecg-tiltify.git && \
    cd nodecg-tiltify && yarn install && \
    yarn cache clean