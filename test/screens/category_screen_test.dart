import 'package:flutter_test/flutter_test.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/main.dart';

void main() {
  testWidgets('category ...', (tester) async {
    await tester.pumpWidget(const MyApp());

    dummyCategories.map((e) => expect(find.text(e.title), findsOneWidget));
  });
}
