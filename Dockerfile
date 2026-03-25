FROM n8nio/n8n:latest

USER root

# Install system dependencies (Debian-based)
RUN apt-get update \
 && apt-get install -y python3 python3-pip zip \
 && rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN pip3 install python-pptx python-docx

# Enable Execute Command
ENV N8N_ENABLE_EXECUTE_COMMAND=true

USER node