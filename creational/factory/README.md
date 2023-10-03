# Factory Pattern 🏭

### 🛠️ What is It? 

The Factory Method is a neat coding concept that:

- Defines an interface (or an abstract class) for creating objects.

- Lets subclasses take charge of the actual object creation.

- Encourages clients to use this method for object creation, making things clean and organized.
  
<br>

### 💡 When to Use It?
- When a class cannot anticipate the type of objects it must create.

- When you're in the mood to let subclasses take charge of creating objects.

- When a class wants to provide a way for clients to extend and customize the creation of objects without modifying the existing code.

<br>


## Example - Logistics Application 🚚 🚢

Imagine you're developing a logistics app, initially designed for truck transportation. As the app becomes more popular, sea transportation companies want to hop on board. 

However, the existing code heavily relies on the Truck class, making it challenging to incorporate new transportation types like Ships. Attempting to add new classes without careful design would lead to a complex, hard-to-maintain codebase.

The given example uses a Factory Pattern to seamlessly incorporate new transportation types like Ships into the app, maintaining code simplicity and ensuring easy scalability. 🚢✨


<br>


## Pattern Structure 🧩

**Product:** Represents the abstract product type, defining a common interface for all transportation modes, ensuring they have essential methods like deliver.

**Concrete Products:** These are specific implementations of the Product interface, representing distinct transportation types like Truck or Ship. They determine how the deliver method works for their particular mode.

**Creator:** This class serves as the creator, declaring a factory method called createTransport that returns Product objects. Subclasses of Creator, such as RoadLogistics and SeaLogistics, override this method to create specific transport variants.

**Concrete Creators:** Subclasses of Creator, like RoadLogistics and SeaLogistics, implement the createTransport method to produce concrete transport types: trucks or ships, respectively.

<br>


## Example Source 📚
The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/factory-method
