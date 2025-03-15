FROM node:22-alpine

WORKDIR /app

# Install dependencies and tools
RUN apk add --no-cache git bash curl

# Install pnpm globally and configure it properly
RUN npm install -g pnpm && \
    mkdir -p /root/.local/share/pnpm && \
    echo 'export PNPM_HOME="/root/.local/share/pnpm"' >> /root/.profile && \
    echo 'export PATH="$PNPM_HOME:$PATH"' >> /root/.profile

# Make PNPM_HOME persistent
ENV PNPM_HOME="/root/.local/share/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

# Install Quasar CLI globally
RUN pnpm add -g @quasar/cli

# Set environment variables
ENV NODE_ENV=development
ENV HOST=0.0.0.0
ENV PORT=8080
ENV QUASAR_DEV_SERVER_PUBLIC=0.0.0.0

EXPOSE 8080 9000

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:8080 || exit 1
