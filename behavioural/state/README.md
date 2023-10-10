# State Design Pattern 🔄

### What is It? 🛠️

The State Design Pattern is a behavioral design pattern that:

- Allows an object to alter its behavior when its internal state changes.
- Makes it appear as if the object changes its class to exhibit different behaviors.
- Encourages the management of object behavior based on discrete states.


<br>

### When to Use It? 💡

- When an object's behavior needs to change dynamically based on its internal state.
- When there are multiple states for an object, and each state has different behaviors.
- When you want to avoid using large conditional statements to manage the behavior of an object based on its state.
- When you need to add or modify states independently without affecting other states or the context.


<br>


## Example - Document States 📄

Consider a Document class that can be in one of three states: Draft, Moderation, and Published. Depending on its state, the Document class exhibits different behaviors for methods like publish and render. Additionally, the role of the current user determines whether certain actions are allowed.

The State Design Pattern separates these states into distinct classes, allowing the Document object to delegate state-specific behavior to the current state object. States can transition between each other based on predefined rules.

This pattern helps maintain clean and maintainable code by avoiding complex conditionals and enabling easy addition of new states or changes to existing ones.


<br>


## Pattern Structure 🧩

- **Context (Document):** The object that maintains a reference to the current state object and delegates state-specific behaviors to it. The context can switch between different states.

- **State (abstract class):** The interface that defines state-specific methods such as publish and render. Concrete state classes implement these methods.

- **Concrete States (Draft, Moderation, Published):** Each concrete state class represents a specific state of the context and provides its implementation for state-specific methods. Transitions between states are handled within these classes.


<br>


## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/state
