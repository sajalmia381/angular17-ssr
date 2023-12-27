## STAGE 1: Build Container
FROM node:18-slim as builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

## STAGE 2: Production container
FROM node:18-slim

# Container Working path 
WORKDIR /app

# Copy builded code
COPY --from=builder /app/dist ./dist

# Expose container port
EXPOSE 8000

# Start the application
CMD [ "node", "dist/angular17-ssr/server/server.mjs" ]