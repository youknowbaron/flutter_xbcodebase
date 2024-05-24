import 'package:xbcodebase/bridges.dart';

class DetailChartPage extends StatelessWidget {
  const DetailChartPage(this.chartId, {super.key});

  final int chartId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('#${chartId + 1}')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text(chart.title),
            TextButton(
              onPressed: () {
                // GoStep.chart.go(context, pathParameters: ['2323111']);
                GoStep.chart.push(context, pathParameters: ['2323111']);
              },
              child: const Text('to another chart details'),
            ),
            TextButton(
              onPressed: () {
                GoStep.home.go(context, queryParameters: {'index': '0'});
              },
              child: const Text('Back to home'),
            ),

            TextButton(
              onPressed: () {
                GoStep.home.go(context, queryParameters: {'index': '1'});
              },
              child: const Text('Back to tab 2'),
            ),
          ],
        ),
      ),
    );
  }
}
