FROM node:20-slim

ENV NODE_ENV=development

WORKDIR /workspace

RUN apt-get update && apt-get install -y git curl && apt-get clean

USER node

EXPOSE 4321
