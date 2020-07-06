FROM openjdk:13

COPY scraper /scraper-src
WORKDIR /scraper-src
RUN /scraper-src/gradlew build
RUN unzip /scraper-src/application/build/distributions/scraper*.zip -d /scraper-src/out
RUN rm /srcaper-src/out/scraper*/lib/test-framework*.jar
RUN cp /scraper-src/out/scraper*/lib/*.jar /bin
WORKDIR /rt
RUN rm -rf /scraper-src
COPY entry.sh /bin/
ENTRYPOINT ["entry.sh"]
