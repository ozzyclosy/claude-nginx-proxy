FROM nginx:alpine

# Удаляем стандартную конфигурацию
RUN rm -f /etc/nginx/conf.d/default.conf

# Копируем нашу конфигурацию
COPY nginx.conf /etc/nginx/conf.d/

# Порт 80 открыт по умолчанию в образе nginx
EXPOSE 80

# Запуск nginx в foreground (обязательно для Docker)
CMD ["nginx", "-g", "daemon off;"]
