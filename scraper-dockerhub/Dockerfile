FROM openjdk:12

COPY scraper /scraper-src
WORKDIR /scraper-src
RUN /scraper-src/gradlew bundleFatJar
RUN cp /scraper-src/build/libs/scraper*bundled.jar /bin/scraper.jar
WORKDIR /rt
RUN rm -rf /scraper-src
ENTRYPOINT ["java", "-cp", "/bin/scraper.jar:/nodes/*:/plugins/*:/addons/*", "scraper.app.Scraper"]
