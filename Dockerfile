# Use JDK 17 base image
FROM openjdk:17-jdk-slim

# Install Node.js (LTS) and npm
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY . .

# Optional: install Node.js dependencies if you have a package.json
RUN if [ -f package.json ]; then npm install; fi

# Start the Node.js app
CMD ["node", "app.js"]
