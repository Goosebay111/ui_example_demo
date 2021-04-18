import 'package:bmad_ui_example/neumorphic_objects/component_attributes/fast_forward_attributes.dart';
import 'package:bmad_ui_example/ui_effects/effect_Collection.dart';

class FastForwardEffectCollection extends EffectCollection {
  FastForwardEffectCollection()
      : super(
          shapeEffect: FastForwardAttributes(),
          surfaceEffect: FastForwardSurfaceEffect(),
          shadowEffect: FastForwardShadowEffect(),
        );
}
