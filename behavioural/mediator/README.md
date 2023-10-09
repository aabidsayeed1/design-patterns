
# Mediator Design Pattern 🤝

### What is It? 🛠️

The Mediator is a behavioral design pattern that:

- Reduces chaotic dependencies between objects by restricting direct communication.
- Encourages objects to collaborate only via a mediator object.
- Helps manage interdependencies in complex systems, enhancing maintainability and reusability.

<br>

### When to Use It? 💡

- When you want to minimize dependencies between objects to make them more independent.
- When components of a system need to communicate indirectly to avoid tight coupling.
- When you need to reuse components in different contexts by providing them with different mediator implementations.
- When creating numerous subclasses of components to reuse basic behavior in various contexts becomes unwieldy.


<br>


## Example - UI Dialog with Mediator 🖥️ ✨

Imagine you're developing a user interface dialog for creating and editing customer profiles. The dialog contains various form controls like text fields, checkboxes, and buttons.

The challenge is that these form elements interact with each other, leading to complex relationships. For instance, selecting a checkbox may reveal or hide other fields, and the submit button must validate all fields before saving data.

Here's where the Mediator Design Pattern comes to the rescue! By introducing a mediator, the form elements communicate indirectly, reducing dependencies and making the dialog more maintainable and reusable.


<br>


## Pattern Structure 🧩

- **Mediator:** Defines methods for communication between components, ensuring loose coupling.

- **Concrete Mediator:** Manages relationships between components, often storing references to all components.

- **Component:** Stores a reference to the mediator and communicates with it using the mediator's interface.

- **Concrete Components:** Implement component-specific behavior and notify the mediator about events, allowing indirect communication.


<br>


## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/mediator
