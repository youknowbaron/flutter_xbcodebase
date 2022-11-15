import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'top_charts_page.dart';

class DetailChartPage extends StatelessWidget {
  const DetailChartPage(this.chart, {super.key});

  final Chart chart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('#${chart.id + 1}')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(chart.title),
            TextButton(
              onPressed: () {
                context.go('/?index=0');
              },
              child: const Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
