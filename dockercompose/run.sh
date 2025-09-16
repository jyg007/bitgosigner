export  PORT=4433
export DB_PATH="/data/keys.db"
export SERVER_CRT=$(base64 -w0 server.crt)
export CA_CRT=$(base64 -w0 ca.crt)
export SERVER_KEY=$(base64 -w0 server.key)

