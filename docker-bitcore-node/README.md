# Bitcoin Core Docker
Bitcoin Core docker implementation

# Configuration
 - Set the IP of mongo container in ```startup-script.sh``` [```docker inspect <mongo-container-id>``` and look for Gateway]
 - Set the IP of bitcoind as well in bitcore.config.json
 - Also specify the default network that should be set on insight UI using config parameters inside ```startup-script.sh```
 - You may also need to edit ```bitcore.config.json``` to specify testnet/mainnet or additional BTC/BCH/ETH chains

# Usage
 - Create a directory named ```mongo_data``` in the current folder i.e., ```docker-bitcore-node```
 - Run ```docker-compose build```
 - Start the docker container using ```docker-compose up -d```

# Note
 - Insight will not work until the Bitcoind node is fully synced
 - v8.2.0 of Bitcore has a bug and hence cannot be used; Therefore use either v8.1.0 or the master.
 - Master commit id when the setup was last verified ```324944c```
