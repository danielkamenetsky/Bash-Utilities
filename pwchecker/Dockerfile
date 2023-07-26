# Start from a base image with bash shell support
FROM ubuntu:latest

# Copy the script into the container
COPY pwchecker.sh /pwchecker.sh

# Install necessary packages for script
RUN apt-get update && apt-get install -y \
    bash

# Make the script executable
RUN chmod +x /pwchecker.sh

# Run the script when the container launches
CMD ["/bin/bash", "/pwchecker.sh"]
