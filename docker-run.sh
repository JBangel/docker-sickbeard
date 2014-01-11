#!/usr/bin/env bash

docker run -d \
  -v /mnt/storage/media/tv:/srv/tv \
  -v /opt/sickbeard:/srv/sickbeard \
  -p 8081:8081 \
  -name="sickbeard" \
  jbangel/sickbeard --nolaunch --datadir=/srv/sickbeard
