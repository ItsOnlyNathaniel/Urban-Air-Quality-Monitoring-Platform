FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN if [ -f package-lock.json ]; then npm ci --only=production; else npm install; fi

# Copy source code
COPY . .

EXPOSE 3000

# Development command
CMD ["npm", "start"]