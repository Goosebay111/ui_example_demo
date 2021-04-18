import 'package:bmad_ui_example/neumorphic_objects/component_attributes/history_attributes.dart';
import 'package:bmad_ui_example/ui_effects/effect_Collection.dart';

class HistoryEffectCollection extends EffectCollection {
  HistoryEffectCollection()
      : super(
          shapeEffect: HistoryAttributes(),
          surfaceEffect: HistorySurfaceEffect(),
          shadowEffect: HistoryShadowEffect(),
        );
}
