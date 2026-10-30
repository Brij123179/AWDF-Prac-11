# =============================================================================
# Practical 11: Backend Containerization Dockerfile
# Base Image: Lightweight Node.js 18 on Alpine Linux
# =============================================================================

FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package manifests first to leverage Docker layer caching
COPY package*.json ./

# Install application dependencies inside the container Linux environment
RUN npm install --production

# Copy remaining application source code (excluding items in .dockerignore)
COPY . .

# Expose backend REST API port
EXPOSE 5000

# Start Express server
CMD ["node", "server.js"]

