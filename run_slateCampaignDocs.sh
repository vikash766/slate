#!/bin/bash
docker run -d --name slate --network=cbnet -p 4567:4567 -v $(pwd)/source:/srv/slate/source slatedocs/slate serve