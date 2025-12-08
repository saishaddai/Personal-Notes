# Unit Testing Quick Reference

**Unit Testing**: A software testing technique where individual components (units) of a program are tested in isolation to ensure they function correctly.
**Purpose**: To validate that each unit of the software performs as expected, catching bugs early in the development process.

## Characteristics of Unit Tests
**Isolation**: Tests should focus on a single unit of code, such as a function or method, without dependencies on other units.
**Automation**: Unit tests are typically automated, allowing for quick execution and frequent testing.
**Fast Execution**: Unit tests should run quickly to encourage frequent testing during development.


## Benefits of Unit Testing

**Early Bug Detection**: Identifies issues early in the development cycle, reducing the cost of fixing bugs later.
**Improved Code Quality**: Encourages developers to write cleaner, more modular code.
**Facilitates Refactoring**: Provides a safety net when making changes to the codebase, ensuring existing functionality remains intact.
**Documentation**: Serves as a form of documentation for the expected behavior of the code.


## Unit Testing Frameworks

**JUnit (Java)**: A widely used framework for writing and running unit tests in Java.
**Mockito (Java)**: A mocking framework that allows for the creation of mock objects to isolate units during testing.
**KotlinTest (Kotlin)**: A testing framework for Kotlin that provides a variety of testing styles and assertions.
**Spek (Kotlin)**: A specification framework for Kotlin that allows for behavior-driven development (BDD) style testing.


## Best Practices for Unit Testing

**Write Tests First (TDD)**: Consider using Test-Driven Development (TDD), where tests are written before the actual code.
**Keep Tests Independent**: Ensure that tests do not depend on each other to avoid cascading failures.
**Use Meaningful Names**: Name test methods clearly to indicate what functionality is being tested.
**Test One Thing at a Time**: Each test should focus on a single behavior or outcome.
**Use Mocks and Stubs**: Utilize mocking frameworks to simulate dependencies and isolate the unit being tested.


## Common Unit Testing Annotations (JUnit)

**@Test**: Marks a method as a test method.
**@Before**: Runs a method before each test method, often used for setup.
**@After**: Runs a method after each test method, often used for cleanup.
**@BeforeClass**: Runs once before any test methods in the class.
**@AfterClass**: Runs once after all test methods in the class.
