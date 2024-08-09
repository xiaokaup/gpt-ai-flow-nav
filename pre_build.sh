#!/bin/bash

echo "VERCEL_GIT_COMMIT_REF: $VERCEL_GIT_COMMIT_REF"

if [[ "$VERCEL_GIT_COMMIT_REF" == "gh-pages" ]] ; then
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi

echo "✅ - Build proceeding for branch: $VERCEL_GIT_COMMIT_REF"