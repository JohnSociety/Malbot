FROM node:20-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN npm install -g moltbot

EXPOSE 10000

ENV PORT=10000

CMD ["moltbot", "start"]
