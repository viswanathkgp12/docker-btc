#!/bin/bash
export DB_HOST=172.17.0.1
export DB_PORT=3503

# Configurables packages/insight-previous/src/providers/default/default.ts
# ENV=dev NETWORK=testnet CHAIN=BTC npm -prefix=./packages/insight-previous run ionic:serve --nobrowser & npm -prefix=./packages/bitcore-node start

# Do not set to prod; packages/insight-previous/src/providers/api/api.ts#L21
ENV=dev NETWORK=testnet CHAIN=BTC API_PREFIX=http://127.0.0.1:8200/api npm -prefix=./packages/insight run ionic:serve --nobrowser & npm -prefix=./packages/bitcore-node start