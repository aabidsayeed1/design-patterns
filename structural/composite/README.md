# Composite Design Pattern 🌲

### What is It? 🛠️
The Composite Design Pattern is a structural pattern that allows you to:

- Compose objects into tree structures to represent part-whole hierarchies.
- Work with individual objects and compositions uniformly.
- Simplify client code by treating individual objects and compositions uniformly.

<br>

### When to Use It? 💡

- You need to represent part-whole hierarchies, such as structures with nested elements.
- You want clients to treat individual objects and compositions uniformly.
- You want to simplify complex structures and client code by using a common interface.

<br>

## Example - Box and Product Packaging 📦

Consider a packaging system with two types of objects: Box and Product. A Box can contain multiple Products or other Boxes. The goal is to calculate the total cost of items in a box, including nested boxes and products.

The Composite Pattern allows you to create a hierarchy where both individual products and nested boxes are treated uniformly, making it easy to calculate the total cost of complex structures.

<br>

## Pattern Structure 🧩

- **Component:** The common interface that declares operations for both simple and complex objects.

- **Leaf:** Represents individual objects (e.g., Product) with no children.

- **Composite:** Represents complex objects (e.g., Box) that can contain children (both Products and other Boxes).

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/composite