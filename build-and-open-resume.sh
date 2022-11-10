#!/bin/bash

# This script is MacOS specific, and requires entr to run

set -u

echo "Watching for changes to resume template, details, or build file."
echo "PDF output will open on first saved change."

find . \( -name "details.yml" -or -name "template.tex" -or -name "makefile" \) -d 1 | entr -p -c -s 'make && rm tim-hordern-resume.pdf && cp output.pdf tim-hordern-resume.pdf && open tim-hordern-resume.pdf'
