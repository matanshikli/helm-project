FROM openjdk:8 as builder
WORKDIR /app
COPY . .
RUN chmod +x ./mvnw
RUN ./mvnw package

FROM openjdk:8
WORKDIR /code
COPY --from=builder /app/target/*.jar /code/
CMD ["sh", "-c", "java -jar /code/*.jar"]
