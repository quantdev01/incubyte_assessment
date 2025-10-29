class StringCalculator{
  int add(String numbers){
    if (numbers == '') return 0;
    if (numbers.length == 1) return 1;
    
    List<String> listStrings = numbers.split(RegExp(r'[, \n]+'));
    List<int> stringToInt = listStrings.map(int.parse).toList();
    return sum(stringToInt);
    
  }
}

int sum(List myList){
  int sum = 0;
  for (int i=0; i < myList.length; i++){
    sum = sum + myList[i] as int;

  }
  return sum;
}