FROM maven:3.6.1-jdk-8-alpine

RUN sh -c 'sh mvnw install'

ENTRYPOINT ["mvnw","spring-boot:run","-f","./server/"]  

CMD ["mvn"]
