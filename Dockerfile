# Nouveauté par rapport au TP2 : l'instruction EXPOSE 3000
# documente le port d'écoute.

FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
