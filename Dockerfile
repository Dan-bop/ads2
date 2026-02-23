# Paso 1: Construir la aplicación
FROM maven:3.8.5-openjdk-17 AS build
# Creamos una carpeta de trabajo limpia
WORKDIR /app
# Copiamos los archivos ahí
COPY . .
# Damos permisos y compilamos
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Paso 2: Ejecutar la aplicación
FROM openjdk:17.0.1-jdk-slim
WORKDIR /app
# Copiamos el resultado del paso anterior
COPY --from=build /app/target/*.jar app.jar
EXPOSE 10000
ENTRYPOINT ["java","-jar","app.jar","--server.port=10000"]