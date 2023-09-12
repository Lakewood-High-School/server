echo Starting server
echo Starting Apache2
sudo systemctl start apache2
if [ $? -eq 0]; then
    echo "Started Apache2 server"
else
    echo "An error has been encountered while starting Apache2"
    $apache2_status = false
fi
echo Completed startup steps
echo Summary:
printf "Apache2 - "
if [ $apache2_status -eq false ]; then
    echo "[UP]"
else
    echo "[FAILED]"
fi
