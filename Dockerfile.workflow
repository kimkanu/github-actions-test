FROM node:lts

# Copy yarn packages
WORKDIR /app
COPY ./.yarnrc.yml .
COPY ./.yarn/ ./.yarn/
COPY ./yarn.lock .

COPY ./package.json .
COPY ./packages/app/package.json ./packages/app/

RUN chown -R node:node .
