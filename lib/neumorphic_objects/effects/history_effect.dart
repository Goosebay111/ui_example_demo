import 'package:bmad_ui_example/neumorphic_objects/object_attributes/history_attributes.dart';
import 'package:bmad_ui_example/ui_properties/objectProperties.dart';

class HistoryEffect extends Effect {
  HistoryEffect()
      : super(
          shapeEffect: HistoryAttributes(),
          surfaceEffect: HistorySurfaceEffect(),
          shadowEffect: HistoryShadowEffect(),
        );
}
