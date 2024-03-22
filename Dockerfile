FROM nginx:alpine
EXPOSE 80
HEALTHCHECK --interval=5m --timeout=30s CMD curl -f http://localhost:80/ || exit 1
CMD ["nginx", "-g", "daemon off;"]
