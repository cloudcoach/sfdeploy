#!/bin/bash
set -ev

export sfusername="${devusername}"
export sfpassword="${devpassword}"

if [ "${undeploy}" = "true" ]; then
  ant undeploy
fi
if [ "${deploy}" = "true" ]; then
  ant deploy
fi 