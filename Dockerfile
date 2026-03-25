FROM n8nio/n8n

USER root

# Install packages (Alpine uses apk, not apt)
RUN apk update && apk add python3 py3-pip zip

# Install Python libraries
RUN pip3 install python-pptx python-docx

# Enable execute command
ENV N8N_ENABLE_EXECUTE_COMMAND=true

USER node