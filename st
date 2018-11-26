# Open the current git repository in SourceTree

function git-root() {
  PATH=$1
  (
  if [ -d "${PATH}" ]; then
    cd "${PATH}"
  fi
  while [ "$(pwd)" != "/" ] && [ ! -d .git ]; do
    cd ..
  done
  pwd
  )
}

function st() {
  ROOT=$(git-root "$1")
  if [ -d "${ROOT}/.git" ]; then
    open -a SourceTree "${ROOT}"
  else
    echo "Not a git repository" 1>&2
    return 1
  fi
}
