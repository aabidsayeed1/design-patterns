# Builder Pattern 🏡

### 🛠️ What is It? 

The Builder Pattern is a versatile creational design pattern that:

- Allows you to construct complex objects step by step, separating the construction process from the representation.

- Provides a flexible way to create different types and representations of an object using the same construction code.

- Helps manage objects with optional parameters in an organized manner, eliminating the need for a "telescoping constructor."



### 💡 When to Use It?

- You have a complex object that requires step-by-step initialization of many fields and nested objects.

- You want to create different representations of an object without having to create a large number of subclasses.

- You need to construct objects with optional parameters in a flexible and readable way.

## Example - Building Houses 🏡

Imagine you're tasked with developing a system for constructing houses of various types and configurations. 

Initially, you have a simple House class, but as requirements evolve, you need to accommodate houses with different features, such as pools, garages, and gardens. Building houses directly using constructors would lead to unwieldy, sprawling code, especially when many features are optional. 

This example will demonstrate how the Builder Pattern comes to the rescue, allowing you to create houses step by step, avoiding complex constructors, and ensuring flexibility in constructing houses with diverse features. 🏠🌳🏊‍♂️🚗

## Pattern Structure 🧩

**Product:** Represents the complex object that we aim to construct using the Builder Pattern, such as a House. It contains attributes and properties that need to be initialized during construction.

**Builder:** An interface defining individual construction steps required to assemble the Product. It abstracts away complex initialization and allows for various Product variations.

**Concrete Builders:** Concrete classes implementing the Builder interface, providing specific implementations for building distinct variations of the Product. For example, ConcreteHouseBuilder and WoodenHouseBuilder.

**Director (Optional):** A class that orchestrates the construction process, determining the sequence of building steps to create a particular configuration of the Product. While optional, it simplifies the creation of complex objects by guiding the Builder. Clients can also interact directly with the Builder if preferred.

## Example Source 📚
The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/builder

