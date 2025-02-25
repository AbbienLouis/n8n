FROM node:18

# Install n8n globally
RUN npm install -g n8n

# Create a working directory
WORKDIR /data

# Expose port for n8n
EXPOSE 5678

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_USER=yourusername
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n
RUN chmod 600 /home/node/.n8n/config
CMD ["n8n"]
