#!/bin/bash

LIB_NAME=$1

if [ -z "$LIB_NAME" ]; then
  echo "❌ Missing lib name. Usage: npm run publish-lib -- <lib-name>"
  exit 1
fi

echo "📦 Building and publishing $LIB_NAME..."

nx build $LIB_NAME &&
cp .npmrc dist/libs/$LIB_NAME/.npmrc &&
cd dist/libs/$LIB_NAME &&
npm publish
