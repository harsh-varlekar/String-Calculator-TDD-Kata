# String Calculator TDD Kata

This project implements a simple **String Calculator** using Test-Driven Development (TDD) principles. The calculator can handle addition of numbers in various formats and throws exceptions for invalid inputs such as negative numbers.

## Features

- **Empty String**: Returns 0 for an empty string.
- **Single Number**: Returns the number itself when given a single number.
- **Comma-Separated Numbers**: Returns the sum for numbers separated by commas.
- **New Line Separators**: Supports numbers separated by newlines (`\n`).
- **Custom Delimiters**: Allows custom delimiters as defined in the input string.
- **Negative Number Handling**: Throws an exception with a detailed message for negative numbers.

## Requirements

- Ruby 2.7 or later
- RSpec for testing

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/string-calculator-tdd-kata.git
   cd string-calculator-tdd-kata
