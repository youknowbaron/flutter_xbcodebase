import 'package:memorise_vocabulary/bridges.dart';
import 'package:memorise_vocabulary/domain/models/dictionary_word.dart';
import 'package:memorise_vocabulary/features/search/search_notifier.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final state = ref.watch(searchNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: $strings.searchText,
            border: InputBorder.none,
          ),
          onSubmitted: (value) {
            ref.read(searchNotifierProvider.notifier).search(value);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon($icons.search),
            onPressed: () {
              ref.read(searchNotifierProvider.notifier).search(searchController.text);
            },
          ),
        ],
      ),
      body: state.when(
        data: (data) {
          if (data == null) {
            return Center(
              child: Text('No data'),
            );
          }
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => DictionaryWordItem(word: data[index]),
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

class DictionaryWordItem extends StatelessWidget {
  final DictionaryWord word;

  const DictionaryWordItem({super.key, required this.word});

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
              word.word,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            if (word.phonetic != null && word.phonetic!.isNotEmpty) ...[
              Text(
                '${word.phonetic}',
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 8),
            ] else if (word.phonetics.isNotEmpty)
              ...word.phonetics.map(
                (phonetic) => Row(
                  children: [
                    if (phonetic.text != null && phonetic.text!.isNotEmpty)
                      Text(
                        '${phonetic.text}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            const SizedBox(height: 8),
            if (word.meanings.isNotEmpty)
              ...word.meanings.map(
                (meaning) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meaning.partOfSpeech,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    ...meaning.definitions.map((definition) => Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '- ${definition.definition}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              if (definition.example != null && definition.example!.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    'Ex: ${definition.example}',
                                    style:
                                        const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                                  ),
                                ),
                              const SizedBox(height: 4),
                            ],
                          ),
                        )),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
