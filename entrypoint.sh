#! /bin/sh
set -e
ansible_galaxy_command_string="ansible-galaxy role import"
command_string="$ansible_galaxy_command_string --api-key ${GALAXY_API_TOKEN} ${GALAXY_REPOSITORY_OWNER} ${GALAXY_REPOSITORY_NAME}"

echo "Command: $command_string"
eval "$command_string"
