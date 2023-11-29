import 'package:flutter_test/flutter_test.dart';
import 'package:meals/dummy/dummy_data.dart';
import 'package:meals/main.dart';

void main() {
  testWidgets('category ...', (tester) async {
    await tester.pumpWidget(const MyApp());

    DUMMY_CATEGORIES.map((e) => expect(find.text(e.title), findsOneWidget));
  });
}
