#!/bin/bash

home_dir=$(getent passwd "$(id -u)" | cut -d: -f6)
cd "$home_dir"
