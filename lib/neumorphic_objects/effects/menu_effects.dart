import 'package:bmad_ui_example/neumorphic_objects/object_attributes/menu_attributes.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';

class MenuEffect extends Effect {
  MenuEffect()
      : super(
          shapeEffect: MenuAttributes(),
          surfaceEffect: MenuSurfaceEffect(),
          shadowEffect: MenuShadowEffect(),
        );
}
