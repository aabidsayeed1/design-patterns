# Proxy Design Pattern 🛡️

### What is It? 🛠️
The Proxy Design Pattern is a structural pattern that allows you to:

- Provide a substitute or placeholder for another object.
- Control access to the original object, enabling you to perform tasks before or after requests reach the original object.

<br>

### When to Use It? 💡

- **Lazy Initialization (Virtual Proxy):** Delay resource-intensive object creation until necessary.

- **Access Control (Protection Proxy):** Restrict access to service objects based on client credentials for security.
- **Local Execution of Remote Services (Remote Proxy):** Handle remote service interactions and network complexities.
- **Logging Requests (Logging Proxy):** Maintain request logs before forwarding them to the service.
- **Caching Request Results (Caching Proxy):** Improve performance by storing and managing cached results for repetitive requests.
- **Smart Reference:** Manage heavyweight object lifecycles and identify modifications by clients for efficient resource usage.



<br>

## Example - YouTube Video Downloader 📺
Imagine you're working with a 3rd-party YouTube integration library. However, it lacks efficient caching, resulting in unnecessary video downloads. 

By using the Proxy Pattern, you can create a CachedYouTubeClass that caches video information, preventing redundant downloads.

<br>

## Pattern Structure 🧩

- **Service Interface:** Declares the interface of the Service. Both the proxy and real service objects follow this interface.

- **Service:** A class that provides useful business logic. It's the real object that the proxy delegates work to.

- **Proxy:** Contains a reference to the service object. It can perform tasks before or after forwarding requests to the service.

- **Client:** Works with both the service and proxy through the same interface, unaware of whether it's using a proxy or a real service (YoutubeManager).

<br>

## Example Source 📚

The example is adapted from Refactoring Guru, a valuable resource for learning about software design patterns. <br>
https://refactoring.guru/design-patterns/proxy