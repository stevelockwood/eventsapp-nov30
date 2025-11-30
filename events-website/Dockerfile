# Use aws public node image
FROM public.ecr.aws/docker/library/node:slim

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

# Install dependencies.
RUN npm install

# Start the app
CMD ["node", "server.js"]

