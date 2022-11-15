import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xbcodebase/core/widgets/space.dart';
import 'package:xbcodebase/features/home/pages/media_details_page.dart';

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
                // GoRouter.of(context).pop();

                var media = GoRouter.of(context)
                    .routeInformationProvider
                    .value
                    .state as Media;
                media = media.copyWith(title: 'disconme');
                context.go('/media/$id', extra: media);

                // GoRouter.of(context)
                // .namedLocation(MediaDetailsPage.name, params: {'mid': id});
              },
              child: const Text('Back to previous'),
            ),
            const Height(20),
            TextButton(
              onPressed: () {
                // GoRouter.of(context).goNamed(MediaDetailsPage.name);
                GoRouter.of(context).go('/');
                // GoRouter.of(context).routeInformationProvider.value.state;
              },
              child: const Text('Back to root'),
            ),
          ],
        ),
      ),
    );
  }
}
