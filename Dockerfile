# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python", "./app.py"]
