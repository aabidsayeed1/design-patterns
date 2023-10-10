
# Template Method Design Pattern 📑

### What is It? 🛠️

The Template Method Design Pattern is a behavioral design pattern that:

- Breaks down an algorithm into a series of steps.
- Defines a template method that contains a skeleton of the algorithm's structure.
- Allows subclasses to implement specific steps of the algorithm without changing its structure.
- Encourages code reuse and avoids code duplication in similar algorithms.

<br>

### When to Use It? 💡

- When you want to let clients extend particular steps of an algorithm without changing its overall structure.
- When you have multiple classes with almost identical algorithms but minor differences.
- When you need to eliminate code duplication by pulling up common steps into a superclass.

<br>


## Example - Data Mining App 🗂️ 📈

Imagine developing a data mining application that analyzes corporate documents in various formats (PDF, DOC, CSV). Initially, each format had its own class with duplicate code for data processing. By applying the Template Method pattern, you can create a base class for document processing, define a template method for the common steps, and let subclasses implement format-specific steps.

This approach eliminates code duplication, simplifies maintenance, and promotes code consistency across different document formats.

<br>


## Pattern Structure 🧩

- **Abstract Class (DocumentProcessor):** Declares the template method that contains the algorithm's structure, including calls to abstract and optional methods.

- **Concrete Classes:** Subclasses that implement specific steps of the algorithm, overriding abstract methods as needed. They do not modify the template method itself.

<br>


## Example Source 📚

The example is adapted from Refactoring Guru - a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/template-method