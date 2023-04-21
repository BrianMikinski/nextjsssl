# generate an ssl cert a .cnf cert definition found in the 
openssl req `
    -newkey rsa:2048 `
    -x509 `
    -nodes `
    -keyout ./ssl/server.key `
    -new `
    -out ./ssl/server.crt `
    -config ./ssl/certdef.cnf `
    -sha256 `
    -days 365