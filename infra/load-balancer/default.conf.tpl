upstream backend {
    server app-01:3001;
    server app-02:3002;
    server app-03:3003;
}

server {
    listen 80;
    server_name localhost;
    
    location / {
        proxy_pass http://backend;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}

#server {
#    listen 80;
#    server_name localhost;
#    location / {
#        #proxy_set_header X-Forwarded-For $proxy_add_forwarded_for;
#        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#        proxy_set_header Host $host;
#        proxy_set_header Upgrade $http_upgrade;
#        proxy_set_header Connection "Upgrade";
#        proxy_pass http://backend;
#        proxy_http_version 1.1;
#    } 
#}
