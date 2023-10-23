# Usar una imagen base de OpenJDK 11
FROM openjdk:11

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el código fuente de la aplicación al contenedor
COPY . .

# Compilar y empaquetar la aplicación en un archivo JAR
RUN echo "Antes de ejecutar mvnw"
RUN ./mvnw clean install
RUN echo "Después de ejecutar mvnw"

# Exponer el puerto en el que se ejecuta la aplicación Spring Boot (por ejemplo, el puerto 8080)
EXPOSE 8080

# Comando de inicio para ejecutar la aplicación Spring Boot
CMD ["java", "-jar", "app.jar"]
