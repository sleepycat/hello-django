# Hello Django

This is hello-world style Django app that I'm using to explore how to containerize and run Django apps.

That doesn't sound like much but in 2022 there is quite a bit to explore:

* How [PEP 582](https://peps.python.org/pep-0582/) and [PDM](https://pdm.fming.dev) are simplifying dependency management
* The use of minimalist docker images ([Chainguard](https://github.com/chainguard-images/python), [Distroless](https://github.com/GoogleContainerTools/distroless)) to reduce attack surface
* Scaling via Kubernetes pods instead of Gunicorn workers
* [Structured logging](https://newrelic.com/blog/how-to-relic/python-structured-logging)
* [12 Factor app](https://12factor.net/logs) style logging to stdout
* Vendor neutral [observability with Opentelemetry](https://opentelemetry-python.readthedocs.io/en/latest/examples/django/README.html)
* [Reproducable builds](https://reproducible-builds.org/)
* Zero downtime migrations
* Running the app and migrations with appropriate privileges for each
* [SBOMs](https://github.com/sigstore/cosign) for all of it
* [Using Jemalloc](https://nullonerror.org/2022/03/16/add-jemalloc-to-your-python-docker-images/) to reduce memory usage.
* Restrict process with [Kubernetes SecurityContext](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod)
* Source code scanning/linting (bandit? Pylint? [Ruff](https://beta.ruff.rs/docs/)?) as far left as possible ([as-I-type](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff) vs pre-commit vs CI)
* Figure out what to do with python bytecode. [Complile everything](https://docs.python.org/3/library/compileall.html) or get rid of *.pyc?
* Dealing with the catch 22 of [needing environmental variables in the build process](https://stackoverflow.com/questions/59719175/where-to-run-collectstatic-when-deploying-django-app-to-heroku-using-docker)
