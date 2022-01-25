# Jumia customers phone number validator

API validates Phone numbers based on country codes and phone number regex.

---

## Technical implementation delails
  * Java 8
  * soring boot  v2.4.5
  * SQLite
  * lombok 
  * swagger 
  
---
### Swagger

* http://localhost:8080/swagger-ui.html
   	
---

### Configuration Values
Check env.sample to update this values accordingly with its instructions
* spring.datasource.url=jdbc:postgresql://<database_url>:<database_port>/<database_name>
* spring.datasource.username=<application_username>
* spring.datasource.password=<application_password>

### Docker 
the following commands could be used to containerize and run the API using Docker
* docker build -t validator-backend-image .
* docker run -p 8080:8080 --env-file ./{your_file_name} validator-backend-image
* open  http://localhost:8080/api/v1/customers
