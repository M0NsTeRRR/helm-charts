#!/bin/bash

# install helm-docs
go install github.com/norwoodj/helm-docs/cmd/helm-docs@latest

# nixos fix
# see https://github.com/microsoft/vscode-remote-release/issues/11024
git config --global gpg.program "/usr/bin/gpg"
