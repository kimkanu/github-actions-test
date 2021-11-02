FROM common

# Copy yarn packages
WORKDIR /app
COPY ./packages/app/ ./packages/app/

RUN mkdir -p /app/coverage/app
RUN chown -R node:node ./coverage

USER node
RUN yarn install
