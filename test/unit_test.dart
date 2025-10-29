import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/incubyte_assessment.dart';

void main(){
  test('Calc', (){
    expect(2+2, 4);
  });

  test('Get 4', (){
    expect(add(), equals(4));
  });
}