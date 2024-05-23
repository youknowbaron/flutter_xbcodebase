import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xbcodebase/bridges.dart';
import 'package:xbcodebase/core/widgets/space.dart';

import '../../../domain/models/media.dart';

class AfterMediaDetailsPage extends StatelessWidget {
  const AfterMediaDetailsPage({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              id,
              style: Theme.of(context).textTheme.headline1,
            ),
            const Height(20),
            TextButton(
              onPressed: () {
                GoStep.mediaDetails.go(context, pathParameters: [id]);
              },
              child: const Text('Back to previous'),
            ),
            const Height(20),
            TextButton(
              onPressed: () {
                GoStep.home.go(context);
              },
              child: const Text('Back to root'),
            ),
          ],
        ),
      ),
    );
  }
}
