# TDD-WORKSHOP

This repository aims to share some testing techniques.
Keep in mind that the code you will see reflects the final stage, it doesn't guide
you through the process of refactoring your code (and test), that's why you should
read the [exercises](exercises/) beforehand and try it yourself.

You should use this repository as a reference.


## Advices

1. Write the assertion first and work backwards
2. Run the test to ensure it fails in the way you expect it to
3. Write meaningful tests that are self- explanatory
4. Tests should only have one reason to fail
5. Triangulate through concrete examples towards general solutions
6. Don’t refactor when tests are failing
7. Keep your test and model code separate
8. Isolate your tests so they run independently
9. Organise tests to reflect organisation of model code
10. **Maintain your tests**

### Users & Their Goals

It's important that when you develop software for someone you get to talk with the person (or people) who will use the software.

Talk with them to figure out what are the requirements and make sure the language you use in your features
are common words known to your clients business, if you can't come up with a name for a specific feature make sure
you approach your client and you work together to come up with a meaningful name for that feature,
never come up with your own names, **the software should adapt to the business not the business to the software**.


## Test Doubles

_Test double_ is a generic term for any object that stands in for a real object during a test - think of "stunt double" in movies.

### Stub

Class with test-specific implementation (hard-coded responses)

### Fake

A full implementation for test purposes (e.g. in-memory database)

### Mock

An interface with expectations set for the test (implementation generated at runtime by mocking framework)

### Dummy

A null or dummy object to be used as parameter value when test doesn't care


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Davidslv/tdd-workshop. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

[MIT License](LICENSE.txt)
