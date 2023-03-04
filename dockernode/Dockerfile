FROM node:16-alpine as kat
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "run", "start"]
FROM nginx
COPY --from=kat /app/build /usr/share/nginx/html