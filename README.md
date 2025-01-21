# Unhandled Exception Propagation in Dart

This repository demonstrates a common issue in Dart asynchronous programming: forgetting to rethrow exceptions after catching them in a `try-catch` block.  The example shows how to correctly handle and propagate exceptions using `rethrow`.

## The Problem

The initial code handles exceptions during the API call, but only logs the error.  This prevents higher-level functions from responding to failures, leading to silent errors.

## The Solution

The solution includes the `rethrow` statement.  This propagates the exception up the call stack, ensuring that the error is handled at a higher level, potentially providing better user feedback or recovering gracefully. 

## How to Run

1. Clone the repository
2. Navigate to the project directory
3. Run `dart bug.dart`
4. Observe the output, which demonstrates the improved error handling.