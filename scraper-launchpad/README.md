# Scraper Launchpad Deployment

Scraper can be found at [this Launchpad](https://launchpad.net/~albsch/+archive/ubuntu/scraper)

Packages:

* `scraper`: Core runnable, `scraper` main executable at `/usr/bin/scraper`
* `scraper-plugins-*`: Scraper addons which enhance functionality of the core
* `scraper-nodes-*`: Different nodes which can be used in a workflow separated by category


### Updating a Package

1. Build a new runnable jar for the package you want to update, strip the version number (e.g. `scraper-plugins-terminal-0.1.0.jar` -> `scraper-plugins-terminal.jar`)
2. Place the jar in its appropriate folder (core runnable into `core`, node category jar into the node category folder etc.)
3. Update the following files: `changelog`, `files`
4. Run `debuild -S`
5. Run `dput ppa:albsch/scraper ...source.changes` and wait until package is published

