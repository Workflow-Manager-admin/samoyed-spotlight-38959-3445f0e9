#!/bin/bash
cd /home/kavia/workspace/code-generation/samoyed-spotlight-38959-3445f0e9/samoyed_spotlight
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

