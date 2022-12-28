# Style Guide

This style guide outlines the coding conventions used in this project. By adhering to these conventions, we can ensure that the codebase is consistent and easy to read for all contributors.

## Code formatting

- Use tabs for indentation (no spaces)
- Limit lines to a maximum of 80 characters
- Use snake_case for file names
- Use camelCase for variable and function names
- Use PascalCase for class names
- Use ALL_CAPS for constants

## Comments

- Use `//` for single-line comments
- Use `/*` and `*/` for multi-line comments

## Git commit messages

- Use a descriptive, imperative present tense for commit messages (e.g. "Add login feature" instead of "Added login feature")
- Limit the first line of the commit message to 50 characters
- Use the body of the commit message to provide more context and details about the changes made

## Examples

Here are some examples of code that follows these conventions:

```
// This is a single-line comment
```

```
/* This is a
multi-line comment */
```

```
class User {
  // This is a class representing a user
  String name;
  int age;
}  
```

```
const int kMaxItems = 10;
```

```
void main() {
  // This is the main function
  var user = User();
  user.name = 'John';
  user.age = 30;
}
```
