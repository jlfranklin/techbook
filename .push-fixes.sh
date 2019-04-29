if [[ $(git log -1 --pretty=%B | grep -Fq 'Automatic commit') ]]; then
  echo 'Previous commit was automatic, so skip pushing fixes.'
  exit 0
fi

# Run once to fix content as needed - redirect output to avoid double output
gulp &> /dev/null

# Detect if there are any changes
if [[ $(git status --porcelain) ]]; then
  # Bail if we are working with a fork (we won't have perms to push to branches in forks)
  if [[ "${TRAVIS_PULL_REQUEST_SLUG,,}" != "civicactions/handbook" ]]; then
    echo "Automatic fixes doesn't work with forked repositories (only civicactions/handbook branch PRs)."
    echo "Apply the change below and resubmit:"
    git diff
    exit 1
  fi
  # Everything looks OK, commit and push the change
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
  git commit -a -m"Automatic commit to fix markdown formatting for build: ${TRAVIS_BUILD_NUMBER}."
  git remote add pr "https://${GH_TOKEN}@github.com/${TRAVIS_PULL_REQUEST_SLUG}"
  git push pr "HEAD:${TRAVIS_PULL_REQUEST_BRANCH}"
fi
