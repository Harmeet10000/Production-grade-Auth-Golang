# Generate a self-signed certificate and private key
openssl req -x509 -newkey rsa:2048 -nodes -keyout key.pem -out cert.pem -days 365
