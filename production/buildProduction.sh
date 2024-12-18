echo "Building Docker Production Image"

# Build the docker image.. 
docker build -t astronote-backend .

echo "Running Docker Production Image"

# Run the bitch
docker run --rm -p 3000:3000 astronote-backend

# Kill again 

echo "Killing the Production image"
docker ps -q --filter "ancestor=astronote-backend" | xargs -r docker kill > /dev/null 2>&1