FROM node:22.15.1-bookworm

# Set the general environment variables, and move to temp dir
ENV DEBIAN_FRONTEND="noninteractive"

# Install debian packages
RUN apt update && \
    apt install -y \
        wget curl zip unzip p7zip-full tzdata git && \
    rm -rf /var/lib/apt/lists/*

##############
# START HERE #
##############

# Add the startup script on every bash session
COPY .devcontainer/.bashrc /root/.bashrc

# Command just to keep the container running
CMD ["sleep", "infinity"]
