#!/bin/bash

echo "STARTING NESSUS CONTAINER"
echo "Please wat a moment.  Nessus will be available at https://kali:8834 in a web browser."

docker container run -it -p 8834:8834 tenableofficial/nessus


