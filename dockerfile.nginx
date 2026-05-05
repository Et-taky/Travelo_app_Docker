# ---------- Base ----------
FROM nginx:1.30-alpine-slim

# Remove default configs
RUN rm -rf /etc/nginx/conf.d/*

# Copy  nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose public port
EXPOSE 80

# Healthcheck
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -qO- http://localhost:80/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]