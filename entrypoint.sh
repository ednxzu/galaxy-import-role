#! /bin/sh
set -e
command_string="ansible-galaxy role import"

echo "Github repo owner: ${GITHUB_REPOSITORY_OWNER}"
echo "Github repo name: ${GITHUB_REPOSITORY}"
echo "galaxy_api_key: ${GALAXY_API_KEY}"
echo "input_galaxy-api-key ${INPUT_GALAXY-API-KEY}"

if [ -n "${INPUT_GALAXY-API-KEY}" ]; then
  command_string="$command_string --api-key ${INPUT_GALAXY-API-KEY} ${GITHUB_REPOSITORY_OWNER} ${GITHUB_REPOSITORY}"
fi

echo "Command: $command_string"
eval "$command_string"