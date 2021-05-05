This exercise was done on a local Docker instance (not GCP VM), 
because (as far as I could tell, not being proficient in JS) 
the `calculator` component does async requests to the localhost,
with no way to override the URL that it is using: [common.js][js]

js: https://github.com/docker-hy/material-applications/blob/8f70d4e88d18979e86d9213b6d0b8b485471990e/scaling-exercise/calculator/src/commons.js


## UPDATE

Oh, I've just read that this exercise is asking for the _commands_, not to amend the `docker-compose.yml`.

My solution was to start the calculator and load balancer first:

```bash
docker-compose up --build -d calculator load-balancer
```

And then to start (and scale) the `compute` service:

```bash
docker-compose up --build --scale compute=10
```

The complete log is in the [exercise-2.5.log] file.

## Hmmm...

For some reason, although the syntax appear to be correct, the following command did not have the desired effect:

```bash
docker-compose up --build --scale compute=10 calculator load-balancer
```
