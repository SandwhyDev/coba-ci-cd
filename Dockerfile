# Gunakan Node.js versi terbaru sebagai base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json terlebih dahulu (jika ada) untuk caching layer
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy semua kode sumber sebelum build
COPY . .

# Jalankan build setelah semua file tersedia
RUN npm run build

# Tentukan port yang digunakan
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "run", "start"]
