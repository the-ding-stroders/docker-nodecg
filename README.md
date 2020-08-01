# TDS NodeCG
Docker image for our little community stream's dynamic graphics system. Built using [NodeCG](https://nodecg.com/).

As of this commit it uses a custom Docker image for the base ([synth3tk/nodecg](https://hub.docker.com/r/synth3tk/nodecg)), based on the latest NodeCG master branch Dockerfile. Once those changes are released, this image will be rebased from the official image.

## Bundles Used
The latter two bundles have been forked to provide additional functionality or to bring them up-to-date. Visit each repo to see specific changes.

* [tds-2020-layouts]() - Our custom, made-from-scratch graphics bundle. The whole kit and kaboodle.
* [lfg-twitchapi]() - Currently used for searching the Twitch games API. Future plans include setting channel info from the dashboard.
* [nodecg-tiltify]() - Fetches charity donation information for display in the dashboard and on graphics.

## Run.
`docker run -p 9090:9090 -v [config_directory]:/opt/nodecg/cfg thedingstroders/tds-nodecg`

## Build
One line. For your mind.

`docker build -t thedingstroders/tds-nodecg .`