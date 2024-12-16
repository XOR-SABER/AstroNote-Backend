
echo "Running Docker Image"

# Kill any instances of the image and ignore any output
docker ps -q --filter "ancestor=astronote-backend" | xargs -r docker kill > /dev/null 2>&1

# Run the bitch
docker run --rm -p 3000:3000 astronote-backend

# Kill again 

echo "Killing the previous image"
docker ps -q --filter "ancestor=astronote-backend" | xargs -r docker kill > /dev/null 2>&1