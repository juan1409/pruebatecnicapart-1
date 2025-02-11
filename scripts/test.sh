#!/bin/bash
echo "Running unit tests..."
if [[ $((5 * 10)) -eq 50 ]]; then
  echo "Test passed: Multiplication is correct!"
  exit 0
else
  echo "Test failed: Incorrect result."
  exit 1
fi
