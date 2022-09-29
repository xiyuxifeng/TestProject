# !/bin/bash

lastDate = $1
echo $lastDate
echo "--after='${date}'"
git log  --no-merges --after='${date}' --date=format:'%Y-%m-%d' --pretty=format:'【%an】%d %s' > log.txt
