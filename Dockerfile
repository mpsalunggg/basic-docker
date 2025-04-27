# Gunakan base image Node.js
FROM node:20-alpine

# Menyediakan tempat kerja di dalam container
WORKDIR /app

# Install pnpm secara manual
RUN npm install -g pnpm

# Menyalin file package.json dan pnpm-lock.yaml terlebih dahulu untuk cache dependensi
COPY package.json pnpm-lock.yaml ./

# Install dependensi aplikasi dengan pnpm
RUN pnpm install

# Salin seluruh file project ke dalam container
COPY . .

# Build aplikasi TypeScript
RUN pnpm run build

# Expose port yang digunakan aplikasi
EXPOSE 3000

# Menjalankan aplikasi saat container dijalankan
CMD ["pnpm", "start"]
