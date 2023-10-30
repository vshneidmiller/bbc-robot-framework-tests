# bbc-robot-framework-tests

# BBC Robot Framework Tests

This repository contains example tests for both UI and API components using the Robot Framework. The purpose of this README is to provide an overview of the contents and guide on how to execute the tests.

## Table of Contents

1. [Getting Started](#getting-started)
2. [UI Tests](#ui-tests)
3. [API Tests](#api-tests)
4. [Running the Tests](#running-the-tests)
5. [Contributing](#contributing)

## Getting Started

Ensure you have the required tools and libraries installed:

- Python 3.x
- Robot Framework
- Relevant browser drivers (e.g., ChromeDriver for Chrome)

You can install Robot Framework via pip:

```bash
pip install robotframework
```

## UI Tests

Our UI tests ensure the proper rendering and interactivity of web pages. Some example test cases include:

1. **Homepage Test** - Validates the homepage loads correctly and contains expected elements.
2. **Login Test** - Ensures the login functionality works as expected with valid and invalid credentials.

Files associated with UI tests can be found under the `ui_tests` directory.

## API Tests

API tests in this repository ensure that the backend services respond correctly to various endpoints and conditions. A few example test cases:

1. **Fetch Article** - Validates fetching an article based on its ID returns the correct content.
2. **Post Comment** - Ensures posting a comment on an article works and the comment is visible thereafter.

API test files are located under the `api_tests` directory.

## Running the Tests

To execute the tests, navigate to the root directory of this repository and use the Robot Framework command. Here's a basic example:

For UI tests:

```bash
robot ui_tests/
```

For API tests:

```bash
robot api_tests/
```

## Contributing

Although this repository primarily serves as a collection of example tests, any contributions to improve the tests or add new scenarios are welcome. Please follow the standard GitHub pull request process.
