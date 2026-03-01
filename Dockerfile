# Dockerfile

# Base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies (if any)
RUN apt-get update && apt-get install -y \
    # Add your dependencies here
    \
    && rm -rf /var/lib/apt/lists/*

# Command to run the application
CMD ["your-start-command"]