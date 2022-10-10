
import 'package:diceulator/Common/Providers/ExpressionProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  var mockExpressionProvider = ExpressionProvider();

  /// evaluateAddSubTests
  group('evaluateAddSubTests', () {

    test('expecting 256 - 130 to equal 116', () {
      mockExpressionProvider.postRngExpression = "256-130";

      final result = mockExpressionProvider.evaluateAddSub();
      expect(result, 16);
    });

    test('expecting 186 + 213 to equal 399', () {
      mockExpressionProvider.postRngExpression = "186+213";

      final result = mockExpressionProvider.evaluateAddSub();
      expect(result, 399);
    });
  });

  /// handleDiceAndParseToStackTests
  group('handleDiceAndParseToStackTests', () {

    test('expecting 256 - 130 to equal ["256","-","130"]', () {
      const expected = ["256","-","130"];
      mockExpressionProvider.expression = "256 - 130";

      mockExpressionProvider.parseToList();
      expect(mockExpressionProvider.expressionList, expected);
    });

    test('expecting 256 + 130 to equal ["256","+","130"]', () {
      const expected = ["256","+","130"];
      mockExpressionProvider.expression = "256 + 130";

      mockExpressionProvider.parseToList();
      expect(mockExpressionProvider.expressionList, expected);
    });

    test('expecting 25D6 - 7 + 25 to equal ["25","D","6","-","7","+","25"]', () {
      const expected = ["25","D","6","-","7","+","25"];
      mockExpressionProvider.expression = "25D6 - 7 + 25";

      mockExpressionProvider.parseToList();
      expect(mockExpressionProvider.expressionList, expected);
    });

  });

  /// handleDiceTests
  group('handleDiceTests', () {
    test('2D6', () {
      const expectedLength = 3;

      final result = mockExpressionProvider.diceToList(2, 6) ;

      expect(result.length, expectedLength);
      expect(result.every((element) => element == "+" || int.parse(element) <= 6), true);

    });

    test('8D12', () {
      const expectedLength = 15;

      final result = mockExpressionProvider.diceToList(8, 12) ;

      expect(result.length, expectedLength);
      expect(result.every((element) => element == "+" || int.parse(element) <= 12), true);
    });
  });
}
