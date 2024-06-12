import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memorise_vocabulary/bridges.dart';
import 'package:memorise_vocabulary/core/widgets/space.dart';
import 'package:memorise_vocabulary/domain/models/media.dart';
import 'package:memorise_vocabulary/features/top_charts/top_charts_page.dart';

class MediaDetailsPage extends StatefulWidget {
  const MediaDetailsPage({required this.mediaId, super.key});

  final int mediaId;

  @override
  State<MediaDetailsPage> createState() => _MediaDetailsPageState();
}

class _MediaDetailsPageState extends State<MediaDetailsPage> {
  Media? media;

  @override
  void initState() {
    // media = GoRouter.of(context).value.state as Media?;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.mediaId}')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                media?.toJson().toString() ?? '',
              ),
              const Height(20),
              TextButton(
                onPressed: () {
                  // context.push('/media/234234');
                  GoStep.mediaDetails.push(context, pathParameters: ['23487238']);
                },
                child: const Text('To another media details'),
              ),
              const Height(20),
              TextButton(
                onPressed: () {
                  GoStep.chart.go(context, pathParameters: ['0'], extra: Chart(0, 'hehe', 23232));
                },
                child: const Text('To chart details'),
              ),
              TextButton(
                onPressed: () {
                  GoStep.afterMediaDetails.go(context);
                },
                child: const Text('Go go'),
              ),
              const Height(20),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                child: const Text('Back to previous'),
              ),
              Container(
                height: 1000,
                width: double.infinity,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
