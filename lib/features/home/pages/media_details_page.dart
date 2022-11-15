import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xbcodebase/core/widgets/space.dart';
import 'package:xbcodebase/domain/models/media.dart';

class MediaDetailsPage extends StatefulWidget {
  const MediaDetailsPage({required this.media, super.key});

  final Media media;

  @override
  State<MediaDetailsPage> createState() => _MediaDetailsPageState();
}

class _MediaDetailsPageState extends State<MediaDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.media.toJson().toString(),
              ),
              const Height(20),
              TextButton(
                onPressed: () {
                  // context.goNamed(
                  //   AfterMediaDetailsPage.name,
                  //   params: {'mid': widget.media.id},
                  //   extra: widget.media,
                  // );
                  context.go(
                    '/media/${widget.media.id}/after_media_details',
                    extra: widget.media,
                  );
                },
                child: const Text('Go go'),
              ),
              const Height(20),
              TextButton(
                onPressed: () {
                  context.go(
                    '/?mothai=3',
                    extra: widget.media,
                  );
                  // GoRouter.of(context).addListener(() {
                  //   logger.d('addListener $runtimeType');
                  //   logger.d('lamcuccunghongbeoi ${widget.media.id}');
                  // });
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
