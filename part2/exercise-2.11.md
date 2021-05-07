# Exercise 2.11

I'm using a multi-stage Docker build for my side project Temposaurus. It is a small REST client for Tempo written in Go.

The `Dockerfile` uses official Goland image to build a binary which is then deployed onto the `distroless` image.

* [GitHub repo](https://github.com/olliefr/temposaurus)
* [Dockerfile](https://github.com/olliefr/temposaurus/blob/2cb99417c40b15f07b878c1587b12734ec627765/Dockerfile)
* [Docker Hub](https://hub.docker.com/r/olliefr/temposaurus)
