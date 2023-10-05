# Flyweight Design Pattern 🚁

### What is It? 🛠️
The Flyweight Design Pattern is a structural pattern that allows you to:

- Share common parts of state between multiple objects to optimize memory usage.
- Separate intrinsic state (shared among objects) from extrinsic state (unique for each object).
- Reduce memory consumption when dealing with a large number of similar objects.

<br>

### Key Definitions 📖

To better understand this pattern, familiarize yourself with these terms:

- **Intrinsic State:** Constant data stored within an object, often referred to as the object's core properties. Other objects can read the intrinsic state, but it remains immutable within the object. In the Flyweight pattern, intrinsic state is stored in flyweights to optimize memory usage.

- **Extrinsic State:** The unique properties or attributes of individual objects. These properties vary from one object to another and are not shared among instances. In the Flyweight pattern, extrinsic state is stored in the context of each object.


<br>

### When to Use It? 💡

Use the Flyweight pattern when:

- Your application needs to create a vast number of similar objects that consume significant memory.
- These objects share common properties or intrinsic state.
- You want to separate the shared intrinsic state from the unique extrinsic state.
- You need to balance memory efficiency with code complexity.

<br>

## Example - Particle Game 🎮

Imagine you are developing a video game with a realistic particle system. The game involves a large number of bullets, missiles, and shrapnel flying across the screen. Each particle has properties such as color and sprite, which are common across many particles, and properties like position, direction, and speed, which vary for each particle.

In this scenario, you can use the Flyweight pattern to optimize memory usage by separating the shared intrinsic state (color and sprite) into flyweights while keeping the unique extrinsic state (position and speed) in individual contexts.

<br>

## Pattern Structure 🧩

- **Flyweight:** Represents the shared intrinsic state (e.g., color and sprite) among multiple objects. It allows these objects to be used in different contexts.

- **Context:** Represents the individual objects (e.g., moving particles) with unique extrinsic state (e.g., position and speed). Each context pairs with a flyweight to create a complete object.

- **Flyweight Factory:** Manages a pool of existing flyweights and provides methods to retrieve or create flyweights based on their intrinsic state.

- **Container Class (Game):** Aggregates objects (particles and moving particles) and applies the Flyweight pattern. It stores extrinsic state (e.g., positions) in contexts (moving particles) and shares intrinsic state (e.g., color and sprite) via flyweights (particles).

<br>

## Example Source 📚

The example is adapted from Refactoring Guru, a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/flyweight
