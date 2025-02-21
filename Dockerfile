# Dockerfile
FROM node:18 as build

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Build the app
COPY . .
RUN npm run build

# Stage 2
FROM nginx:latest
COPY --from=build /app/dist/my-app /usr/share/nginx/html