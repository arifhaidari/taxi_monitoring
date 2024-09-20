# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Expose any necessary ports (optional)
EXPOSE 8000

# Define the command to run your Python script
# CMD ["python", "main.py"]
# Start a shell by default
CMD ["tail", "-f", "/dev/null"]
