# ci-python-runner
Provides a Docker image for python tasks

## Virtualenv Notes

Form version `3.13` onwards, this image will be based on the current `ci-core-runtime` image,
which is itself based on `Amazon Linux 2023`. Amazon Linux has Python 3.9 installed as the
'system' Python and whilst other versions are officially packaged and available to install, it
is heavily discouraged to modify the system symlinks to point to them.

To ease use of the non-system Python package the container does the following:

* installs `python3.13` and `python3.13-pip`
* creates an `/opt/python` directory
* creates a `3.13` virtualenv within it
* sets a `VIRTUAL_ENV` variable pointing to this location
* updates the `PATH` to search under `$VIRTUAL_ENV/bin` for Python binaries

This works as long as `PATH` is set appropriately. Care should be taken in cases where sub-shells
maybe created without the updated `PATH` being maintained.

