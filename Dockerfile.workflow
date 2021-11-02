FROM node:lts

# Copy yarn packages
WORKDIR /app
COPY ./.yarnrc.yml .
COPY ./package.json .
COPY ./.yarn/ ./.yarn/
COPY ./yarn.lock .

RUN ls /app/.yarn/cache

RUN chown -R node:node .
