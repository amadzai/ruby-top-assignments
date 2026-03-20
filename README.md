# The Odin Project Ruby Assignments

Ruby assignments from The Odin Project course.

## Caesar Cipher

Build a `caesar_cipher` method that takes a string and a shift value, then returns a new string where each alphabetical character is shifted to the right by that amount while preserving uppercase/lowercase letters and leaving non-letter characters unchanged; the key challenges are converting characters to numeric values, wrapping from `z` back to `a`, and applying the same logic consistently across mixed input.

## Sub Strings

Implement a `substrings` method that accepts an input string and a dictionary array, then returns a hash counting how many times each dictionary word appears in the input in a case-insensitive way, including across multi-word sentences with punctuation, so the main focus is scanning text reliably and aggregating substring frequencies into a clear result map.

## Stock Picker

Create a `stock_picker` method that receives daily stock prices and returns the best `[buy_day, sell_day]` pair (0-based) that yields the highest possible profit, ensuring the buy day always comes before the sell day and handling edge cases where obvious min/max values would produce invalid trades.

## Bubble Sort

Write a `bubble_sort` method that sorts an array using the bubble sort algorithm itself (not Ruby's built-in `sort`) by repeatedly comparing adjacent elements and swapping them when out of order until no swaps are needed, demonstrating the core mechanics of iterative comparison-based sorting even though it is less efficient than advanced algorithms.
