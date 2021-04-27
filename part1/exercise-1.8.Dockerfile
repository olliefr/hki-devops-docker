FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl

WORKDIR /usr/local/bin

COPY exercise-1.8.curler-loop.sh .

CMD ./exercise-1.8.curler-loop.sh
