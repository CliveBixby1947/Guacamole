# Use an official Tomcat base image
FROM tomcat:8.5

# Copy your WAR file into the Tomcat webapps directory
COPY target/guacamole-tutorial-1.5.3.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]
