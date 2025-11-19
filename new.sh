#!/usr/bin/env bash

# Usage:
#   ./new.sh problem-name optional/subfolder

name="$1"
folder="$2"

if [ -z "$name" ]; then
  echo "Error: name is required"
  exit 1
fi

# Resolve repo root directory (directory where script lives)
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Target directory logic
if [ -n "$folder" ]; then
  target_dir="$repo_root/$folder"
  mkdir -p "$target_dir"
else
  target_dir="$repo_root"
fi

md="$target_dir/$name.md"
py="$target_dir/$name.py"

# Create .md file if missing and add template
if [ ! -f "$md" ]; then
  echo -e "# Problem\n\n# Journal\n" > "$md"
fi

# Create .py file if missing and add template
if [ ! -f "$py" ]; then
  echo -e "# Brute Force\n\n# Optimal\n" > "$py"
fi

echo "Created: $md and $py"
