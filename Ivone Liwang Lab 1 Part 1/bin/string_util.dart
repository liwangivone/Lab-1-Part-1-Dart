// Recursively get numbers for the current row
String getRowNumbers(List<int> numList, int index, int row) {
  // Base case: if we've added enough numbers for this row
  if (row == 0 || index >= numList.length) {
    return '';
  }

  // Recursively build the row string
  return '${numList[index]} ${getRowNumbers(numList, index + 1, row - 1)}';
}
