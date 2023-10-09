# Memento Design Pattern ⏳ ⏮ 

### What is It? 🛠️

Memento is a behavioral design pattern that:

- Allows you to capture and restore the previous state of an object without exposing its internal details.
- Provides a way to implement features like undo/redo functionality and managing object states.
- Helps in decoupling the originator object from the saved state to ensure loose coupling.

<br>

### When to Use It? 💡

- You need to implement a mechanism to save and restore the state of objects.
- You want to provide undo/redo functionality in your application.
- Directly managing object states would lead to violating encapsulation and exposing internal details.
- You want to decouple the originator object from the saved state to ensure loose coupling.

<br>

## Example - Text Editor with Memento 📝

Imagine you're building a text editor application that allows users to edit documents and undo their actions. The Memento Design Pattern comes in handy here. Before performing any action (e.g., typing, formatting), the application captures a snapshot of the document's state and stores it in a memento. If a user wants to undo an action, the application restores the document's state from the memento.

By using the Memento pattern, you can efficiently manage the document's history and provide a seamless undo/redo experience to users.

<br>

## Pattern Structure 🧩

- **Originator:** The class (e.g., text editor) that creates mementos to capture and restore its state.

- **Memento:** An object that stores the state of the originator. It has limited access to the originator's state.

- **Caretaker:** The class responsible for keeping track of mementos and deciding when to capture and restore the originator's state.

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/memento

