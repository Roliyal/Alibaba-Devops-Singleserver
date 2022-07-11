FROM nginx:1.23.0
MAINTAINER issac
EXPOSE 80
CMD ["nginx" "-g" "daemon off;"]
