FROM openeuler/openeuler:22.03-lts-sp2

MAINTAINER isoftstone

ENV NGINX_VERSION=1.21.5

#安装nginx
RUN yum install -y nginx unzip net-tools npm

#创建目录
RUN mkdir -p /etc/pki/nginx

#拷贝本地文件
COPY talent-certificate/ /opt/talent-certificate

#编译talent-certificate
WORKDIR /opt/talent-certificate
RUN npm install --no-optional --verbose
RUN npm run build
RUN zip -r dist.zip dist/
RUN mv dist.zip /usr/share/nginx/html/

#切换工作目录
WORKDIR /usr/share/nginx/html/ 


#COPY dist.zip /usr/share/nginx/html/
COPY nginx-conf/nginx.conf /etc/nginx/nginx.conf 

#解压dist
RUN unzip dist.zip
RUN rm -rf /usr/share/nginx/html/dist.zip

#修改权限
RUN chown -R nginx:nginx dist/
RUN chmod 777 /run


#删除源码包
WORKDIR /opt/
RUN rm -rf talent-certificate/

USER nginx

#对外暴露的端口
EXPOSE 8080

STOPSIGNAL SIGQUIT

CMD [ "nginx", "-g", "daemon off;" ]

