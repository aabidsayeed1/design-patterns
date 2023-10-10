# Observer Design Pattern 🕵️‍♂️

### What is It? 🛠️
The Observer Design Pattern is a behavioral design pattern that:

- Defines a subscription mechanism to notify multiple objects (subscribers) about any events that happen to the object they're observing (the publisher).
- Reduces direct dependencies between objects and promotes loose coupling.
- Allows objects to dynamically register or unregister as observers.

<br>

### When to Use It? 💡

- Changes to one object's state should trigger changes in other objects, and you want to decouple the sender (publisher) from the receiver (subscriber).
- You need to notify multiple objects about events, and the set of objects is not known beforehand or may change dynamically.
- You want to establish a one-to-many relationship between objects, where one object (the publisher) broadcasts updates to multiple dependent objects (subscribers).


<br>


## Example - Shop and Customer Subscription 🛍️

Imagine a scenario with Customers and a Shop. Customers are eagerly waiting for a new product from the Shop. They could visit daily to check, but most visits would be futile. Alternatively, the Shop could spam emails to all Customers, upsetting those uninterested. 

The Observer Pattern solves this. The Shop is the publisher, maintaining a list of Customers. When the new product arrives, the Shop notifies interested Customers. Customers can subscribe or unsubscribe as per their interests, efficiently managing notifications without tight coupling, streamlining communication between the Shop and Customers.


<br>


## Pattern Structure 🧩


- **Publisher (Subject):** The object that maintains a list of observers (subscribers) and notifies them of state changes or events. It provides methods to attach, detach, and notify observers.

- **Concrete Publisher:** A specific implementation of the publisher, often containing business logic that triggers notifications to observers.

- **Observer (Subscriber):** The interface that defines the update method, which concrete observers must implement to receive notifications.

- **Concrete Observer:** The concrete implementation of the observer interface. These objects react to notifications sent by the publisher.

- **Client:** Creates instances of publishers and subscribers, registers subscribers with publishers, and triggers events or state changes.

<br>


## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/observer