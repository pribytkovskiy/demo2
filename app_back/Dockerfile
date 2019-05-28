FROM maven:3.6.1-jdk-8-alpine

COPY . .
RUN sh -c 'ls -la'
RUN sh -c 'unset MAVEN_CONFIG && sh ./mvnw install'

ENTRYPOINT ["mvnw","spring-boot:run","-f","./server/"]  

CMD ["mvn"]
