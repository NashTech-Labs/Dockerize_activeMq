# Dockerize_activeMq

Build Docker image using-

docker build -t myactivemq .

And run using -

docker run -p 61616:61616 -p 8161:8161 myactivemq

In this example, we're downloading and extracting the ActiveMQ distribution archive during the Docker image build process. If you want to use a different version of ActiveMQ, you'll need to update the wget command to point to the appropriate distribution archive URL.
