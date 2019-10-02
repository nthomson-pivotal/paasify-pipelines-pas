#!/usr/bin/env sh

set -eu
mkdir -p interpolated-templates
/bin/gomplate --input-dir paasify-pipelines-pas/templates \
    -d data=file://$(pwd)/terraform-state/metadata?type=application/json \
    --output-dir interpolated-templates --verbose