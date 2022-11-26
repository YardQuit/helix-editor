#!/bin/sh

curl -s https://lipsum.co/generated | grep -i 'Lorem Ipsum dolor' | sed 's/<p>//' | sed 's/<\/p>//' | xargs echo | sed 's/<br>/\n/g'
