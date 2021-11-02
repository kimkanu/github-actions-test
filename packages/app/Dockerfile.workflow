FROM keonwoo/test:default

# Copy yarn packages
WORKDIR /app
COPY ./packages/app/ ./packages/app/

USER node
RUN yarn install
