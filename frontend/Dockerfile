# =============================================================================
# Practical 11: Frontend Containerization Dockerfile
# Multi-Stage Build: Build Vite React bundle and serve via host preview
# =============================================================================

# Stage 1: Build the React Application
FROM node:18-alpine AS build

WORKDIR /app

# Copy dependency manifests
COPY package*.json ./

# Install dependencies inside Linux container environment
RUN npm install

# Copy full frontend application source
COPY . .

# Compile optimized static bundle into /app/dist
RUN npm run build

# Expose Vite Preview server port
EXPOSE 5173

# Launch preview server bound to all network interfaces (0.0.0.0) for container networking
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0", "--port", "5173"]

