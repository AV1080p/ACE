# Get directory of script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

# Create SSL Certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ace-web/server.key -out ace-web/server.crt
fingerprint=$(openssl x509 -in ace-web/server.crt -noout -fingerprint | sed 's/SHA1 Fingerprint=//g' |  sed 's/://g')

# Add SSL Thumbprint 
cat ace-app/appsettings.Template.json | sed 's/\[SSL THUMBPRINT\]/'"$fingerprint"'/g' > ace-app/appsettings.Production.json

# Build Docker Images and Start Containers
docker-compose build
docker-compose up -d

# Provide SSL Thumbprint for PowerShell Module
echo "" && echo "Use the following Thumbprint when importing the ACE PowerShell module" && echo "   SSL Thumbprint: $fingerprint" && echo ""