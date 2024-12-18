echo "Starting database"

if [ service postgresql status -eq 1 ]; then 
    echo "Starting service.."
    sudo service postgresql start
else 
    echo "Service already running"
fi 
