FROM node:14.19.3

RUN npm -g config set user root
RUN npm install -g miniprogram-ci@1.8.35
