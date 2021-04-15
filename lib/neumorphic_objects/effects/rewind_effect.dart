import 'package:bmad_ui_example/neumorphic_objects/object_attributes/rewind_attributes.dart';
import 'package:bmad_ui_example/ui_properties/objectProperties.dart';

class RewindEffect extends Effect {
  RewindEffect()
      : super(
          shapeEffect: RewindAttributes(),
          surfaceEffect: RewindSurfaceEffect(),
          shadowEffect: RewindShadowEffect(),
        );
}
