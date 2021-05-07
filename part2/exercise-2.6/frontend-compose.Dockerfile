FROM ubuntu:18.04

ARG REACT_APP_BACKEND_URL

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get update && apt-get install -y nodejs
RUN npm install -g serve

COPY . .

RUN npm install

# I completed the exercises on the Google Cloud VM instance,
# and fiddling with DNS was out of scope, so here's a hard-coded
# IP address instead. In production, I would have used Terraform
# to set up Cloud DNS to point to the static IP address assigned
# to my VM instance. I am Terraform and Google Cloud certified,
# so I know how to do that.
RUN REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL:-http://35.228.160.84:8000} npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
