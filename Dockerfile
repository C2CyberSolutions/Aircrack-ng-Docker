FROM debian:wheezy-slim

RUN apt-get update && \
  apt-get install -y aircrack-ng && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aircrack-ng"]

CMD ["-l outkey.txt", "-w wlist1.txt, wlist2.txt", "handshake.pcap"]
