#!/bin/bash
set -e

# compile nodes with api and annotations
mkdir -p /tmp/nodes/scraper
mkdir -p /nodes
javac /custom/*.java -cp /bin/scraper.jar

# put them into the 'scraper' package for discovery
mv /custom/*.class /tmp/nodes/scraper
jar cvf /tmp/nodes/nodes.jar -C /tmp/nodes .
rm -rf /tmp/nodes/scraper

# move into discoverable location
mv /tmp/nodes/nodes.jar /nodes/

# execute scraper
java -cp /bin/scraper.jar:/nodes/*:/plugins/*:/addons/* scraper.app.Scraper
