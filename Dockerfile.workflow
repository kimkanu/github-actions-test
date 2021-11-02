FROM node:lts

# Copy yarn packages
WORKDIR /app
COPY ./.yarnrc.yml .
COPY ./package.json .
COPY ./.yarn/ ./.yarn/

RUN chown -R node:node .

USER node

RUN yarn set version berry
RUN yarn install
RUN yarn plugin import workspace-tools
