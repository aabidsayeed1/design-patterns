# Chain of Responsibility 🔗

### What is It? 🛠️

The Chain of Responsibility is a behavioral pattern that:

- Allows you to pass requests along a chain of handlers.
- Each handler decides whether to process the request or pass it to the next handler in the chain.
- Provides a flexible way to process requests with different behaviors and responsibilities.

<br>

### When to Use It? 💡

Use the Chain of Responsibility pattern when:

- Your program needs to process different types of requests with varying behaviors.
- The specific handlers for each request are determined at runtime.
- You want to decouple senders of requests from receivers, allowing multiple handlers to process a request.

<br>

## Example - Secure Ordering System 🛒

Imagine you're developing a secure ordering system. To ensure security, you implement a series of sequential checks before allowing a request to proceed. These checks include authentication, authorisation, IP filtering, and caching.

The Chain of Responsibility Pattern enables you to create a chain of handlers, where each handler performs a specific check. The request travels through the chain until a handler decides whether to process it or pass it to the next handler.

This pattern helps you keep your code clean, extensible, and easy to maintain by separating the responsibilities of each check.

<br>

## Pattern Structure 🧩

- **Handler:** Defines an interface for handling requests and contains a reference to the next handler in the chain.

- **Concrete Handlers:** Implement the handler interface and decide whether to process a request or pass it to the next handler. Each concrete handler focuses on a specific aspect of request processing.

- **Client:** Initiates the request and passes it to the first handler in the chain. The client is unaware of the specific handlers in the chain.

<br>

## Example Source 📚
The example is adapted from Refactoring Guru - an excellent resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/chain-of-responsibility
