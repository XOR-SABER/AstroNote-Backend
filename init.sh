echo "Installing Development Tools"
echo "Installing prostgresql"
sudo apt-get update && apt-get install postgresql -y

echo "Initalizing Development Enviroment"
dos2unix production.sh
if [chmod 711 ../production.sh -eq 1]; then 
    err "Cannot raise permissions of the run.sh script"
fi 



