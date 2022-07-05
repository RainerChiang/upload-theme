#!/usr/bin/env sh

set -e

rm -r public/*
echo "Done: rm -r public/* \n"

hugo
echo "Done: hugo \n"

cd public/
git add .
git commit -m "Blog update at $(date)"
echo "\n[gh-pages Done]: git commit, Blog update at $(date) \n"

git push -u origin gh-pages
echo "\n[gh-pages Done]: git push -u origin gh-pages"

cd ..
git add public/
git commit -m "update public/"
echo "\n[Public Done]: Update Public/"

git push -u origin main
echo "\n[Public Done]: git push -u origin main\n"
