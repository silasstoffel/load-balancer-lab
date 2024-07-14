FROM node:18.16-alpine as builder

WORKDIR /app

RUN addgroup -S app && adduser -S app -G app

COPY --chown=app:app package*.json ./

RUN npm ci --omit=dev

COPY --chown=app:app ./src/* ./

EXPOSE 3000

ENTRYPOINT ["node", "server.js"]

# docker build -t app:v1 -f ./infra/backend/Dockerfile .
# docker run -p 9000:3000 app:v1
# docker container ps
# docker container remove ${name} --force
# docker-compose down
# docker images ls
# docker system prune --all
# docker-compose exec load-balancer s 
