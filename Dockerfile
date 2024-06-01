# Use uma imagem base do OpenJDK
FROM openjdk:17-jdk-alpine

# Configure o diretório de trabalho
WORKDIR /app

# Copie o build do Gradle para o container
COPY build/libs/*.jar app.jar

# Exponha a porta que a aplicação irá usar
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
