#!/bin/bash
set -e

# execute scraper
java -p /bin:/nodes:/plugins:/addons --add-modules ALL-MODULE-PATH -m scraper.app "$@"
