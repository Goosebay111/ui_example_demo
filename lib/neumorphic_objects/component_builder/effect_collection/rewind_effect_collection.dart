import 'package:bmad_ui_example/neumorphic_objects/component_attributes/rewind_attributes.dart';
import 'package:bmad_ui_example/ui_effects/effect_Collection.dart';

class RewindEffectCollection extends EffectCollection {
  RewindEffectCollection()
      : super(
          shapeEffect: RewindAttributes(),
          surfaceEffect: RewindSurfaceEffect(),
          shadowEffect: RewindShadowEffect(),
        );
}
