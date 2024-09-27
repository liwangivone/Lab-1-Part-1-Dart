import 'string_util.dart';
import 'RowCalculator.dart'; // Importing the new file for row calculation

// Main function to print the triangular pattern
void printTrianglePattern(List<int> numList) {
  int row = 1; // Start with row 1
  int index = 0; // Index in the list
  int listLength = numList.length;

  // Find the total number of rows for centering purposes using the function from another file
  int totalRows = calculateTotalRows(listLength);

  // While loop to print each row
  while (index < listLength) {
    // Get numbers for the current row using recursion
    String rowNumbers = getRowNumbers(numList, index, row);

    // Calculate the max row width based on the total number of rows
    int maxRowWidth = totalRows * 2 - 1;
    int rowWidth = rowNumbers.length;

    // Calculate padding to center-align
    int leftPadding = (maxRowWidth - rowWidth) ~/ 2;

    // Print the centered row
    print(' ' * leftPadding + rowNumbers);

    // Update the index and row count
    index += row;
    row++;

    // If condition to exit if the list has been fully printed
    if (index >= listLength) break;
  }
}
