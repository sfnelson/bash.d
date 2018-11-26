# Open the current git repository in SourceTree

function st() {
  ROOT="$(git rev-parse --show-toplevel)"
  if [ -d "${ROOT}" ]; then
    open -a SourceTree "${ROOT}"
  else
    echo "Not a git repository" 1>&2
    return 1
  fi
}
