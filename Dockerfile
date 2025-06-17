# Utilise l'image offcielle de Nginx basée sur Alpine Linux
FROM nginx:alpine

# Définit le répertoire de travail dans l'image
WORKDIR /usr/share/nginx/html

# Copie le contenu du site web dans l'image
COPY site-web/ .

# Expose le port 80 
EXPOSE 80

# Utilise la commande par défaut pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]