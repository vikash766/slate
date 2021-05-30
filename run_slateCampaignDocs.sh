#!/bin/bash
docker stop slate
docker rm slate
docker run -d --name slate --network=cbnet \
-p 4567:4567 \
-v $(pwd)/source:/srv/slate/source \
-v $(pwd)/build:/srv/slate/build \
slatedocs/slate serve
