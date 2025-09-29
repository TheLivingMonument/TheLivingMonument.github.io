#!/bin/bash

cd /home/pia-polimi/TheLivingMonument.github.io || exit

git add /home/pia-polimi/TheLivingMonument.github.io/data/livingMonumentData.txt


if ! git diff --cached --quiet; then

    git commit -m "Auto-update CSV files: $(date + '%Y-%m-%d %H:%M:%S')"

    git push origin main
else
    echo "No changes to commit."

fi
