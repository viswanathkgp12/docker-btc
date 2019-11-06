# Docker-btc
A complete end-to-end setup of docker Insight API with v8 of Bitcore.
In the current setup, only integration with ```bitcoind``` is shown. But the same can be extended to Bitcoin Cash, ETH as well.

# Introduction
V8 of Bitcore requires a full node of the corresponsing blockchain before you run insight API. Therefore this repo has a separate ```bitcoind``` folder which enables you to run a full node. Only when the full node is in fully sync with blockchain, start the ```bitcore``` image as well.

## Steps
 - Setup ```bitcoind full node``` using the guide [here](docker-bitcoind/README.md)
 - Setup a ```bitcore node``` using the guide [here](docker-bitcore-node/README.md)
 - After these, you will have ```bitcoind``` RPC on port ```8332```; ```bitcore-node``` REST API on port ```3000``` and ```insight-ui``` on port ```8200```
