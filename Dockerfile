FROM tomcat:9.0-jdk11

# Arguments to inject from Jenkins
ARG APP_VERSION
ARG GIT_COMMIT
ARG BUILD_DATE

# Metadata for traceability
LABEL app.version="${APP_VERSION}" \
      app.commit="${GIT_COMMIT}" \
      app.build_date="${BUILD_DATE}"

# Copy WAR
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
