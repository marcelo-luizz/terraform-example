# Dockerfile for Atlantis with Terragrunt

FROM ghcr.io/runatlantis/atlantis:latest

# Install Terragrunt
ARG TERRAGRUNT_VERSION=0.55.0
USER root
RUN curl -sL "https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64" \
    -o /usr/local/bin/terragrunt && \
    chmod +x /usr/local/bin/terragrunt
# Install Infracost
RUN curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh   

USER atlantis