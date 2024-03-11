#!/bin/bash

# Add all changes in the main repository
git add .

# Commit changes in the main repository
git commit -m "Update main repository"

# Update submodules
git submodule update --remote

# Add all changes in submodules
git submodule foreach git add .

# Commit changes in submodules
git submodule foreach 'git commit -m "Update submodule" || :'

# Push changes
git push origin <your-branch-name>
