FROM maven:3.6.1-jdk-8-alpine

COPY . .

#RUN sh -c 'ping -c 1 db'
RUN sh -c 'unset MAVEN_CONFIG && sh ./mvnw install'

EXPOSE 8080

ENTRYPOINT ["mvnw","spring-boot:run","-f","./server/"]  

CMD ["mvn"]
