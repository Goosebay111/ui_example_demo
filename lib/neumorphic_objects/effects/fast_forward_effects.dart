import 'package:bmad_ui_example/neumorphic_objects/object_attributes/fast_forward_attributes.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';

class FastForwardEffect extends Effect {
  FastForwardEffect()
      : super(
          shapeEffect: FastForwardAttributes(),
          surfaceEffect: FastForwardSurfaceEffect(),
          shadowEffect: FastForwardShadowEffect(),
        );
}
