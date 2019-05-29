FROM maven:3.6.1-jdk-8-alpine

COPY . .

RUN sh -c 'apt-get update'
RUN sh -c 'apt-get install iputils-ping'
RUN sh -c 'ping -c 1 db'
RUN echo $(ls -1)
RUN sh -c 'unset MAVEN_CONFIG && sh ./mvnw install'

EXPOSE 8080

ENTRYPOINT ["mvnw","spring-boot:run","-f","./server/"]  

CMD ["mvn"]
