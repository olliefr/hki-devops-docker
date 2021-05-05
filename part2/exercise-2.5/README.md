This exercise was done on a local Docker instance (not GCP VM), 
because (as far as I could tell, not being proficient in JS) 
the `calculator` component does async requests to the localhost,
with no way to override the URL that it is using: [common.js][js]

js: https://github.com/docker-hy/material-applications/blob/8f70d4e88d18979e86d9213b6d0b8b485471990e/scaling-exercise/calculator/src/commons.js
