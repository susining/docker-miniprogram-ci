FROM node:18.12.1

RUN npm -g config set user root
RUN npm install -g miniprogram-ci@1.8.35
