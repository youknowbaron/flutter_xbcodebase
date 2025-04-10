import 'package:memorise_vocabulary/bridges.dart';
import 'package:memorise_vocabulary/domain/models/collection.dart';
import 'package:memorise_vocabulary/domain/models/vocabulary.dart';
import 'package:memorise_vocabulary/features/collection/collection_notifier.dart';

class CollectionPage extends HookConsumerWidget {
  final Collection collection;
  const CollectionPage({super.key, required this.collection});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(collectionNotifierProvider(collection.id));
    return Scaffold(
      appBar: AppBar(
        title: Text(collection.name),
      ),
      body: state.when(
        data: (data) {
          if (data == null) {
            return const Center(
              child: Text('No data'),
            );
          }
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => VocabularyItem(vocabulary: data[index]),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, _) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}

class VocabularyItem extends StatelessWidget {
  final Vocabulary vocabulary;

  const VocabularyItem({super.key, required this.vocabulary});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vocabulary.word,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              vocabulary.meaning,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
