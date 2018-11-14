FROM mhart/alpine-node

RUN mkdir -p /usr/src/app
WORKDIR /src/app
COPY . /src/app
RUN npm rebuild node-sass
EXPOSE 8080
CMD [ "npm", "start" ]