# Dependency Injection vs Inversion of Control
- Dependency Injection is a design pattern that implements the Inversion of Control principle. 
- It's a technique where an object receives its dependencies from an external source, rather than creating them itself
- **Scope**: IoC is a broader concept that encompasses various techniques, including DI. DI is a specific technique that implements IoC.
- **Focus**: IoC focuses on decoupling components from their dependencies, while DI focuses on providing dependencies to components.
- **Mechanism**: IoC can be achieved through various mechanisms, including DI, Service Locator, and Factory patterns. DI is a specific mechanism that implements IoC.

---

# DAO vs Repository
## Differences
- **Scope**: DAOs are typically used for low-level data access operations, while Repositories are used for higher-level data abstraction and retrieval.
- **Abstraction level**: DAOs provide a lower-level abstraction, while Repositories provide a higher-level abstraction.
- **Technology dependence**: DAOs are often tied to a specific data storage technology, while Repositories are designed to be technology-agnostic.

## Similarities:
**Decoupling**: Decoupling the business logic from the data storage makes it easier to change or replace the data storage technology.
**Abstraction**: Providing a layer of abstraction makes it easier to change or replace the data storage technology without affecting the business logic.
**Reusability**: DAOs and Repositories can be reused across different applications and domains.

---

# Future vs Promises
- Future is a read-only container that holds a value, whereas Promise is a writeable container that can be used to produce a value.
- Future is used to retrieve the result of an asynchronous operation, whereas Promise is used to create a Future that can be completed by calling complete or completeExceptionally methods.

--- 

# Coupling vs Cohesion

- In object-oriented programming (OOP), coupling and cohesion are two important concepts that help developers design and maintain robust, scalable, and maintainable software systems.
- Coupling refers to the degree of interdependence between two or more modules, classes, or objects in a program. It measures how closely connected they are and how much one module relies on another to function. In other words, coupling is about how tightly two modules are connected.
- **Tight Coupling**: When one module is heavily dependent on another module, making it difficult to change or modify one without affecting the other.
- **Loose Coupling**: When modules are independent and do not rely heavily on each other, making it easier to change or modify one without affecting the other.
- **No Coupling**: When modules are completely independent and do not interact with each other at all.

- Cohesion, on the other hand, refers to the degree to which the elements within a single module, class, or object work together to achieve a single, well-defined goal. It measures how well the elements within a module are related and focused on a specific task. In other words, cohesion is about how well the elements within a module stick together.
- **Functional Cohesion**: When all elements within a module work together to perform a single, well-defined function.
- **Sequential Cohesion**: When elements within a module are executed in a specific sequence to achieve a goal.
- **Communicational Cohesion**: When elements within a module are related to each other through communication, such as method calls or data exchange.
- **Procedural Cohesion**: When elements within a module are related to each other through a specific procedure or algorithm.
- **Temporal Cohesion**: When elements within a module are related to each other through time, such as executing a series of tasks in a specific order.
- **Logical Cohesion**: When elements within a module are related to each other through logical relationships, such as if-else statements or switch statements.
- **Coincidental Cohesion**: When elements within a module are unrelated and do not work together to achieve a single goal.

- Low Coupling: Minimize dependencies between modules to make them more independent and easier to maintain.
- High Cohesion: Ensure that elements within a module work together to achieve a single, well-defined goal, making the module more focused and easier to understand.

---

# H2 vs SQLite

## H2 Database Advantages:
- Faster than SQLite
- Supports more advanced features like stored procedures and triggers
- Supports clustering and replication
- Supports encryption
  
## Disadvantages:
- More complex to set up and configure
- Requires more memory and resources
- Not as widely supported as SQLite

## SQLite Advantages:
- Very lightweight and easy to set up
- Widely supported and used in many applications
- Self-contained and doesn't require a separate server process
- Supports transactions and locking

## Disadvantages:
- Slower than H2
- Limited support for advanced features like stored procedures and triggers
- Not suitable for large-scale or high-traffic applications

## Use Cases H2 Database:
- Suitable for large-scale or high-traffic applications
- Suitable for applications that require advanced features like stored procedures and triggers
- Suitable for applications that require encryption

## Use Cases SQLite:
- Suitable for small to medium-sized applications
- Suitable for applications that require a lightweight and easy-to-set-up database
- Suitable for applications that require a self-contained database

## Conclusion:
H2 Database and SQLite are both suitable for different use cases. H2 Database is more suitable for large-scale or high-traffic applications that require advanced features, while SQLite is more suitable for small to medium-sized applications that require a lightweight and easy-to-set-up database.

---

# SQL vs No-SQL

## When to Use SQL Databases:
- When data is structured and well-defined.
- When data relationships are complex.
- When data consistency and reliability are critical.
- When SQL queries are necessary.

## When to Use NoSQL Databases:
- When data is unstructured or semi-structured.
- When data is large and complex.
- When scalability and high performance are necessary.
- When flexible schema is required.

---

# Volatile vs Atomic objects 

**Volatile** is a keyword in Java that ensures that changes to a variable are immediately visible to other threads. When a variable is declared as volatile, the Java Virtual Machine (JVM) will always read the variable from the main memory, rather than from the local cache of the thread. This ensures that changes made by one thread are immediately visible to other threads.

**Atomic objects**, on the other hand, are a class of objects that provide thread-safe operations for variables. They are part of the java.util.concurrent.atomic package and provide a way to update variables in a thread-safe manner.

- **Purpose**: volatile variables ensure that changes to a variable are immediately visible to other threads, while Atomic objects provide thread-safe operations for variables.
- **Scope**: volatile variables are used for individual variables, while Atomic objects are used for a class of variables that require thread-safe operations.
- **Performance**: volatile variables can have a performance impact, as they require the JVM to always read the variable from main memory. Atomic objects, on the other hand, use lock-free algorithms to provide thread-safe operations, which can be more efficient.
- **Use cases**: volatile variables are typically used for simple variables that require immediate visibility, while Atomic objects are used for more complex variables that require thread-safe operations, such as counters or flags.


# Sequences vs collections
**Collections**: Collections are data structures that hold a group of elements. They are eager in nature, meaning that operations on collections are executed immediately, and the entire collection is processed at once. Common collection types in Kotlin include List, Set, and Map.
**Sequences**: Sequences are a way to represent a potentially infinite series of elements and are processed lazily. This means that elements are computed only when they are needed, allowing for more efficient processing, especially with large datasets.
- The main difference is eager (collections) vs lazy (sequences)

---


