# !/bin/bash

lastDate=$1
echo $lastDate
git log --no-merges --after=${lastDate} --date=format:'%Y-%m-%d' --pretty=format:'【%an】%d %s' > log.txt
