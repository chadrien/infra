## Secrets

The `secrets` volume defined by the `docker-compose.yml` file houses the SSH keys & env vars that the other containers use to access 3rd party systems.

You can use e.g. a base `ubuntu` throw-away container using this volume to "inject" data in the volume.