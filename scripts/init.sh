echo "Initalizing Development Enviroment"

# Raise the permissions of the start production.sh
if [ chmod 711 ../production/buildProduction.sh -eq 1 ]; then 
    err "Cannot raise permissions of the run.sh script"
fi

# Raise Permission of the startDB script.. 
if [ chmod 711 startDB.sh -eq 1 ]; then 
    err "Cannot raise permissions of the run.sh script"
fi 