FROM common

# Copy yarn packages
WORKDIR /app
COPY ./packages/app/ ./packages/app/

USER node
RUN yarn set version berry
RUN yarn install
RUN yarn plugin import workspace-tools
