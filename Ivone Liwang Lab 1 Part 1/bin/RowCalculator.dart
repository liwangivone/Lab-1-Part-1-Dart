// Helper to calculate total number of rows required
int calculateTotalRows(int listLength) {
  int totalRows = 0;
  int numbersSoFar = 0;
  while (numbersSoFar < listLength) {
    totalRows++;
    numbersSoFar += totalRows;
  }
  return totalRows;
}
