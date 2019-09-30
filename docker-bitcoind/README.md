# Bitcoind Docker
Bitcoind docker implementation

# Configuration
Depending on whether you want to run a testnet/mainnet node, edit the ```bitcoind.conf``` file.
Change ```testnet=1``` for running a testnet node; Else set ```testnet=0``` for a mainnet node

# Usage
- Clone this repository in your home directory with ```git clone```
- Create a directory named ```bitcoin``` in the current folder
- Copy ```bitcoind.conf``` to the newly created ```bitcoin``` directory
- Run ```docker-compose build```
- Start the docker container using ```docker-compose up -d```
- Verify the Blockchain Configuration with the following curl command:
```
    curl --user bitcoin:password123 --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockchaininfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8332/
```
- You should see a response similar to the one given below:
```
    {"result":{"chain":"test","blocks":0,"headers":449997,"bestblockhash":"000000000933ea01ad0ee984209779baaec3ced90fa3f408719526f8d77f4943","difficulty":1,"mediantime":1296688602,"verificationprogress":2.318174608165647e-08,"initialblockdownload":true,"chainwork":"0000000000000000000000000000000000000000000000000000000100010001","size_on_disk":293,"pruned":false,"softforks":[{"id":"bip34","version":2,"reject":{"status":false}},{"id":"bip66","version":3,"reject":{"status":false}},{"id":"bip65","version":4,"reject":{"status":false}}],"bip9_softforks":{"csv":{"status":"defined","startTime":1456790400,"timeout":1493596800,"since":0},"segwit":{"status":"defined","startTime":1462060800,"timeout":1493596800,"since":0}},"warnings":""},"error":null,"id":"curltest"}
```
 - Verify Block 0's Blockhash as well:
 ```
    curl --user bitcoin:password123 --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhash", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:8332/
 ```
 - You should see ```000000000933ea01ad0ee984209779baaec3ced90fa3f408719526f8d77f4943``` for testnet; ```000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f``` for mainnet
