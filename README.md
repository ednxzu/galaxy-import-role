# Action: import ansible galaxy role
> This repository is only a mirror. Development and testing is done on a private gitea server.

This action imports the repository as an ansible-galaxy role

## Parameters

The following parameters can be used as `step.with` keys:

| Name               | Type   | Default | Required |Description              |
| ------------------ | ------ | ------- |--------- |------------------------ |
| `galaxy-api-key`   | String |         | yes      | Ansible Galaxy API-key  |
| `repository-owner` | String |         | yes      | GitHub Repository Owner |
| `repository-name`  | String |         | yes      | GitHub Repository Name  |

## Example usage

```yaml
jobs:
  publish:
    - name: Checkout Code
      uses: actions/checkout@v3

    - name: Import role to galaxy
      uses: ednxzu/action-galaxy-role-import@v1
      with:
        galaxy-api-key: ${{ secrets.galaxy_api_key }}
        repository-owner: <github_owner_name>
        repository-name: <github_repository_name>
```