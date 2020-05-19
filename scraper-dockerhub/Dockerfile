FROM openjdk:13

COPY scraper /scraper-src
WORKDIR /scraper-src
RUN /scraper-src/gradlew bundleFatJar
RUN cp /scraper-src/build/libs/scraper*bundled.jar /bin/scraper.jar
WORKDIR /rt
RUN rm -rf /scraper-src
COPY entry.sh /bin/
ENTRYPOINT ["entry.sh"]
