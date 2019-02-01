#!/usr/bin/env bash
shopt -s extglob
set -e

ls -l
mkdir ../tmp/polaris-react
mv ./build/* .
mv !(node_modules) ../tmp/polaris-react
mv ../tmp/polaris-react polaris-react
git clone ssh://git@github.com/Shopify/$1 --depth 1
ls -l
yarn --cwd ./$1 add ../polaris-react
ls -l ./$1/node_modules/@shopify/polaris
