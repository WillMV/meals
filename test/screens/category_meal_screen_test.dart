import 'package:flutter_test/flutter_test.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/main.dart';

void main() {
  testWidgets('category meal screen ...', (tester) async {
    await tester.pumpWidget(const MyApp());
    dummyCategories.map((e) async {
      await tester.tap(find.text(e.title));
      expect(find.text(e.title), findsOneWidget);
    });
  });
}
