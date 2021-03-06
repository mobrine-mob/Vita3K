#!/usr/bin/env bash
set -e

git clone https://github.com/Vita3K/Vita3K-builds.git
cp $TRAVIS_BUILD_DIR/build/bin/Vita3K-mac-nightly.zip Vita3K-builds/
cd Vita3K-builds

git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"
git add --all
git commit -m "MacOS build ${TRAVIS_BUILD_NUMBER}"
git push --force "https://${REPO_TOKEN}@github.com/Vita3K/Vita3K-builds.git" > /dev/null 2>&1
