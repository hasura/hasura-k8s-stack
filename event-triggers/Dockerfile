FROM node:alpine

WORKDIR /app
COPY package.json package.json
RUN npm install
COPY src src

ENV PORT=3000
CMD ["npm", "run", "start-prod"]