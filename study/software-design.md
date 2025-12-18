# Software Design Principles
##SOLID Principles:
- S: Single Responsibility Principle (SRP) - A class should have one reason to change.
- O: Open/Closed Principle (OCP) - Software entities should be open for extension but closed for modification.
- L: Liskov Substitution Principle (LSP) - Subtypes must be substitutable for their base types.
- I: Interface Segregation Principle (ISP) - Clients should not be forced to depend on interfaces they do not use.
- D: Dependency Inversion Principle (DIP) - High-level modules should not depend on low-level modules; both should depend on abstractions.

---

## Design Patterns
**Creational Patterns**

- Singleton: Ensures a class has only one instance and provides a global point of access.
- Factory Method: Defines an interface for creating an object but lets subclasses alter the type of objects that will be created.
- Abstract Factory: Provides an interface for creating families of related or dependent objects without specifying their concrete classes.

## Structural Patterns:

- Adapter: Allows incompatible interfaces to work together.
- Decorator: Adds new functionality to an object dynamically.
- Facade: Provides a simplified interface to a complex subsystem.

## Behavioral Patterns:

- Observer: Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified.
- Strategy: Defines a family of algorithms, encapsulates each one, and makes them interchangeable.
- Command: Encapsulates a request as an object, thereby allowing for parameterization of clients with queues, requests, and operations.


## Coupling and Cohesion
- Coupling: Refers to the degree of interdependence between software modules.
- Loose Coupling: Modules are independent; changes in one module do not affect others.
- Tight Coupling: Modules are highly dependent on each other.

- Cohesion: Refers to how closely related and focused the responsibilities of a single module are.
- High Cohesion: A module has a single, well-defined responsibility.
- Low Cohesion: A module performs a wide variety of tasks that are not closely related.

---

## Architectural Patterns
- Layered Architecture: Organizes code into layers (e.g., presentation, business logic, data access) to separate concerns.
- Microservices: Structures an application as a collection of loosely coupled services, each responsible for a specific business capability.
- Event-Driven Architecture: Uses events to trigger and communicate between decoupled services.

---

## Testing and Quality Assurance
- Unit Testing: Tests individual components for correctness.
- Integration Testing: Tests the interaction between integrated components.
- Test-Driven Development (TDD): A development approach where tests are written before the code itself.

---

## Documentation and Communication
- UML Diagrams: Use Unified Modeling Language (UML) diagrams (e.g., class diagrams, sequence diagrams) to visualize system architecture and design.
- Code Comments: Write clear comments to explain complex logic and design decisions.

---

## Best Practices
- Code Reviews: Regularly review code to ensure quality and adherence to design principles.
- Refactoring: Continuously improve the codebase by restructuring existing code without changing its external behavior.
- Version Control: Use version control systems (e.g., Git) to manage changes and collaborate effectively.
