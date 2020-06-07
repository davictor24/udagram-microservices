FROM node:13 AS build
RUN npm install --unsafe-perm -g @ionic/cli native-run cordova-res
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
RUN ionic build

FROM nginx:alpine
COPY --from=build /usr/src/app/www /usr/share/nginx/html