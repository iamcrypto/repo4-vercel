# repo4-vercel
this repository is dedicated to vercel deployment tests
Begins here

from first of november

Technology Used: HTML5 CSS3 jQuery  

# Setup in Local nodejs
Extract zip file to root folder. 
create phpmyadmin database (- Server version: 10.4.12-MariaDB-log) 
edit connectDB id password in src/config.js
## 
```
edit .env file
set database
host
e.g database user, name, password
```

&& 

```
port = 3001  
 "start": "nodemon --exec ./node_modules/.bin/babel-node server.js" to be set on vps server 

npm init

npm start
```
#Setup Locally with nodejs version 20.
you can also include given node mudules to save time (extract from zip)

visit http://localhost:3001 in your browser.
Live app preview  https://binod.live
login id password :9304924340 & 123456 respectively

## Another application required here is Xampp server installed and database server is set to - Server version: 10.4.12-MariaDB-log
change user account credentials in phpmyadmin

```
username 

password

```
&&

```js
     const connection = mysql.createPool({
    host: 'sql12.freesqldatabase.com',
    user: 'sql12745196',
    password: 'HGYzlpDWe9',
    database: 'sql12745196',
    port: '3306'
   
});

```
```js
const connection = mysql.createPool({
    host: 'localhost',
    user: 'tri',
    password: 'tri',
    database: 'tri', 
// in src/connectDB.js

```
visit http://localhost:3001 in your browser.
for login admin/user ,edit database table, admin,users with md5 encrypted password 
https://md5decrypt.net
