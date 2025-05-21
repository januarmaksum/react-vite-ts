# Base image Node versi yang lo mau
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy hanya package.json & lock file untuk install duluan
COPY package*.json ./

# Install deps
RUN npm install

# Copy semua file ke container
COPY . .

# Expose port Vite
EXPOSE 5173

# Jalankan dev server
CMD ["npm", "run", "dev", "--", "--host"]
