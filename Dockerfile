FROM java:8

MAINTAINER Ming Gong <ming@neuron.sg>

ENV TZ=Asia/Singapore
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY dd-java-agent.jar /app/dd-java-agent.jar
