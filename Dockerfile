FROM daocloud.io/wshudong/docker-vue-cli:latest
MAINTAINER shudong <shudong.wang>

WORKDIR /var/www/html/
COPY . /var/www/html/
# 编译 /var/www/html/dist 目录
# RUN npm run build

VOLUME ["/var/www"]

CMD  ["npm","run build"]