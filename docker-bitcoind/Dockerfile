FROM ubuntu:18.04

# Install essentials
RUN apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y libtool autotools-dev autoconf \
    && apt-get install -y libssl-dev \
    && apt-get install -y libboost-all-dev

RUN apt-get install -y software-properties-common

# Install Bitcoin    
RUN add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update

RUN apt-get install -y bitcoind

# Create data directory and add config.
RUN mkdir -p /bitcoin
# Link so that bitcoin-cli works properly with config file
RUN ln -sfn /bitcoin /.bitcoin
COPY bitcoind.conf /bitcoin

WORKDIR /bitcoin

VOLUME /bitcoin

# 8332  - RPC Port
# 8333  - P2P Server Port
# 28332 - ZeroMQ Port
EXPOSE 8332 8333 28332

CMD ["bitcoind", "-conf=/bitcoin/bitcoind.conf", "-datadir=/bitcoin"]