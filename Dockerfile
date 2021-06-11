FROM ubuntu:16.04

# Based on Cantaloupe image by Richard Rodgers <http://orcid.org/0000-0003-1412-5595>

ENV CANTALOUPE_VERSION 3.3

RUN apt-get update -y && apt-get install -y default-jdk \
    default-jre \
    imagemagick \
    wget \
    unzip

RUN wget https://github.com/medusa-project/cantaloupe/releases/download/v${CANTALOUPE_VERSION}/Cantaloupe-${CANTALOUPE_VERSION}.zip \
    && unzip Cantaloupe-${CANTALOUPE_VERSION}.zip \
    && rm Cantaloupe-${CANTALOUPE_VERSION}.zip

COPY cantaloupe.properties Cantaloupe-${CANTALOUPE_VERSION}/

WORKDIR Cantaloupe-${CANTALOUPE_VERSION}

RUN mv Cantaloupe-${CANTALOUPE_VERSION}.war Cantaloupe.war

EXPOSE 8182

CMD ["java", "-Dcantaloupe.config=cantaloupe.properties", "-Xmx1200m", "-jar", "Cantaloupe.war"]
