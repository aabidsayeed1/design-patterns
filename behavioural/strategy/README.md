# Strategy Design Pattern 🌐

### What is It? 🛠️

The Strategy Design Pattern is a behavioral design pattern that:

- Allows you to define a family of algorithms.
- Encourages encapsulating each algorithm in a separate class.
- Enables interchangeability of these algorithm classes.
- Helps objects to vary their behavior dynamically at runtime by selecting an appropriate algorithm from the family.

<br>

### When to Use It? 💡

- You need to use different variants of an algorithm within an object and switch between them at runtime.
- You want to avoid massive conditional statements that select and execute different variants of the same algorithm.
- Your class has multiple similar subclasses that differ mainly in the way they execute a specific behavior.
- You want to isolate the business logic of a class from the implementation details of algorithms.
- You need to simplify teamwork by reducing the chances of merge conflicts when multiple developers work on different algorithms within a class.

<br>


## Example - Navigation App 🗺️

Imagine you're developing a navigation app for travelers. Users can choose different modes of transportation (e.g., car, walking, public transport) to plan their routes. Initially, your app's code becomes cumbersome as you add more routing options, leading to maintenance challenges.

With the Strategy Pattern, you create strategy classes (e.g., CarRoute, WalkingRoute) for different routing algorithms. The main NavigationApp class switches between these strategies at runtime, giving users seamless control over route planning.

This pattern simplifies code, enabling easy addition or modification of routing strategies.



<br>


## Pattern Structure 🧩

- **Context (NavigationApp):** The main class that maintains a reference to a selected route strategy and delegates route planning to it.

- **Strategy (RouteStrategy):** The interface that declares a common method for all concrete route strategies. This interface ensures interchangeability.

- **Concrete Strategies:** Classes that implement specific routing algorithms, adhering to the strategy interface. Each strategy may build routes differently.


<br>


## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/strategy