import 'package:memorise_vocabulary/bridges.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Search Page',
          style: context.textTheme.headlineMedium,
        ),
      ),
    );
  }
}
