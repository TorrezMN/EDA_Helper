#!/bin/bash


echo "Patching version."
poetry version patch



if [[ $# -gt 0 ]]; then  # Check if any arguments are passed
    git add *
    git commit -m "$1"  # Print the first argument (the passed string)
    git push
else
    git add *
    git commit -a --allow-empty-message -m ''
    git push
fi

