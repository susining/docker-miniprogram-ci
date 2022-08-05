FROM node:14.20.0

RUN npm -g config set user root
RUN npm install -g miniprogram-ci@1.8.35
