
# Iterator Design Pattern 🔄

### What is It? 🛠️

The Iterator is a behavioral design pattern that:

- Allows you to traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).
- Extracts traversal behavior into a separate object called an iterator, encapsulating traversal details.
- Supports multiple traversal algorithms, enabling independent iterations over the same collection.
- Provides a clean and efficient way to access elements in complex data structures, such as trees and graphs.

<br>

### When to Use It? 💡

- You want to hide the internal structure of a collection while enabling efficient access to its elements.
- You aim to reduce code duplication by centralizing traversal logic in iterators, making your code cleaner and more maintainable.
- Your code needs to work with various types of collections or when the types of collections are unknown beforehand.


<br>

## Example - Social Profile Iterator 📱👥

Imagine you're developing a social network application that needs to traverse users' profiles for various purposes, such as sending messages to friends or coworkers. These profiles can be stored in complex data structures, and you want to access them without exposing the underlying structure.

The challenge is to provide seamless traversal of social profiles regardless of the data structure, allowing users to interact with their connections easily. 

Here's where the Iterator Design Pattern comes to the rescue! It abstracts the traversal logic, providing a consistent way to access profiles.

<br>

## Pattern Structure 🧩

- **Iterator:** Defines the operations for traversing a collection, including fetching the next element, checking for more elements, and restarting iteration.

- **Concrete Iterators:** Implement specific traversal algorithms for collections, allowing multiple iterators to work independently on the same collection.

- **Collection:** Declares methods for obtaining iterators that match the collection, ensuring compatibility with various iterators.

- **Concrete Collections:** Provide instances of specific concrete iterator classes when requested by clients, managing the collection and its elements.

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - an excellent resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/iterator