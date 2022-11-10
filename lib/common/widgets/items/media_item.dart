import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/media.dart';

class MediaItem extends StatelessWidget {
  const MediaItem({required this.item, required this.onTap, super.key});

  final Media item;
  final Function(Media) onTap;

  String _getSubTitle(Media item) {
    final type = item.type;
    if (type == 'charts') {
      return '';
    } else if (type == 'playlist' || type == 'radio_station') {
      return _formatString(item.subtitle.toString());
    } else if (type == 'song') {
      // return _formatString(item['artist']?.toString());
      return _formatString(item.subtitle.toString());
    } else {
      if (item.subtitle.isNotEmpty) {
        return _formatString(item.subtitle.toString());
      }
      // final artists = item['more_info']?['artistMap']?['artists']
      //     .map((artist) => artist['name'])
      //     .toList();
      // if (artists != null) {
      //   return formatString(artists?.join(', ')?.toString());
      // }
      // if (item['artist'] != null) {
      //   return formatString(item['artist']?.toString());
      // }
      return '';
    }
  }

  String _formatString(String? text) {
    return text == null
        ? ''
        : text
            .replaceAll('&amp;', '&')
            .replaceAll('&#039;', "'")
            .replaceAll('&quot;', '"')
            .trim();
  }

  @override
  Widget build(BuildContext context) {
    double boxSize =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.height / 2.5;
    final subTitle = _getSubTitle(item);
    return GestureDetector(
      onLongPress: () {
        Feedback.forLongPress(context);
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              content: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    item.type == 'radio_station' ? 1000.0 : 15.0,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  errorWidget: (context, _, __) => const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/cover.jpg'),
                  ),
                  imageUrl: item.image
                      .toString()
                      .replaceAll('http:', 'https:')
                      .replaceAll('50x50', '500x500')
                      .replaceAll('150x150', '500x500'),
                  placeholder: (context, url) => Image(
                    fit: BoxFit.cover,
                    image: (item.type == 'playlist' || item.type == 'album')
                        ? const AssetImage(
                            'assets/images/album.png',
                          )
                        : item.type == 'artist'
                            ? const AssetImage(
                                'assets/images/artist.png',
                              )
                            : const AssetImage(
                                'assets/images/cover.jpg',
                              ),
                  ),
                ),
              ),
            );
          },
        );
      },
      onTap: () {
        onTap(item);
      },
      child: SizedBox(
        width: boxSize - 30,
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox.square(
                    dimension: boxSize - 30,
                    child: Card(
                      elevation: 5,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          item.type == 'radio_station' || item.type == 'artist'
                              ? 1000.0
                              : 10.0,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        errorWidget: (context, _, __) => const Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/cover.jpg'),
                        ),
                        imageUrl: item.image
                            .toString()
                            .replaceAll('http:', 'https:')
                            .replaceAll('50x50', '500x500')
                            .replaceAll('150x150', '500x500'),
                        placeholder: (context, url) => Image(
                          fit: BoxFit.cover,
                          image:
                              (item.type == 'playlist' || item.type == 'album')
                                  ? const AssetImage(
                                      'assets/images/album.png',
                                    )
                                  : item.type == 'artist'
                                      ? const AssetImage(
                                          'assets/images/artist.png',
                                        )
                                      : const AssetImage(
                                          'assets/images/cover.jpg',
                                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _formatString(item.title.toString()),
                      textAlign: TextAlign.center,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (subTitle != '')
                      Text(
                        subTitle,
                        textAlign: TextAlign.center,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(context).textTheme.caption!.color,
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
