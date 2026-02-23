# Paso 1: Construir la aplicación usando Maven Wrapper
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
# Damos permisos de ejecución al archivo mvnw (vital para Render)
RUN chmod +x mvnw
# Usamos ./mvnw para asegurar que use la versión correcta del proyecto
RUN ./mvnw clean package -DskipTests

# Paso 2: Ejecutar la aplicación
FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/*.jar app.jar
EXPOSE 10000
# Forzamos a que use el puerto 10000 que configuramos en Render
ENTRYPOINT ["java","-jar","app.jar","--server.port=10000"]