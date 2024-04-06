#!/bin/bash

# install helm schema gen plugin
helm plugin install https://github.com/KnechtionsCoding/helm-schema-gen.git --version=0.0.10

# install pre-commit hooks
pre-commit install
