#!/bin/bash

# install pre-commit hooks
pre-commit install

# nixos fix
# see https://github.com/microsoft/vscode-remote-release/issues/11024
git config --global gpg.program "/usr/bin/gpg"
