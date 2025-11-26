import 'package:jaspr/jaspr.dart';
import 'components/main.dart';

// The main component of your application.
@client
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return const Main();
  }
}
