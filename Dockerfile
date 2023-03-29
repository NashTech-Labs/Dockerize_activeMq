# Use the official OpenJDK image as the base image
FROM openjdk:latest

# Download and extract the ActiveMQ distribution archive
RUN wget https://archive.apache.org/dist/activemq/5.16.3/apache-activemq-5.16.3-bin.tar.gz && \
    tar -xzf apache-activemq-5.16.3-bin.tar.gz && \
    rm apache-activemq-5.16.3-bin.tar.gz && \
    mv apache-activemq-5.16.3 /opt/activemq

# Set the working directory to the ActiveMQ installation directory
WORKDIR /opt/activemq

# Expose the ActiveMQ ports
EXPOSE 61616 8161

# Start ActiveMQ when the container launches
CMD ["bin/activemq", "console"]
