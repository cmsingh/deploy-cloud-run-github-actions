# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

COPY . /APP

# Copy the current directory contents into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

COPY . .
# Define environment variable
ENV PORT 8080

# Run app.py when the container launches
CMD ["python", "--bind", "0.0.0.0:8080", "app:app"]
