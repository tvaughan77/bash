
#
# Assumes you've done the PR merge on github while sitting in a branch, then
# switches back to master, pulls the latest and deletes the old branch
#
function closeBranch() {
  currentBranch=`git rev-parse --abbrev-ref HEAD`
  if [[ "$currentBranch" == 'master' ]]; then
    echo "Don't try to close the master branch, dummy."
  else
    git checkout master
    git pull
    git branch -D $currentBranch
  fi
}

