import 'package:bmad_ui_example/neumorphic_objects/component_attributes/fast_forward_attributes.dart';
import 'package:bmad_ui_example/ui_properties/objectProperties.dart';

class FastForwardEffectCollection extends EffectCollection {
  FastForwardEffectCollection()
      : super(
          shapeEffect: FastForwardAttributes(),
          surfaceEffect: FastForwardSurfaceEffect(),
          shadowEffect: FastForwardShadowEffect(),
        );
}
