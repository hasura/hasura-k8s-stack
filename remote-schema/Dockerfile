FROM node:alpine

WORKDIR /app
COPY package.json package.json
RUN npm install
COPY src src

ENV PORT=3000
ENV DISABLE_GRAPHIQL=true
CMD ["npm", "run", "start-prod"]