# OOP

## Fundaments
- **Classes and Objects**: A class is a blueprint or template that defines the properties and behavior of an object.
An object is an instance of a class, and it has its own set of attributes (data) and methods (functions).
Classes are used to define the structure and behavior of objects, while objects are used to represent real-world entities.

- **Inheritance**: Inheritance is the process by which one class can inherit the properties and behavior of another class.
The class that is being inherited from is called the superclass or parent class, while the class that is doing the inheriting is called the subclass or child class.
Inheritance allows for code reuse and facilitates the creation of a hierarchy of classes.

- **Polymorphism**: Polymorphism is the ability of an object to take on multiple forms.
This can be achieved through method overriding or method overloading.
Method overriding occurs when a subclass provides a different implementation of a method that is already defined in its superclass.
Method overloading occurs when multiple methods with the same name can be defined, but with different parameters.

- **Encapsulation**: Encapsulation is the concept of hiding the implementation details of an object from the outside world.
This is achieved by making the data members of a class private and providing public methods to access and modify them.
Encapsulation helps to protect the data from external interference and misuse.

---

## Important concepts of OO

- **Abstraction**: Abstraction is the concept of showing only the necessary information to the outside world while hiding the implementation details.
This is achieved by defining a class that provides a simplified interface to the outside world while hiding the complex implementation details.
Abstraction helps to reduce complexity and improve modularity.

- **Composition**: Composition is the concept of creating objects from other objects.
This is achieved by defining a class that contains other objects as its members.
Composition helps to create complex objects from simpler ones.

- **Interfaces**: An interface is a abstract class that defines a contract that must be implemented by any class that implements it.
Interfaces are used to define a set of methods that must be implemented by a class.
Interfaces are useful for defining a common set of methods that can be used by multiple classes.

- **Abstract Classes**: An abstract class is a class that cannot be instantiated on its own.
Abstract classes are used to define a class that provides a partial implementation of a class.
Abstract classes are useful for providing a common implementation of a class that can be shared by multiple subclasses.

- **Constructors**: A constructor is a special method that is used to initialize an object when it is created.
Constructors are used to set the initial state of an object.
Constructors can be overloaded to provide different ways of creating an object.

- **Access Modifiers**: Access modifiers are used to control access to the members of a class.
The most common access modifiers are public, private, protected, and default.
Access modifiers help to control who can access the members of a class.

---

## Key Terms:

**Instantiation**: The process of creating an object from a class.
**Member**: A variable or method that is part of a class.
**Method**: A block of code that is part of a class and is used to perform a specific task.
**Property**: A variable that is part of a class and is used to store data.
**State**: The current values of an object's properties.
**Behavior**: The actions that an object can perform.

---

## Common OOP Principles SOLID

**Single Responsibility Principle (SRP)**: A class should have only one reason to change.
**Open-Closed Principle (OCP)**: A class should be open for extension but closed for modification.
**Liskov Substitution Principle (LSP)**: A subclass should be substitutable for its superclass.
**Interface Segregation Principle (ISP)**: A client should not be forced to depend on interfaces it does not use.
**Dependency Inversion Principle (DIP)**: High-level modules should not depend on low-level modules, but both should depend on abstractions.

---

## Common OOP Design Patterns:

**Singleton Pattern**: A class that can only have one instance.
**Factory Pattern**: A class that creates objects without specifying the exact class of object that will be created.
**Observer Pattern**: A class that notifies other classes of changes to its state.
**Strategy Pattern**: A class that defines a family of algorithms, encapsulates each one, and makes them interchangeable.
**Template Method Pattern**: A class that defines the skeleton of an algorithm in the superclass but lets subclasses override the steps of the algorithm without changing its structure.

---

## Coupling
**Definition**: Coupling refers to the degree of interdependence between software modules. It measures how closely connected different components or classes are within a system.

**Types of Coupling**:

**Tight Coupling**:

- Modules are highly dependent on each other.
- Changes in one module often require changes in another.
- Example: A class directly instantiating another class or relying heavily on its internal details.

---

## Loose Coupling:

- Modules are independent and interact through well-defined interfaces.
- Changes in one module have minimal impact on others.
- Example: Using interfaces or abstract classes to define interactions between modules.
  
Benefits of Loose Coupling:

**Flexibility**: Easier to change or replace components without affecting the entire system.
**Testability**: Modules can be tested in isolation, making unit testing more straightforward.
**Maintainability**: Reduces the risk of introducing bugs when modifying one part of the system.

## Cohesion
**Definition**: Cohesion refers to how closely related and focused the responsibilities of a single module are. It measures the degree to which the elements within a module belong together.

**Types of Cohesion**:

**Low Cohesion**:

A module performs a wide variety of tasks that are not closely related.
Example: A utility class that handles file operations, network communications, and data processing all in one.
High Cohesion:

A module has a single, well-defined responsibility or purpose.
Example: A class that only handles user authentication.

## Benefits of High Cohesion:

**Clarity**: Easier to understand what a module does, as it has a clear purpose.
**Reusability**: Highly cohesive modules can often be reused in different contexts.
**Maintainability**: Changes to a module are easier to implement since its responsibilities are well-defined.

## Relationship Between Coupling and Cohesion
**Ideal Design**: The best software design achieves high cohesion within modules and low coupling between them. This combination leads to systems that are easier to understand, maintain, and extend.
**Trade-offs**: Sometimes, achieving high cohesion may lead to tighter coupling. However, careful design can often mitigate this issue by using interfaces and design patterns.
