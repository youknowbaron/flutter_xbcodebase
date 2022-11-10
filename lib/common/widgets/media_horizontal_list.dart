/*
 *  This file is part of BlackHole (https://github.com/Sangwan5688/BlackHole).
 * 
 * BlackHole is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * BlackHole is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with BlackHole.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * Copyright (c) 2021-2022, Wali Ullah Shuvo
 */

import 'package:flutter/material.dart';
import 'package:xbcodebase/common/widgets/items/media_item.dart';

import '../../domain/models/media.dart';

class MediaHorizontalList extends StatelessWidget {
  final List<Media> mediaList;
  final Function(int) onTap;
  const MediaHorizontalList({
    super.key,
    required this.mediaList,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double boxSize =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.height / 2.5;
    if (boxSize > 250) boxSize = 250;
    return SizedBox(
      height: boxSize + 15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: mediaList.length,
        itemBuilder: (context, index) => MediaItem(
          item: mediaList[index],
          onTap: (_) => onTap(index),
        ),
      ),
    );
  }
}
