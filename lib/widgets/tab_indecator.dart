library md2_tab_indicator;

import 'package:flutter/widgets.dart';

enum TabIndicatorType {
  tiny,
  normal,
  full,
}

class TabIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final TabIndicatorType indicatorSize;

  const TabIndicator({
    @required this.indicatorHeight,
    @required this.indicatorColor,
    @required this.indicatorSize,
  });

  @override
  _MD2Painter createBoxPainter([VoidCallback onChanged]) {
    return _MD2Painter(this, onChanged);
  }
}

class _MD2Painter extends BoxPainter {
  final TabIndicator decoration;

  _MD2Painter(this.decoration, VoidCallback onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    Rect rect;
    if (decoration.indicatorSize == TabIndicatorType.full) {
      rect = Offset(
            offset.dx,
            configuration.size.height - decoration.indicatorHeight,
          ) &
          Size(configuration.size.width, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == TabIndicatorType.tiny) {
      rect = Offset(
            offset.dx + configuration.size.width / 2 - 8,
            configuration.size.height - decoration.indicatorHeight,
          ) &
          Size(16, decoration.indicatorHeight);
    } else {
      rect = Offset(
            offset.dx + 6,
            configuration.size.height - decoration.indicatorHeight,
          ) &
          Size(configuration.size.width - 12, decoration.indicatorHeight);
    }

    final Paint paint = Paint()
      ..color = decoration.indicatorColor
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topRight: Radius.circular(8),
        topLeft: Radius.circular(8),
      ),
      paint,
    );
  }
}