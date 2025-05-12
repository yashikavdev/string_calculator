# String Calculator

A simple Ruby implementation of the String Calculator Kata, developed using Test-Driven Development (TDD) principles. This calculator parses strings containing numbers separated by delimiters and returns their sum.

## Features

- Returns 0 for empty strings.
- Handles numbers separated by commas (`,`) and newlines (`\n`).
- Supports custom single-character delimiters, e.g., `//;\n1;2`.
- Raises an exception when negative numbers are included, listing all negatives.

## Getting Started

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/string_calculator.git
    cd string_calculator
    ```

2. Install dependencies:

    ```bash
    bundle install
    ```

### Usage

1. Steps to run the script:

     ```bash
    ruby main.rb

    Enter numbers (comma-separated):
    "1,2,3"
    Result: 6
    ```
