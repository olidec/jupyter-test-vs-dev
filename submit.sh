#!/bin/bash

# Stop on any error
set -e

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
COMMIT_MSG="Submission at $TIMESTAMP"

# Stage all changes
git add .

# Commit with timestamp
git commit -m "$COMMIT_MSG"

# Push to GitHub
git push

# Done message
echo "✅ Submitted successfully!"
echo "📅 Commit message: $COMMIT_MSG"
echo "💡 You may now close VS Code or run 'Dev Containers: Reopen Locally' to stop the container."

