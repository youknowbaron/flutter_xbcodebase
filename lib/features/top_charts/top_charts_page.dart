import 'package:memorise_vocabulary/bridges.dart';

class Chart {
  final int id;
  final String title;
  final int views;

  Chart(this.id, this.title, this.views);
}

final mockChartList = <Chart>[
  Chart(0, 'I am number one', 34589673468),
  Chart(1, 'I am not number one, but not three also', 345967349),
  Chart(2, 'Who\'s your daddy?', 3457634),
];

class TopChartsPage extends HookWidget {
  const TopChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    return ListView.builder(
      itemBuilder: ((context, index) {
        final chart = mockChartList[index];
        return Column(
          children: [
            ListTile(
              leading: Text('${chart.id + 1}'),
              title: Text(chart.title),
              trailing: Text('${chart.views} views'),
              onTap: () {
                GoStep.chart.go(context, pathParameters: [chart.id.toString()], extra: chart);
              },
            ),
            Container(
              width: 200,
              height: 300,
              color: Colors.amber,
            )
          ],
        );
      }),
      itemCount: mockChartList.length,
    );
  }
}
