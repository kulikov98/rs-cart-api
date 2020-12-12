FROM node:12-alpine
WORKDIR app
COPY . .
RUN npm install \
    && npm run build \
    && npm cache clean --force
USER node
EXPOSE 4000
ENTRYPOINT ["node", "dist/main"]
