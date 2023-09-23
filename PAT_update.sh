#!/usr/bin/env bash
echo "Run Script in repo's home"
echo
echo "Enter old PAT"
read old_pat
echo "Enter new PAT (It's hidden don't worry)"
read -s new_pat
find . -type f -path "*.git/config" -exec sed -i "s|${old_pat}|${new_pat}|" {} \;
