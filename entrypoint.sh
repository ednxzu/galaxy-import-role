#! /bin/sh
set -e
command_string="ansible-galaxy role import"

echo "Github repo owner: ${GITHUB_REPOSITORY_OWNER}"
echo "Github repo name: ${GITHUB_REPOSITORY}"
echo "galaxy_api_key: ${GALAXY_API_TOKEN}"

if [ -n "${GALAXY_API_TOKEN}" ]; then
  command_string="$command_string --api-key ${GALAXY_API_TOKEN} ${GITHUB_REPOSITORY%/*} ${GITHUB_REPOSITORY#*/}"
fi

echo "Command: $command_string"
eval "$command_string"