FROM nginx:alpine
EXPOSE 80
HEALTHCHECK --interval=5m --timeout=30s CMD timeout 10s bash -c ':> /dev/tcp/127.0.0.1/80' || exit 1
CMD ["nginx", "-g", "daemon off;"]
