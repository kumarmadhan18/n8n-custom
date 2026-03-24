FROM n8nio/n8n

USER root

# Install Python + pip
RUN apt-get update && apt-get install -y python3 python3-pip zip

# Install required Python packages
RUN pip3 install python-pptx python-docx

# Enable execute command feature
ENV N8N_ENABLE_EXECUTE_COMMAND=true

USER node