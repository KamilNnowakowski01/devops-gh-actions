# Użyj oficjalnego obrazu Node.js w wersji 20 jako bazowego
FROM node:20

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj pliki package.json i package-lock.json (lub yarn.lock)
COPY package*.json ./

# Zainstaluj zależności projektu
RUN npm install

# Skopiuj cały kod aplikacji do katalogu roboczego
COPY . .

# Zbuduj aplikację Next.js
RUN npm run build

# Udostępnij port 3000
EXPOSE 3000

# Uruchom serwer Next.js
CMD ["npm", "start"]
