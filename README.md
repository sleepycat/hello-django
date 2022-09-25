# Hello Django

This is hello-world style Django app that I'm using to explore how to containerize and run Django apps.

That doesn't sound like much but in 2022 there is quite a bit to explore:

* [PEP 582](https://peps.python.org/pep-0582/) and [PDM](https://pdm.fming.dev) are simplifying dependency management
* Minimalist docker images ([Chainguard](https://github.com/chainguard-images/python), [Distroless](https://github.com/GoogleContainerTools/distroless)) are reducing attack surface
* Scaling via Kubernetes pods instead of Gunicorn workers
* [Structured logging](https://newrelic.com/blog/how-to-relic/python-structured-logging)
* [12 Factor app](https://12factor.net/logs) logging to stdout
* Vendor neutral [observability with Opentelemetry](https://opentelemetry-python.readthedocs.io/en/latest/examples/django/README.html)
* [Reproducable builds](https://reproducible-builds.org/)
* Zero downtime migrations
* Running the app and migrations each with appropriate privileges
* [SBOMs](https://github.com/sigstore/cosign) for all of it
* [Using Jemalloc](https://nullonerror.org/2022/03/16/add-jemalloc-to-your-python-docker-images/) to reduce memory usage.

