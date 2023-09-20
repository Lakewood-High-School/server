#!/bin/bash

echo Starting server
echo Starting Apache2
sudo systemctl start apache2
apache2_status=$?
if [ "$apache2_status" -eq 0 ]; then
    echo "Started Apache2 server"
else
    echo "An error has been encountered while starting Apache2"
fi
echo Starting docker compose
docker compose up -d
docker_compose_status=$?
if [ "$docker_compose_status" -eq 0 ]; then
    echo "Started docker compose"
else
    echo "An error has been encountered while starting docker compose"
fi
echo Completed startup steps
echo Summary:
printf "Apache2 - "
if [ "$apache2_status" -eq 0 ]; then
    echo "[UP]"
else
    echo "[FAILED]"
fi
printf "Docker compose - "
if [ "$docker_compose_status" -eq 0 ]; then
    echo "[UP]"
else
    echo "[FAILED]"
fi
