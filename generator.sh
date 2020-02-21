#!/bin/bash

## Script to generate the example directory structure.

LIST=(`find . -type d -not -path "./.git/*" -not -path "./.git" -not -path "./.autogit/*" -not -path "./.autogit" | grep -v '^\.$' | sed -e 's|./||'`)

export PS3='Select an Option>>  '
select topic in ${LIST[*]}; do 
  TOPIC=$topic 
  break 
done 

read -p "Enter Sub-Topic: " subtopic
read -p 'Enter Description: ' description 

mkdir -p $TOPIC/$subtopic 
echo "## $description " >