import 'package:flutter_test/flutter_test.dart';
import 'package:millat/resources/on_boarding/view/on_boarding_view.dart';

void main() {
  testWidgets('OnBoardingView widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const OnBoardingView());

    // Navigate to the OnBoardingView
    // await tester.tap(find.byKey(const Key('onboarding_button')));
    await tester.pumpAndSettle();

    // Verify that the OnBoardingView widgets are rendered
    // expect(find.byType(PageView), findsOneWidget);
    expect(find.text('Trusted Source for'), findsOneWidget);
    expect(find.text('Empowering the Muslim Community'), findsOneWidget);
    expect(find.text('Your Ultimate Companion for Accurate Prayer Timings'),
        findsOneWidget);
    expect(
        find.text('Your Ultimate Guide to Reading and Understanding the Quran'),
        findsOneWidget);

    // Verify the "Next" button functionality
    // await tester.tap(find.byKey(const Key('next_button')));
    // await tester.pumpAndSettle();
    // expect(find.text('Empowering the Muslim Community'), findsOneWidget);

    // // Verify the "Skip" button functionality
    // await tester.tap(find.byKey(const Key('skip_button')));
    // await tester.pumpAndSettle();

    // Verify navigation to the next screen (sign up screen)
    // expect(
    // router.history.last.settings.name, MyAppRouteConstants.signUpRouteName);
  });
}
