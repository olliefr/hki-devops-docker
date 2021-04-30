FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get update && apt-get install -y nodejs
RUN npm install -g serve

COPY . .

RUN npm install
RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
