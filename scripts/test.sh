# !/bin/bash

date = $1
git log  --no-merges --after='$date' --date=format:'%Y-%m-%d' --pretty=format:'【%an】%d %s' > log.txt
