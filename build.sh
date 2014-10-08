#!/bin/bash
set -ev

sfdeploy=".sfdeploy"
#undeploy="false"
#deploy="false"
runAllTests="true"
#if[ -e "$sfdeploy" ]
#then
	chmod a+x .sfdeploy
	./.sfdeploy
#	if["${TRAVIS_PULL_REQUEST}" = "true"]
#	then
#		if["${sfbuildpulls}" == "true"]
#		then
#			export sfusername="${pullusername}";
#			export sfpassword="${pullpassword}";
#			undeploy="true"
#			deploy="true"
#		else
#			exit 1;
#		fi
#	else
#		if["${TRAVIS_BRANCH}" = "dev"]
#		then
#			export sfusername="${devusername}";
#			export sfpassword="${devpassword}";
#			undeploy="false"
#			deploy="true"
#		else
#			if["${TRAVIS_BRANCH}" = "master"]
#			then
#				export sfusername="${pkgusername}";
#				export sfpassword="${pkgusername}";
#				undeploy="false"
#				deploy="true"
#			else
#				exit 1;
#			fi
#		fi
#	fi
ant deploy undeploy
if [ "${undeploy}" = "true" ]; then
  ant undeploy
fi
if [ "${deploy}" = "true" ]; then
  ant deploy
fi
