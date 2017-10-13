# Ubuntu 14.04 LTS (Trusty Tahr)
FROM ubuntu:16.04

RUN apt-get update -y && \
apt-get upgrade -y
RUN apt-get install -y build-essential libboost-all-dev libssl-dev

# copy the testnet-box files into the image
ADD . /root/ducatus-seeder
WORKDIR /root/ducatus-seeder

RUN make

# expose two rpc ports for the nodes to allow outside container access
EXPOSE 53
CMD ["/bin/bash"]
