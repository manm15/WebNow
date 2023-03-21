# Use the official Python image as the base image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code into the container
COPY app.py .
COPY templates templates

# Set the environment variables
ENV PORT=8080
ENV DEBUG=True

# Expose the port that the app will run on
EXPOSE 8080

# Start the app
CMD ["python", "app.py"]
