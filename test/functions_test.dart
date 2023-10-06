import 'package:color_changer/constants.dart';
import 'package:color_changer/helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Does random color exist', () {
    // Arrange
    const value = true;

    // Act
    final newRandomColor = getRandomColor();
    final doesNewColorExist = newRandomColor >= 0 && newRandomColor < colorMask;

    // Assert
    expect(value, doesNewColorExist);
  });
}
