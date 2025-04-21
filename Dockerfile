# Usa una imagen ligera de Nginx
FROM nginx:alpine

# Elimina la configuración por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia el contenido del proyecto al directorio de Nginx
COPY . /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# El contenedor ejecutará Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]
