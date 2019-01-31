#!/bin/bash

# login to Terminus
echo -e "\nLogging into Terminus..."
terminus auth:login --machine-token=${TERMINUS_MACHINE_TOKEN} > /dev/null 2>&1

# Bail on errors
set +ex

terminus backup:create pantheon-weekly-demo-site.live
terminus backup:get pantheon-weekly-demo-site.live
