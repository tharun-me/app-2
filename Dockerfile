# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirement file and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .
COPY templates/ templates/

# Expose the port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]