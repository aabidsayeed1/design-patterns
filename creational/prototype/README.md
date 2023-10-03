# Prototype Design Pattern 🧬

### What is It? 🛠️
The Prototype Design Pattern is a versatile coding concept that:

- Allows you to create new objects by copying existing ones, known as prototypes.
- Frees your code from being dependent on concrete classes, making it ideal for object copying and cloning.
- Simplifies the creation of objects, especially in scenarios where multiple variations are needed.

### When to Use It? 💡

- You need to create copies of objects without knowing their concrete classes.
- Your code requires the flexibility to add new types of objects that can be cloned without altering existing code.
- You want to reduce the number of subclasses that only differ in their initialization process.


<br>

## Example - Cloning Geometric Shapes 🟣🔵

Imagine you're working on a graphics application, and you need to create various geometric shapes, such as circles and rectangles. These shapes come in different sizes, colors, and styles. You want to efficiently create copies of these shapes without having to deal with their specific classes.

The Prototype Pattern simplifies this process by defining a common interface for all shapes and enabling you to clone objects without worrying about their concrete classes. 🎨✂️

<br>

## Pattern Structure 🧩

- **Prototype Interface:** Declares the clone method, ensuring consistency among concrete prototypes.

- **Concrete Prototypes:** Represent various object types (e.g., Circle, Rectangle) implementing the clone method to create new instances and copy field values from the original object.

- **Prototype Registry (Optional):** Simplifies accessing frequently-used prototypes by enabling retrieval and cloning based on criteria like names or attributes.

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/prototype