# Command Design Pattern 🕹️

### What is It? 🛠️

The Command pattern is a behavioral design pattern that:

- Transforms a request into a stand-alone object, encapsulating all the necessary information about the request.
- Enables you to parameterize objects with operations, allowing specific method calls to become stand-alone objects.
- Supports undoable operations by maintaining a history of executed commands.
- Facilitates queuing operations, scheduling their execution, and executing them remotely by serializing command objects.


<br>

### When to Use It? 💡

- You want to parametrize objects with operations, turning specific method calls into stand-alone objects.
- You need to queue operations, schedule their execution, or execute them remotely by serializing command objects.
- You want to implement reversible operations, such as undo and redo, by maintaining a history of executed commands.

<br>

## Example - Text Editor Commands 📄

Imagine you're developing a text editor application. Users can perform various actions like copying, cutting, pasting, and undoing their changes. Implementing these actions directly in buttons or menus would lead to a complex and tightly coupled codebase.

The Command Pattern comes to the rescue. You can create command objects for each action, encapsulating the necessary logic. When a user interacts with the editor, the corresponding command is executed, making the code more modular and flexible.

<br>

## Pattern Structure 🧩

- **Invoker (Sender):** Responsible for initiating requests and storing references to command objects. It triggers command execution instead of sending requests directly to receivers.

- **Command:** An interface defining a single execution method. Concrete commands implement various requests and determine how requests are passed to receivers.

- **Concrete Commands:** Implement specific requests and delegate the actual work to receivers. They may also handle parameter initialization via constructors.

- **Receiver:** Contains the business logic for executing commands. Almost any object can act as a receiver.





<br>

## Example Source 📚

The example is adapted from Refactoring Guru - an excellent resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/commandx