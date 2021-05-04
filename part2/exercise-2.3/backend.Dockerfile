FROM golang:1.16

ARG REQUEST_ORIGIN

WORKDIR /myapp

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN go build

EXPOSE 8000
ENV PORT=8000

# I completed the exercises on the Google Cloud VM instance,
# and fiddling with DNS was out of scope, so here's a hard-coded
# IP address instead. In production, I would have used Terraform
# to set up Cloud DNS to point to the static IP address assigned
# to my VM instance. I am Terraform and Google Cloud certified,
# so I know how to do that.
ENV REQUEST_ORIGIN=${REQUEST_ORIGIN:-http://35.228.160.84:5000}

ENTRYPOINT ["/myapp/server"]

# Also, in production, I would have used a two-staged build:
#   1. Build using golang image
#   2. Deploy the static executable into a distroless image from Google
#
# Exactly as we did here:
#   https://github.com/valocode/bubbly/blob/9db1c480ca398a155c2b0e1818d356b4542e65a8/Dockerfile
