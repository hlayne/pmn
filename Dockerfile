# Base image (Debian-slim is better than Alpine for networking tools)
FROM python:3.11-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    DEBIAN_FRONTEND=noninteractive

# Update OS and install useful tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    iputils-ping \
    iproute2 \
    net-tools \
    dnsutils \
    traceroute \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy requirements and install Python deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your app source
COPY src/ /app/src

# Expose API port (adjust if your app uses a different port)
EXPOSE 8080

# Set default command
CMD ["python", "src/main.py"]
