#!/bin/bash

IMAGE_NAME="shopon-app"
PORT=5001

echo "Building Docker image: $IMAGE_NAME..."
docker build -t $IMAGE_NAME .

if [ $? -eq 0 ]; then
    echo "Build successful!"
    
    if [ "$(docker ps -q -f name=$IMAGE_NAME)" ]; then
        echo "Stopping existing container..."
        docker stop $IMAGE_NAME
        docker rm $IMAGE_NAME
    fi

    echo "Running container on port $PORT..."
    docker run -d --name $IMAGE_NAME -p $PORT:$PORT $IMAGE_NAME
    
    echo "Application available at http://localhost:$PORT"
    echo "Logs can be viewed with: docker logs -f $IMAGE_NAME"
else
    echo "Build failed. Please check the logs above."
    exit 1
fi
