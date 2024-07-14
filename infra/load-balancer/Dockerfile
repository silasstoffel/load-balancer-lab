FROM nginx:1.27.0-alpine3.19

RUN rm /etc/nginx/conf.d/default.conf

COPY  ./infra/load-balancer/default.conf /etc/nginx/conf.d/default.conf
