# Gunakan Node.js versi terbaru sebagai base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy file package.json dan install dependencies
COPY package.json .
RUN npm install
RUN npm run build

# Copy semua kode sumber
COPY . .

# Tentukan port yang digunakan
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "run","start"]
