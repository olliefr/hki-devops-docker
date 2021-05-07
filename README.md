# hki-devops-docker
My solutions for "DevOps with Docker" course by the University of Helsinki. Year 2021.

_Most_ exercises completed on a Google Cloud Platform VM instance:

* Machine type: `n2d-standard-4`
* OS: Ubuntu 21.04

Some exercises (where noted) completed on Ubuntu 20.04 WSL2 local instance.

## Rootless mode

Starting with Docker v20.10, one can [run Docker as a non-root user][rootless]. This is something I am going to try afte I finish this course. To avoid being distracted though, I opted for using `sudo` for now.

[rootless]: https://docs.docker.com/engine/security/rootless/
