# spring-boot-eureka-server
A simple Spring Boot App that enables Netflix Eureka as a Service Registry. Port `8761` is exposed.

### Default Configuration files

```properties
# Server HTTP port.
server.port=8761

# Indicates whether this client should fetch eureka registry information from eureka server.
eureka.client.fetch-registry=false

# Indicates whether or not this instance should register its information with eureka server for discovery by others.
# In some cases, you do not want your instances to be discovered whereas you just want do discover other instances.
eureka.client.register-with-eureka=false
```

### Override configuration files

Because it is a Spring Boot application, you can override the default configuration 
properties by adding an `application.properties` file under `/apps/` in the image.