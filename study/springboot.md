# SpringBoot quick Reference
**DAO**: Layer of abstraction between the business logic and the data storage technology. It could implement Spring Data JPA for relational databases Spring Data MongoDB for NoSQL databases or Spring JDBC for low-level database access.
**Repository**: A Repository is a specific type of DAO that is used in the context of Spring Data and provides a standardized interface for interacting with a database or data storage mechanism. 
**Repository vs DAO**: 
- In Spring Boot, the terms DAO (Data Access Object) and Repository are often used interchangeably. However, there is a subtle difference between the two: A DAO is a more general concept that refers to any object that provides a standardized interface for accessing and manipulating data in a database.
- A Repository is a specific type of DAO that is used in the context of Spring Data and provides a standardized interface for interacting with a database or data storage mechanism. 
- **Domain Entity**: In the context of Spring Boot, an Entity is a Java class that represents a table or a collection of data in a database. It is a fundamental concept in the Java Persistence API (JPA) and is used to define the structure and relationships of data in a database. 
- **Object-Relational Mapping (ORM)**: Entities provide a way to map Java objects to database tables, allowing you to work with objects in your Java code and persist them to the database.
- **Use of Entities**: Database independence**: Entities provide a layer of abstraction between the Java code and the database, making it easier to switch between different databases or data storage mechanisms.
- **DTO**: a DTO (Data Transfer Object) is a Java class that is used to transfer data between layers of an application, such as between the presentation layer and the business logic layer, or between the business logic layer and the data access layer.
- **Relation between DTO and Entity**: In Spring Boot, Entities and DTOs are often used together. An Entity represents a table or a collection of data in a database, while a DTO is used to transfer data between layers of an application.
- **Service**: It calls a repository (or more) a Service is a layer of abstraction that encapsulates the business logic of an application. It is a Java class that provides a set of methods that can be used to perform specific tasks or operations, such as data processing, calculations, or interactions with external systems.
- **Controller**: a Controller is a Java class that handles incoming HTTP requests and sends responses to the client. It is a crucial component of the Model-View-Controller (MVC) pattern, which is a widely used architectural pattern in web development.




