# Abstract Factory Pattern 🏭 🔍

### 🛠️ What is It? 

The Abstract Factory Pattern is a clever coding concept that:

- Helps you create families of related objects without worrying about their concrete classes.

- Ensures that objects within the same family work seamlessly together.

- Encourages clients to work with abstract interfaces for a clean and flexible design.

<br>

### 💡 When to Use It?

- You need to create related objects that work together seamlessly.
- Multiple variants or styles of these objects exist, ensuring compatibility.
- You frequently add new objects or families without changing existing code.
- Runtime switching between object families is required.

<br>

## Example - Furniture Shop Simulator 🪑🛋️

Imagine you're building a furniture shop simulator. Your shop offers various product families, like chairs, sofas, and coffee tables, and each family has different style variants: Modern, Victorian, and ArtDeco. 

The challenge? Ensuring that when customers buy a set of furniture, like a Modern Chair, Modern Sofa, and Modern Coffee Table, they all match in style. Nobody wants a Modern sofa that clashes with Victorian chairs!

Here's where the Abstract Factory Pattern comes to the rescue! 🪄 It ensures that each family (e.g., chairs, sofas) has a consistent style across its products.

<br>

## Pattern Structure 🧩

**Abstract Product Interfaces:** We define interfaces for each product type (Chair, Sofa, CoffeeTable) so that all variants adhere to the same rules.

**Concrete Products:** We implement these interfaces for various style variants, such as ModernChair or VictorianSofa.

**Abstract Factory:** We create an abstract factory interface with methods for creating each product type (createChair, createSofa, createCoffeeTable).

**Concrete Factories:** For each product family variant (Modern, Victorian), we create concrete factory classes (ModernFurnitureFactory, VictorianFurnitureFactory) that implement the abstract factory interface.

<br>

## Example Source 📚
The example in this section is adapted from Refactoring Guru - a valuable resource for learning about software design patterns.
https://refactoring.guru/design-patterns/abstract-factory
