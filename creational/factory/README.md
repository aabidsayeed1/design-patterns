# Factory Pattern 🏭

### 🛠️ What is It? 

The Factory Method is a neat coding concept that:

- Defines an interface (or an abstract class) for creating objects.
- Lets subclasses take charge of the actual object creation.
- Encourages clients to use this method for object creation, making things clean and organized.


### 💡 When to Use It?
- When a class cannot anticipate the type of objects it must create.
- When you're in the mood to let subclasses take charge of creating objects.
- When a class wants to provide a way for clients to extend and customize the creation of objects without modifying the existing code.



## Example - Logistics Application 🚚 🚢

Imagine you're developing a logistics app, initially designed for truck transportation. As the app becomes more popular, sea transportation companies want to hop on board. 

However, the existing code heavily relies on the Truck class, making it challenging to incorporate new transportation types like Ships. Attempting to add new classes without careful design would lead to a complex, hard-to-maintain codebase.

The given example uses a Factory Pattern to seamlessly incorporate new transportation types like Ships into the app, maintaining code simplicity and ensuring easy scalability. 🚢✨


## Example Source 📚
The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/factory-method