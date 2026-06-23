# ci-python-runner

Provides a basic, Python container to be used to Python based Concourse tasks

## UV

From 3.13 onwards, the build includes `uv` which can be used to manage
environmental requirements for jobs (i.e. can replace `pip`, `pyenv`, etc)

`uv` allows all requiments/dependencies to be recorded in a file `pyproject.toml`
in your project and then a Python script can be run via `uv run ...` and `uv`
will handle ensuring the environment requirements are met.

[UV Documentation](https://docs.astral.sh/uv/)
