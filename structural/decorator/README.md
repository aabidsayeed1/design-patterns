# Decorator Design Pattern 🎨

### What is It? 🛠️
The Decorator Design Pattern is a structural pattern that allows you to:

- Attach new behaviors to objects dynamically by placing them inside special wrapper objects.
- Extend an object's functionality without altering its structure.
- Compose objects with various combinations of behaviors at runtime.

### When to Use It? 💡
Use the Decorator pattern when:

- You need to add or alter behaviors of individual objects dynamically, without affecting other objects.
- You want to avoid class explosion due to creating numerous subclasses with different combinations of behaviors.
- You have a need to extend an object's functionality, but it's not feasible or desirable to use inheritance.

## Example - Notification Library 📢
Imagine you have a notification library that initially supports sending messages via email. However, users want more options like SMS, Facebook, and Slack notifications. Using traditional inheritance would lead to a combinatorial explosion of subclasses, making the code complex.

The Decorator Pattern allows you to wrap a base notifier with decorators like SMSDecorator, FacebookDecorator, and SlackDecorator. These decorators dynamically add notification channels to the base notifier, giving users the flexibility to choose multiple notification methods.

## Pattern Structure 🧩
- **Component:** Defines the interface for objects that can have responsibilities added to them dynamically.
- **Concrete Component:** Represents the base object to which additional responsibilities can be attached.
- **Decorator:** Maintains a reference to a Component object and defines an interface that conforms to the Component's interface.
- **Concrete Decorator:** Adds responsibilities to the component.

## Example Source 📚
This example demonstrates the Decorator pattern using Dart code for a notification library. It showcases how to add multiple notification channels dynamically to a base notifier, providing flexibility for clients to choose their preferred notification methods.

Feel free to adapt and extend the example for your own projects.

---

This README provides an overview of the Decorator Design Pattern, its use cases, a practical example, and the pattern's structure. It serves as a starting point for understanding and implementing the Decorator Pattern in your software projects.