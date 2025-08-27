export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"

# Used to configure test containers to work correctly
export TESTCONTAINERS_HOST_OVERRIDE=127.0.0.1
export TESTCONTAINERS_RYUK_DISABLED=true
