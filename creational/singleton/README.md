# Singleton Design Pattern 🎯

### What is It? 🛠️

The Singleton Design Pattern is a creational coding concept that:

- Ensures a class has only one instance, providing a global access point to this instance.
- Guarantees that the same instance is shared across the entire application.
- Offers strict control over the instantiation of objects, preventing multiple instances.


### When to Use It? 💡

- You require a single instance of a class available to all clients, such as a global configuration manager.
- You want to ensure that there's only one instance of a particular class throughout the application.
- You need a centralized point of access for shared resources, such as a database connection or logging service. 

Or just don't. Use dependency injection instead. 🤷‍♀️


<br>


## Example - Database Connection Manager 📊

Imagine you're building a data-driven application where multiple components need access to a database connection. To maintain consistency and prevent multiple database connections, you apply the Singleton Pattern.

This pattern ensures that all parts of your application share the same database connection instance, preventing unnecessary overhead. 📈💾

<br>


## Pattern Structure 🧩
- **Singleton Class:** Declares a private constructor to prevent direct instantiation. Provides a static method for accessing the single instance.

- **Private Static Instance:** Stores the single instance of the class, usually in a private static field.

- **Static Creation Method:** The primary way to obtain the Singleton instance, it initializes the instance on the first call and returns the cached instance in subsequent calls.

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/singleton