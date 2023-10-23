# Usamos una imagen base de OpenJDK 11
FROM openjdk:11

# Establecemos un directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo JAR de la aplicación al directorio de trabajo
COPY target/spring-boot-docker.jar app.jar

# Exponemos el puerto 8080 (si es necesario)
EXPOSE 8080

# Definimos el comando de entrada para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]
