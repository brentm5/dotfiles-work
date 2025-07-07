# Used to manage AWS profiles in a user-friendly way.
# This sets default ENV vars for other functions to use, and loads the profile on terminal initialization.

export AWS_PROFILE_LIST="${HOME}/.aws/profiles.list"
export AWS_PROFILE_FILE="${HOME}/.aws/current-profile"

if [ -f "$AWS_PROFILE_FILE" ]; then
  export AWS_PROFILE="$(cat "${AWS_PROFILE_FILE}")"
fi
