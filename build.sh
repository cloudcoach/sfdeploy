#!/bin/bash
set -ev
if [ "${undeploy}" = "true" ]; then
  ant undeploy
fi
if [ "${deploy}" = "true" ]; then
  ant deploy
fi
