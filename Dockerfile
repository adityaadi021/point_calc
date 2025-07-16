# Use nginx to serve static HTML
FROM nginx:alpine
COPY sort_by_point.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
