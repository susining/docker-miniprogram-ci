FROM node:16.16.0

RUN npm -g config set user root
RUN npm install -g miniprogram-ci@1.8.35
