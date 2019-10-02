# Docker-btc
A complete end-to-end setup of docker Insight API with v8 of Bitcore.
In the current setup, only integration with ```bitcoind``` is shown. But the same can be extended to Bitcoin Cash, ETH as well.

## Steps
 - Setup ```bitcoind full node``` using the guide [here](docker-bitcoind/README.md)
 - Setup a ```bitcore node``` using the guide [here](docker-bitcore-node/README.md)
 - After these, you will have ```bitcoind``` RPC on port ```8332```; ```bitcore-node``` REST API on port ```3000``` and ```insight-ui``` on port ```8200```
