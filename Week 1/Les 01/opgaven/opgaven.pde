int[] array1 = {1, 5, 3};
int[] array2 = {4, 2, 6, 7};

void setup() {
  println(telElementenOp(array1, array2));
  println(maakMaxArray(array1, array2));
}

int[] telElementenOp(int[] array1, int[] array2) {
  int maxLength = min(array1.length, array2.length);
  int[] som = new int[maxLength];
  for(int i = 0; i < maxLength; i++) {
    som[i] = array1[i] + array2[i];
  }
  return som;
}

int[] maakMaxArray(int[] array1, int[] array2) {
  int maxLength = min(array1.length, array2.length);
  int[] max = new int[maxLength];
  for(int i = 0; i < array1.length; i++) {
    max[i] = max(array1[i], array2[i]);
  }
  return max;
}