#!/bin/bash

# Start the Flask application in a Docker container
docker run -d -p 5000:5000 --name flask-app my-flask-app

# Wait for the application to start
sleep 5

# Send a request to the /add endpoint
response=$(curl -s "http://localhost:5000/add?num1=5&num2=3")

# Validate the response
if [ "$response" == "8" ]; then
  echo "Test passed: The response is 8."
  exit 0
else
  echo "Test failed: The response is $response, expected 8."
  exit 1
fi

# Clean up
docker stop flask-app
docker rm flask-app
