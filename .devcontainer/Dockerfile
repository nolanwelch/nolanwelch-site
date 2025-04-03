FROM node:20-slim

ENV NODE_ENV=development

WORKDIR /workspace

RUN apt-get update &&\
    apt-get install -y git curl wget gpg lsb-release &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Terraform
RUN wget -O - https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt update && apt install terraform

USER node

EXPOSE 4321
