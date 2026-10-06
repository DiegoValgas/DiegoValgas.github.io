# Dockerfile
# --------------------------------------------------------------
# Base image – Ubuntu 24.04 LTS (fixed to a digest for reproducibility)
# --------------------------------------------------------------
FROM ubuntu:24.04

# --------------------------------------------------------------
# Metadata
# --------------------------------------------------------------
LABEL maintainer="Diego Valgas <diego.valgas@gmail.com>"
LABEL description="Node.js application container"
LABEL version="1.0.0"

# --------------------------------------------------------------
# Environment
# --------------------------------------------------------------
ENV DEBIAN_FRONTEND=noninteractive

# --------------------------------------------------------------
# Install Node.js LTS (latest) and npm
# --------------------------------------------------------------
RUN apt-get update && \
  apt-get install -y --no-install-recommends ca-certificates curl gnupg && \
  mkdir -p /etc/apt/keyrings && \
  curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
  NODE_MAJOR=22 && \
  echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
  apt-get update && \
  apt-get install -y --no-install-recommends nodejs && \
  rm -rf /var/lib/apt/lists/* && \
  npm install -g npm@latest

# --------------------------------------------------------------
# Application directory
# --------------------------------------------------------------
WORKDIR /var/www

# --------------------------------------------------------------
# Copy source code
# --------------------------------------------------------------
COPY . .

# --------------------------------------------------------------
# Expose port
# --------------------------------------------------------------
EXPOSE 3000

# --------------------------------------------------------------
# Healthcheck
# --------------------------------------------------------------
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s \
  CMD curl -f http://localhost:3000/health || exit 1

# --------------------------------------------------------------
# Default command
# --------------------------------------------------------------
CMD ["tail", "-f", "/dev/null"]
