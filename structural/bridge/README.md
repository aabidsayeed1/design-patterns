# Bridge Design Pattern 🌉

### What is It? 🛠️
The Bridge Design Pattern is a structural coding concept that:

- Allows splitting a large class or closely related classes into two separate hierarchies: abstraction and implementation.
- Enables independent development of the abstraction and implementation layers.
- Prevents the exponential growth of class combinations in complex hierarchies.

<br>

### When to Use It? 💡
- You want to separate abstraction from its implementation to allow both to evolve independently.
- Your class hierarchy becomes unmanageable due to multiple variations in functionality and their combinations.
- You need to extend a class in multiple orthogonal dimensions, such as supporting different GUIs and APIs.
- You want to switch implementations at runtime without altering the client code.

<br>

## Example - Shapes and Colors 🎨
Imagine you have a Shape class with subclasses Circle and Square. Now, you want to incorporate colors like Red and Blue into these shapes. Using traditional inheritance, you'd end up with an explosion of class combinations: BlueCircle, RedSquare, and so on.

The Bridge Pattern provides an elegant solution. It separates the shapes (abstraction) from their colors (implementation). Shapes reference color objects, allowing new shapes and colors to be added without creating numerous subclasses.

<br>

## Pattern Structure 🧩
- **Abstraction:** Represents the high-level control layer for entities. Delegates work to the implementation.

- **Refined Abstraction:** Variants of the control logic, working with different implementations.

- **Implementation:** Declares the interface common to all concrete implementations.

- **Concrete Implementations:** Platform-specific code, following the implementation interface.

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/bridge