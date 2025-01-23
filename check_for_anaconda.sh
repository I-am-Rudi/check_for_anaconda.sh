#!/bin/bash

# Get the environment names from `conda info --envs` and store them in an array
env_names=($(conda info --envs | awk 'NR>2 {print $1}'))

# Print the environment names
echo "Searching conda environments..."
found_anaconda=false
for env in "${env_names[@]}"; do
    if [[ "$env" == "#" || "$env" == "base" ]]; then
        continue
    fi
    if conda list -n $env | grep -q "anaconda"; then
        echo "Anaconda packages found in environment: $env"
        conda list -n $env | grep "anaconda"
        found_anaconda=true
    fi
done

if [ "$found_anaconda" = false ]; then
    echo "No anaconda channels have been found."
fi