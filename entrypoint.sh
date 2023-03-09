#! /bin/sh
set -e
command_string="ansible-galaxy role import"

if [ -n "${GALAXY_API_TOKEN}" ]; then
  command_string="$command_string --api-key ${GALAXY_API_TOKEN} ${GITHUB_REPOSITORY%/*} ${GITHUB_REPOSITORY#*/}"
fi

echo "Command: $command_string"
eval "$command_string"