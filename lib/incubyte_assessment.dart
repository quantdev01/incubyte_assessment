class StringCalculator{
  int add(String numbers){
    if (numbers == '') return 0;
    if (numbers.length == 1) return 1;
    if (numbers.length > 1 && numbers[0] == '/' && numbers[1] == '/'){
      String newListNumbers = numbers.substring(3);
      List<String> listStrings = newListNumbers.split(numbers[2]);
      List<int> stringToInt = listStrings.map(int.parse).toList();
      negativesNotAllowed(stringToInt);
      return sum(stringToInt);
    }
    List<String> listStrings = numbers.split(RegExp(r'[, \n]+'));
    List<int> stringToInt = listStrings.map(int.parse).toList();
    negativesNotAllowed(stringToInt);
    return sum(stringToInt);
  }
}

void negativesNotAllowed(List<int> myList){
  for (int i=0; i < myList.length; i++){
    if (myList[i] < 0){
      throw Exception('negatives not allowed ${myList[i]}');
    }
  }
}


int sum(List myList){
  int sum = 0;
  for (int i=0; i < myList.length; i++){
    sum = sum + myList[i] as int;

  }
  return sum;
}