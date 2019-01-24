#!/bin/bash
docker container run --name electrumx -d \
-v /mnt/data/electrumx:/srv/db \
-p 50001:50001 -p 50002:50002 -p 8333:8333 \
-p 51001:51001 -p 51002:51002 \
-e COIN=BitcoinCashABC \
-e DAEMON_URL=http://user:pass@ip:port \
electrumx
