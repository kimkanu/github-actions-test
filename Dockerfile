FROM node:lts

# Copy yarn packages
WORKDIR /app
COPY . .

RUN chown -R node:node .

USER node
RUN yarn install

CMD yarn start
