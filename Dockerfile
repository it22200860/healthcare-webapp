# Base image
FROM python:3.9-slim

# Working directory
WORKDIR /app

# Copy app files
COPY app/ /app/

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run application
CMD ["python", "app.py"]
