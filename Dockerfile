# Dockerfile für statische Website mit Nginx
FROM nginx:latest

# Arbeitsverzeichnis
WORKDIR /usr/share/nginx/html

# Entferne Standard-Nginx-Seiten
RUN rm -rf ./*

# Kopiere die Website-Dateien in das Container-Verzeichnis
COPY polk /usr/share/nginx/html

# Exponiere Port 80
EXPOSE 80

# Starte Nginx
CMD ["nginx", "-g", "daemon off;"]