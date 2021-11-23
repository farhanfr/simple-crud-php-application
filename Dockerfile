FROM nginx:alpine

WORKDIR /usr/src/jobsheet

RUN rm -rf ./*

COPY build/ /usr/src/jobsheet/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]