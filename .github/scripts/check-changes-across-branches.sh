# =============================================================================
#
# This script checks to see if two git branches are different and returns 0 if
# they are the same, and 1 if they are different.
# The script takes in the path to the repository as argument 1, along with the
# two branches to compare as arguments 2 and 3.
# 
# =============================================================================

cd $1
git status >/dev/null
DIFF=$(git diff $2 $3) >/dev/null

if [ -z "$DIFF" ] ; then
	echo 0
else
	echo 1
fi
