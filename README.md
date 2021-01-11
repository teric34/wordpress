How to use
(1) prepare .env file under ./

  [start of ".env" file]
  ## this is environment variables for https certification with digital ocean
  ## For servers other than digital ocean, change environment valiables and cert: command in docker-compose.
  ## More information, refer https://go-acme.github.io/lego/dns/
  #cert
  AUTH_TOKEN = [write AUTO_TOKEN from digitalocean]
  EMAIL = [your email for let's encrypt]
  DNS = digitalocean
  DOMAINS1 = *.yourdomain.com
  DOMAINS2 = yourdomain.dom

  #db
  DB_DATABASE = database
  DB_USER = username
  DB_PASS = password
  DB_ROOT_PASS = rootpassword
  [end of ".env" file]

(2) change "we.conf" under ./
   server_name localhost.masa-nakajima.com; -> server_name www.yourdomain.com;
  
(3) take https certification
   (not completed yet)
   
(4) run
  docker-compose build
  docker-compose up -d
  (not completed yet)
