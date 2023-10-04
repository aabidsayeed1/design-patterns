# Facade Design Pattern 🏛️

### What is It? 🛠️
The Facade Design Pattern is a structural design pattern that:

- Provides a simplified and unified interface to a complex subsystem.
- Makes it easier to interact with the subsystem without exposing its intricate details.

<br>

### When to Use It? 💡

- You need to provide a straightforward and limited interface to a complex subsystem.
- The subsystem contains numerous classes and functionalities, but you only require access to a subset of them.
- You want to decouple the client code from the complexities of the subsystem, improving code readability and maintainability.
- You need to create a layering structure within the subsystem to manage its interactions effectively.

<br>

## Example - Video Conversion Framework 📽️

Consider a scenario where you have a complex video conversion framework with various classes for video file handling, codecs, and processing. Instead of exposing the intricacies of the framework to the client, you create a Facade class. This class provides a simplified method for converting videos, abstracting away the details of codec selection, bitrate adjustments, and audio mixing.

The Facade Pattern allows the client to convert videos with ease by interacting with a single class, hiding the complexity of the underlying subsystem.

<br>

## Pattern Structure 🧩

- **Facade:** Defines a unified interface to the complex subsystem. It encapsulates the interactions with the subsystem's classes and methods.

- **Complex Subsystem:** Comprises numerous classes and functionalities that form the core of the subsystem. These classes may not be aware of the facade's existence.

- **Client:** Utilizes the facade to interact with the subsystem. It accesses the subsystem's functionalities through the simplified interface provided by the facade.

<br>

## Example Source 📚
The example is adapted from Refactoring Guru - an excellent resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/facade