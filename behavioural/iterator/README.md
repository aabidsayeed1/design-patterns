# Iterator Design Pattern 🚶‍♂️📜

What is It? 🛠️
The Iterator pattern is a behavioral design pattern that:

Allows you to traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).
Extracts traversal behavior into a separate object called an iterator, encapsulating traversal details.
Supports multiple traversal algorithms, enabling independent iterations over the same collection.
Provides a clean and efficient way to access elements in complex data structures, such as trees and graphs.
<br>
When to Use It? 💡
When you need to traverse elements of a collection but want to hide the complexity of its internal structure from clients.
To encapsulate different traversal algorithms within separate iterator objects, making the code more modular and maintainable.
To reduce duplication of traversal code within your application and keep the original codebase clean.
When you want your code to work with various data structures or when types of these structures are unknown beforehand.
<br>
Example - Social Network Profiles 📄
Imagine you're building a social networking platform, and you need to traverse and interact with user profiles in various ways. Users can have friends, colleagues, and different types of connections. Implementing traversal for these complex relationships directly in client code would lead to tangled and hard-to-maintain code.

The Iterator Pattern comes to the rescue. You can create iterators for various profile connections (friends, colleagues) and encapsulate the traversal logic within them. The client code can then interact with profiles without worrying about the underlying data structure or traversal algorithms.

<br>
Pattern Structure 🧩
Iterator: Declares the operations required for traversing a collection, such as fetching the next element, checking if more elements are available, and restarting iteration.

Concrete Iterators: Implement specific traversal algorithms for collections. These iterators track their traversal progress independently, allowing multiple iterators to traverse the same collection simultaneously.

Collection: Declares methods for getting iterators compatible with the collection. The return type should match the iterator interface, ensuring compatibility with various iterators.

Concrete Collections: Return instances of specific concrete iterator classes when clients request iterators. These classes are responsible for managing the collection and its elements.

Client: Works with collections and iterators through their interfaces, reducing coupling to concrete classes. Clients can create iterators directly in certain cases.

<br>