import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/incubyte_assessment.dart';

void main(){
  group('String Calculator', (){
    group('1. Tests/', (){
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

    group('2. Allow the Add method to handle Unkown numbers/', (){
      final stringCalculator = StringCalculator();
      test('Unkown amount of numbers', (){
        expect(stringCalculator.add('1,1,1,1,1,1,1,1,1,1'), 10);
      });
    });

    group('3. Allow the Add Method to hanle new lines between numbers/', (){
      final stringCalculator = StringCalculator();
      test('New lines between numbers', (){
        expect(stringCalculator.add('1\n2,3'), 6);
      });

    });

    group('4. Support different delimiters/', (){
      final stringCalculator = StringCalculator();
      test('Support different delimiters', (){
        expect(stringCalculator.add("//;\n1;2"), 3);
      });
    });

    group('5. Negative numbers not allowed/', (){
      final stringCalculator = StringCalculator();
      
      test('Negative numbers not allowed', (){
        expect(() => stringCalculator.add('-1,2'), throwsA('negatives not allowed'));
      });
    });
  });
}