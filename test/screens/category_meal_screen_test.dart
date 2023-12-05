import 'package:flutter_test/flutter_test.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/main.dart';

void main() {
  testWidgets('category meal screen ...', (tester) async {
    await tester.pumpWidget(const MyApp());
    dummyCategories.map((c) async {
      await tester.tap(find.text(c.title));

      expect(find.text(c.title), findsOneWidget);
    });
  });
  testWidgets('if category screen renders only items from its category',
      (tester) async {
    await tester.pumpWidget(const MyApp());
    dummyCategories.map((c) async {
      await tester.tap(find.text(c.title));

      dummyMeals.map((m) {
        if (m.categories.contains(c.title)) {
          expect(find.text(m.title), findsOneWidget);
          expect(find.text(m.complexityText), findsOneWidget);
          expect(find.textContaining(m.duration.toString()), findsOneWidget);
        } else {
          expect(find.text(m.title), findsNothing);
        }
      });
    });
  });
}
