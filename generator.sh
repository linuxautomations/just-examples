#!/bin/bash

## Script to generate the example directory structure.

LIST=(`find . -type d -not -path "./.git/*" -not -path "./.git" -not -path "./.autogit/*" -not -path "./.autogit" | grep -v ''`)