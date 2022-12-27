import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('API integration tests', () async {
    final FlutterDriver driver = await FlutterDriver.connect();

    test('fetch data from API', () async {
      // Tap the "Fetch data" button
      await driver.tap(find.byValueKey('fetch_data_button'));

      // Wait for the data to be displayed
      await driver.waitFor(find.byValueKey('data_text'));

      // Verify that the data is displayed
      expect(await driver.getText(find.byValueKey('data_text')), isNotEmpty);
    });
  });
}
