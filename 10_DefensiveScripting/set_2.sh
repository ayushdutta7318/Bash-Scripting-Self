# Set:

set -e #script stop if any command fail
set -u #script stop if var is undefined

command fail

var=

echo "we should exit"
exit 1;