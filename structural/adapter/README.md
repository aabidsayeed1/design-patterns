# Adapter Design Pattern 🚧


### What is It? 🛠️
The Adapter Design Pattern is a structural coding concept that:

- Facilitates collaboration between objects with incompatible interfaces.
- Allows you to integrate existing classes or systems into your codebase without altering their original structure.
- Acts as a bridge, providing a wrapper that translates one interface into another.

<br>

### When to Use It? 💡

- You want to use an existing class or system with an interface that doesn't match the requirements of your code.
- You need to adapt and integrate third-party libraries, legacy code, or components with different interfaces.
- You aim to create a middle-layer class that serves as a translator between your code and classes with incompatible interfaces.


<br>


## Example - Square Peg in a Round Hole 🟩🔴

Imagine you have a system that works with round holes and round pegs, but now you need to incorporate square pegs. The problem: square pegs don't fit into round holes. This is where the Adapter Pattern comes in!

By creating a Square Peg Adapter, you can seamlessly integrate square pegs into your existing system, adapting their interface to match the round pegs' interface. 🟥🔴

<br>

## Pattern Structure 🧩

- **Client:** Contains the existing business logic of the program and relies on the client interface.

- **Client Interface:** Describes a protocol that other classes must follow to collaborate with the client code.

- **Service:** Represents a useful class, often third-party, legacy, or with existing dependencies, with an incompatible interface.

- **Adapter:** Acts as a bridge between the client and service, implementing the client interface and wrapping the service object. Translates client calls into a format the service can understand.

The client code remains decoupled from the concrete adapter class, allowing for the introduction of new adapters without altering existing client code.

<br>

## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/adapter