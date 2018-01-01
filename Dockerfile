FROM daocloud.io/wshudong/docker-vue-cli:latest
MAINTAINER shudong <shudong.wang>

# 编译 /app/dist 目录
RUN npm run build
