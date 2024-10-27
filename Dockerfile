# Utiliser une image de base Java
FROM openjdk:11-jre-slim

# Ajouter le fichier JAR de votre application
COPY build/libs/spring-petclinic-*.jar app.jar

# Exposer le port de l'application
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app.jar"]
