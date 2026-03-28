# Multi-stage Dockerfile for ShopOn

# Stage 1: Build the Frontend
FROM node:18-alpine AS client-builder
WORKDIR /app/client
COPY client/package*.json ./
RUN npm install
COPY client/ ./
RUN npm run build

# Stage 2: Runtime
FROM node:18-alpine
WORKDIR /app

# Copy Backend files
COPY server/package*.json ./server/
RUN cd server && npm install --production

COPY server/ ./server/

# Copy Frontend Build from Stage 1
COPY --from=client-builder /app/client/dist ./client/dist

# Set Environment Variables
ENV NODE_ENV=production
ENV PORT=5001

# Expose Port
EXPOSE 5001

# Start the application
CMD ["node", "server/src/index.js"]
