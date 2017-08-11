#!/bin/bash

sed -i -e 's/\[RABBITMQ USERNAME\]/'"$RABBITMQ_DEFAULT_USER"'/g' appsettings.Production.json
sed -i -e 's/\[RABBITMQ PASSWORD\]/'"$RABBITMQ_DEFAULT_PASS"'/g' appsettings.Production.json
sed -i -e 's/\[SQL PASSWORD\]/'"$SA_PASSWORD"'/g' appsettings.Production.json
sed -i -e 's/\[SSL THUMBPRINT\]/'"$SSL_THUMBPRINT"'/g' appsettings.Production.json
pass=$(head -c 500 /dev/urandom | tr -dc 'a-zA-Z0-9~!@#$%^' | fold -w 20 | head -n 1)
sed -i -e 's/\[ENCRYPTION PASSPHRASE\]/'"$pass"'/g' appsettings.Production.json

dotnet ACEWebService.dll