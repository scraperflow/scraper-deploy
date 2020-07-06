FROM openjdk:13

COPY scraper /scraper-src
WORKDIR /scraper-src
RUN /scraper-src/gradlew disttar
RUN mkdir -p /scraper-src/out
RUN tar xf /scraper-src/application/build/distributions/scraper*.tar -C /scraper-src/out
RUN rm /scraper-src/out/scraper*/lib/test-framework*.jar
RUN cp /scraper-src/out/scraper*/lib/*.jar /bin
WORKDIR /rt
RUN rm -rf /scraper-src
COPY entry.sh /bin/
ENTRYPOINT ["entry.sh"]
