# Coroutines quikc guide

**Coroutines** are a way of writing asynchronous code that's much simpler and more efficient than traditional callbacks or threads. In Kotlin, coroutines are built on top of the kotlinx.coroutines library.

## Key Concepts in Coroutines

**Coroutine**: A coroutine is a suspendable function that can be paused and resumed at specific points, allowing other coroutines to run in between.
**CoroutineScope**: A coroutine scope is an object that defines the scope of a coroutine, including its lifetime and cancellation.
**Suspend Function**: A suspend function is a function that can be paused and resumed, allowing other coroutines to run in between.
**Context**: A context is an object that provides information about the current coroutine, such as its scope and dispatcher.

## Suspending Functions
A **suspending function** is a function that can be paused and resumed, allowing other coroutines to run in between. To define a suspending function, you need to use the suspend keyword

## CoroutineScope
A **coroutine scope** is an object that defines the scope of a coroutine, including its lifetime and cancellation. You can create a coroutine scope using the CoroutineScope constructor

## Coroutine Builders

**Coroutine builders** are functions that create coroutines with specific properties, such as the dispatcher or the scope. Some common coroutine builders include:

**launch**: Creates a coroutine that runs in the specified scope and dispatcher.
**async**: Creates a coroutine that returns a value and runs in the specified scope and dispatcher.
**runBlocking**: Creates a coroutine that blocks the current thread until it completes.


## Coroutine Context
A **coroutine context** is an object that provides information about the current coroutine, such as its scope and dispatcher. You can access the coroutine context using the coroutineContext property

## Cancellation
**Coroutines** can be cancelled using the cancel function ( job = launch{...}.cancel() )

## Coroutine Best Practices

- Use coroutines for I/O-bound operations: Coroutines are best suited for I/O-bound operations, such as network requests or database queries.
- Use coroutines for CPU-bound operations with caution: Coroutines can be used for CPU-bound operations, but be careful not to block the thread or starve other coroutines.
- Use coroutine scopes to manage lifetime: Use coroutine scopes to manage the lifetime of coroutines and ensure they are cancelled when no longer needed.
- Use coroutine builders to create coroutines: Use coroutine builders to create coroutines with specific properties, such as the dispatcher or scope.
Common Use Cases for Coroutines

**Network requests**: Coroutines are well-suited for making network requests, such as API calls or downloading files.
**Database queries**: Coroutines can be used to make database queries, such as reading or writing data to a database.
**Background tasks**: Coroutines can be used to run background tasks, such as indexing data or sending notifications.
**UI updates**: Coroutines can be used to update pieces of UI independently from other parts

---
