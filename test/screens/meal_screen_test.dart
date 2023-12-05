import 'package:flutter_test/flutter_test.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/main.dart';

void main() {
  final meal = dummyMeals[0];
  testWidgets('meal screen ...', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.text(meal.categories[0]));
    await tester.tap(find.text(meal.title));

    expect(find.text(meal.title), findsOneWidget);
  });
  testWidgets('if render steps', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.text(meal.categories[0]));
    await tester.tap(find.text(meal.title));

    meal.steps.map((e) {
      expect(find.text(e), findsOneWidget);
    });
  });
  testWidgets('if render ingredients.', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.text(meal.categories[0]));
    await tester.tap(find.text(meal.title));

    meal.ingredients.map((e) {
      expect(find.text(e), findsOneWidget);
    });
  });
}
