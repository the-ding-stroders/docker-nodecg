FROM synth3tk/nodecg:v1.6.1

USER nodecg

RUN cd bundles && \
    git clone https://github.com/the-ding-stroders/tds-2020-layouts && \
    cd tds-2020-layouts && yarn install && cd .. && \
    git clone https://github.com/the-ding-stroders/lfg-twitchapi && \
    cd lfg-twitchapi && yarn install && cd .. && \
    git clone https://github.com/the-ding-stroders/nodecg-tiltify && \
    cd nodecg-tiltify && yarn install && \
    yarn cache clean