# String Calculator

A simple Ruby class, `StringCalculator`, designed to sum numbers from a string input according to specified rules. This project follows Test-Driven Development (TDD) principles and includes various features such as custom delimiters and handling different formats.

## Features

1. **Sum of Numbers**: Add numbers provided in a string format.
2. **Empty String Handling**: Returns 0 for an empty string.
3. **single Number Handling**: Returns number itself for an single string.
4. **Comma and New Line Delimiters**: Supports numbers separated by commas or new lines.
5. **Custom Delimiters**: Allows custom delimiters defined in the string (e.g., `//;\n1;2;3`).
6. **Negative Numbers**: Throws an exception if negative numbers are provided, listing all negatives.
7. **Ignore Large Numbers**: Ignores numbers greater than 1000.
8. **Method Called Count**: Tracks how many times the `add` method has been called.

## Setup

### Prerequisites

- Ruby (version 2.6 or later recommended)
- Bundler (for managing dependencies)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/rutani-thakkar/string-calculator.git
   cd string-calculator

2. Install the dependencies:

   ```bash
   bundle install

3. Run Test cases

   ```bash
   bundle exec rspec
