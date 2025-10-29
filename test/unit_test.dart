import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/incubyte_assessment.dart';

void main(){
  group('String Calculator', (){
    group('1. Tests', (){
      final stringCalculator = StringCalculator();
      test('Empty String', (){
        expect(stringCalculator.add(""), 0);
      });
      test('One number', (){
        expect(stringCalculator.add('1'), 1);
      });
      test('2 Numbers ', (){
        expect(stringCalculator.add('1,1'), 2);
      });
      
      
    });
  });
}