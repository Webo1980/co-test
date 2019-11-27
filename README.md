# co-test
# Setup:
  - Backend
 	- create db "co-test"
	- Import ./co-test.sql to it
	- go to folder co-test-server/.env file
	- modify variable DATABASE_URL as needed
	- modify variable CORS_ALLOW_ORIGIN as needed
  - Frontend 
	- go to folder co-test-client
	- change the backend server IP in file src/app/product.service.ts (eg http://127.0.01:8000).
	- run the following command ng build
	- run the following command ng serve
	- run the application on (eg http://127.0.01:4200)
- Note:
  - if you do not want to download ./co-test-client/node_modules. Please make sure to install bulma css library: 
    npm install --save bulma
