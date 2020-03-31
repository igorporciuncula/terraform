#!/bin/bash 


# Project Allianz Labs

oc new-project allianzlabs \
		--description="Allianz Labs - Devops " \
		--display-name="Allianz Labs"

oc project allianzlabs

# Deploy of Jenkins Master

oc new-app jenkins-ephemeral


