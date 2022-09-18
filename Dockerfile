FROM klakegg/hugo:edge-ubuntu AS build
RUN apt update
RUN apt install git
COPY . /src
RUN make init
RUN make build

FROM nginx:1.19.4-alpine
RUN mv /usr/share/nginx/html/index.html /usr/share/nginx/html/old-index.html
COPY --from=build /src/public /usr/share/nginx/html
EXPOSE 80
