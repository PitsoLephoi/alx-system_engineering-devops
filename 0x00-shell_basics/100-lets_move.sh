#!/bin/bash

mkdir -p /tmp/u  # Create /tmp/u directory if it doesn't exist

find . -maxdepth 1 -type f -name '[A-Z]*' -exec mv -t /tmp/u {} +
