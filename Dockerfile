FROM daocloud.io/wshudong/docker-vue-cli:latest
MAINTAINER shudong <shudong.wang>

WORKDIR /app
COPY . /app
# 编译 /app/dist 目录
RUN npm run build
