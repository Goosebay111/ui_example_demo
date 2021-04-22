import 'package:bmad_ui_example/neumorphic_objects/attributes/history_attributes.dart';

import '../decoration_builder.dart';

class HistoryDecoration extends DecorationBuilder {
  HistoryDecoration()
      : super(
          borderEffect: HistoryButtonBorderEffect(),
          surfaceEffect: HistoryButtonSurfaceEffect(),
          shadowEffect: HistoryButtonShadowEffect(),
        );
}
